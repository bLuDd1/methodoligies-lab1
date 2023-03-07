"use strict";

import { solveQuadratic } from "./solver.js";
import { readFileSync, existsSync } from "fs";

const nonInteractive = () => {
    const filePath = process.argv[2];

    if (!existsSync(filePath)) {
        console.log(`Error. File ${filePath} does not exist.`);
        process.exit(1);
    }

    const fileData = readFileSync(filePath, "utf8");
    const params = fileData
        .split(" ")
        .map(el => parseFloat(el));
    const isAllNums = params.every(el => !isNaN(el));

    if (params.length !== 3 || !isAllNums) {
        console.log("Error. Invalid file format");
        process.exit(1);
    }
    if (params[0] === 0) {
        console.log("Error. A cannot be zero.");
        process.exit(1);
    }

    solveQuadratic(...params);

}

export { nonInteractive };