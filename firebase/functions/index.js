/* eslint-disable max-len */
const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const {Configuration, OpenAIApi} = require("openai");
const {defineSecret} = require("firebase-functions/params");
const openAiApiKey = defineSecret("OPENAI_API_KEY");

// onCreate function for the "nlps" collection, call OpenAI Text completion API with feedbacks recieved and update the document with the response
exports.analyseFeedbacks = functions.runWith({secrets: [openAiApiKey]}).firestore.document("nlps/{nlpId}").onCreate((snap, context) => {
  const nlp = snap.data();
  const configuration = new Configuration({
    apiKey: openAiApiKey.value(),
  });
  const openai = new OpenAIApi(configuration);
  let openaiRequest = "Topics of feedbacks can be: 'LivBetter' for carbon footprint, 'Nav Planner' for fianncial planning, 'Login', 'App Slowness', 'Insights' or 'General'.\nFor the following 2 items:\nitem 1: Nav Planner and Insights are very helpful.\nitem 2: Fingerprint login in failing.\nResponse is:\n[{\"item\":1, \"analysis\":[{\"topic\":\"Nav Planner\",\"sentiment\":0.9},{\"topic\":\"Insights\",\"sentiment\":0.9}]},{\"item\":2, \"analysis\":[{\"topic\":\"Login\",\"sentiment\":-0.6}]}]\n\nCreate a JSON response for the following items:";
  /* + "\nitem 1: Nav Planner and Insights are very helpful for managing my finance. I manage all my savings and expenses from the app and it helps me manage all my financial needs."
  + "\nitem 2: Best bank in the world."
  + "\nitem 3: Tracking carbon foorprints is a great new feature"
  + "\nitem 4: Fingerprint login in failing since this morning for me"
  + "\nitem 5: App is now slower than before. I have to now wait for app to open, to make payments";*/
  // iterate through the feedbacks in nlp and add them to the openaiRequest
  nlp.feedbacks.forEach((feedback, index) => {
    openaiRequest += "\nitem " + index + ": " + feedback;
  });
  return openai.createChatCompletion({
    model: "gpt-3.5-turbo",
    messages: [
      {role: "system", content: "You are relationship manager's assistant, analysing customer feedback sentiment and the coresponding topic."},
      {role: "user", content: openaiRequest}],
  }).then((response) => {
    const responseText = response.data.choices[0].text;
    console.log("responseText: ", responseText);
    return snap.ref.update({
      request: openaiRequest,
      response: responseText,
      updated: admin.firestore.FieldValue.serverTimestamp(),
    });
  }).catch((error) => {
    console.error(error);
  });
});
