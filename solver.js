"use strict";

const solveQuadratic = (a, b, c) => {
    const d = Math.pow(b, 2) - 4 * a * c;

    if (d > 0) {
        const x1 = (-b + Math.sqrt(d)) / (2 * a);
        const x2 = (-b - Math.sqrt(d)) / (2 * a);
        console.log(`x1 = ${x1}\nx2 = ${x2}`);
    } else if (d === 0) {
        const x = -b / (2 * a);
        console.log(`x = ${x}`);
    } else {
        console.log("There are no roots.")
    }
}

export { solveQuadratic };