// Read Again
const fs = require("fs");

let readDemo = () => {
  const filePath =
    "C:/Users/Amit Rathor/Downloads/OL_Modules/MEAN/Day17/AWP_links.txt";

  fs.readFile(filePath, { encoding: "utf-8" }, (err, data) => {
    console.log(data);
  });
};

/**
 * Difficult to Understand the FLOW :: NON BLOCKING.
 * Excption Handling Becomes Difficult.
 *
 * Callback inside Callback
 */
let readDemo1 = () => {
  try {
    const filePath = "/Users/research/Desktop/temp1.txt";

    fs.readFile(filePath, { encoding: "utf-8" }, (err, data) => {
      console.log(err);
      console.log(data);
    });
  } catch (err) {
    console.log(err);
  }
};

readDemo();
