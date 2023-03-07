"use strict";

import { solveQuadratic } from "./solver.js";

const interactiveMode = () => {
    const params = [];
    const questions = [
        "a = ",
        "b = ",
        "c = ",
    ];
    const input = process.stdin;
    const output = process.stdout;

    const checkValue = (data) => {
        const num = parseFloat(data.toString());
        return !(isNaN(num) || data.toString().trim().length !== num.toString().length);
    }

    input.on("data", (data) => {
        if (params.length < questions.length) {
            const parsedData = parseFloat(data.toString());
            if (params.length === 0 && parsedData === 0) {
                output.write("Error. A cannot be zero.");
                output.write(questions[0]);
            } else if (!checkValue(data)) {
                output.write(`Error. Expected a real number, got ${data.toString()} instead.`);
                output.write(questions[params.length]);
            } else {
                params.push(parsedData);
                if (params.length < questions.length) {
                    output.write(questions[params.length]);
                } else {
                    solveQuadratic(...params);
                    process.exit(0)
                }
            }
        }
    })
    output.write(questions[0]);
}

export { interactiveMode };