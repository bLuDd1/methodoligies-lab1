"use strict";

import { interactiveMode } from "./interactive.js";
import { nonInteractive } from "./non-interactive.js";

if (process.argv.length < 3) {
    interactiveMode();
} else {
    nonInteractive();
}