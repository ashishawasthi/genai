/* eslint-disable max-len */
const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const {Configuration, OpenAIApi} = require("openai");
const {defineSecret} = require("firebase-functions/params");
const openAiApiKey = defineSecret("OPENAI_API_KEY");

// onCreate function for the "nlps" collection, call OpenAI Text completion API with feedbacks recieved and update the document with the response
exports.analyseFeedbacks = functions.runWith({secrets: [openAiApiKey]}).firestore.document("nlps/{nlpId}").onCreate((nlpSnap, context) => {
  const nlp = nlpSnap.data();
  console.log("nlp.feedbacks: ", nlp.feedbacks);
  const configuration = new Configuration({
    apiKey: openAiApiKey.value(),
  });
  const openai = new OpenAIApi(configuration);
  let openaiRequest = "Topics of feedbacks can be: 'LivBetter' for carbon footprint, 'Nav Planner' for fianncial planning, 'Login', 'App Slowness', 'Insights' or 'General'.\nFor the following 2 items:\nitem 1: Nav Planner and Insights are very helpful.\nitem 2: Fingerprint login in failing.\nResponse is:\n[{\"item\":1, \"analysis\":[{\"topic\":\"Nav Planner\",\"sentiment\":0.9},{\"topic\":\"Insights\",\"sentiment\":0.9}]},{\"item\":2, \"analysis\":[{\"topic\":\"Login\",\"sentiment\":-0.6}]}]\n\nCreate a JSON response for the following items:";
  nlp.feedbacks.forEach((feedback, index) => {
    openaiRequest += "\nitem " + (index + 1) + ": " + feedback;
  });
  // console.log("openaiRequest: ", openaiRequest);
  return openai.createChatCompletion({
    model: "gpt-3.5-turbo",
    messages: [
      {role: "system", content: "You are relationship manager's assistant, analysing customer feedback sentiment and the coresponding topic."},
      {role: "user", content: openaiRequest}],
  }).then((response) => {
    // console.log("response: ", response);
    const responseText = response.data.choices[0].message.content;
    // console.log("responseText: ", responseText);
    nlpSnap.ref.update({
      request: openaiRequest,
      response: responseText,
      updated: admin.firestore.FieldValue.serverTimestamp(),
    });
    // parse the JSON in responseText

    // handle SyntaxError in JSON.parse
    const responseJson = (function() {
      try {
        const jsonStart = responseText.indexOf("[{");
        const jsonEnd = responseText.lastIndexOf("}]}]") + 4;
        const jsonString = responseText.substring(jsonStart, jsonEnd);
        console.log("response jsonString: ", jsonString);
        return JSON.parse(jsonString);
      } catch (error) {
        console.error(error);
        const jsonStart = responseText.indexOf("\"item\"");
        const jsonEnd = responseText.lastIndexOf("}]}") + 3;
        const jsonString = "[{" + responseText.substring(jsonStart, jsonEnd) + "]";
        console.log("response jsonString: ", jsonString);
        return JSON.parse(jsonString);
      }
    })();

    // add all feedback attributes from openaiRequest and responseText to the "feedbacks" collection
    responseJson.forEach((feedback) => {
      feedback.submission = nlp.feedbacks[feedback.item - 1];
      feedback.nlp = nlpSnap.ref;
      feedback.owner = nlp.owner;
      feedback.created = admin.firestore.FieldValue.serverTimestamp();
      console.log("Adding feedback: ", feedback);
      admin.firestore().collection("feedbacks").add(feedback);
    });
  }).catch((error) => {
    console.error(error);
  });
});
