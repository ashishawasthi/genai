/* eslint-disable linebreak-style */
/* eslint-disable quotes */
/* eslint-disable max-len */
const whole = '[{"item":1, "analysis":[{"topic":"Nav Planner","sentiment":0.8},{"topic":"Insights","sentiment":0.8},{"topic":"General","sentiment":0.7}]},{"item":2, "analysis":[{"topic":"General","sentiment":-0.4}]},{"item":3, "analysis":[{"topic":"LivBetter","sentiment":0.9}]},{"item":4, "analysis":[{"topic":"Login","sentiment":-0.7}]},{"item":5, "analysis":[{"topic":"App Slowness","sentiment":-0.8},{"topic":"General","sentiment":-0.5}]}]';
// const bad1 = whole.substring(1, whole.length);// remove square bracket from beginning
// const bad2 = whole.substring(1, whole.length - 1);// remove square bracket from beginning and end
// const bad3 = "{" + whole.substring(1, whole.length - 1) + "}";// replace square bracket in beginning and end with curly
// const bad4 = whole.substring(0, whole.length - 2);// remove last 2 characters. Last item gets TRUNCATED.
const bad5 = "[\n " + whole.substring(1, whole.length - 2) + "\n  }\n  ]";// remove last 2 characters. Last item gets TRUNCATED.

// console.log("whole length: ", whole.length);
const jsonStart = whole.indexOf("[{");
// console.log("whole jsonStart: ", jsonStart);
const jsonEnd = whole.lastIndexOf("}]}]") + 4;
const jsonString = whole.substring(jsonStart, jsonEnd);
const json = JSON.parse(jsonString);
console.log("whole json: ", json);

const responseText = bad5.replaceAll("\n", "").replace(/  +/g, " ").replaceAll(" {", "{").replaceAll("{ ", "{").replaceAll(" }", "}").replaceAll("} ", "}");
console.log("responseText: ", responseText);
const responseJson = (function() {
  try {
    const jsonStart = responseText.indexOf("[{");
    const jsonEnd = responseText.lastIndexOf("}]}]") + 4;
    const jsonString = responseText.substring(jsonStart, jsonEnd);
    console.log("first jsonString: ", jsonString);
    return JSON.parse(jsonString);
  } catch (error) {
    console.error(error);
    const jsonStart = responseText.indexOf("\"item\"");
    const jsonEnd = responseText.lastIndexOf("}]}") + 3;
    const jsonString = "[{" + responseText.substring(jsonStart, jsonEnd) + "]";
    console.log("second jsonString: ", jsonString);
    return JSON.parse(jsonString);
  }
})();

console.log("responseJson: ", responseJson);
