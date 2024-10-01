"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.log = exports.withRetries = exports.getEnv = void 0;
const getEnv = (name) => {
    const value = process.env[name];
    if (!value) {
        throw new Error(`The environment variable "${name}" is not defined -- this shouldn't happen.
      Please open an issue at github.com/aws-amplify/amplify-category-api`);
    }
    return value;
};
exports.getEnv = getEnv;
function withRetries(options, fn) {
    return async (...xs) => {
        let attempts = options.attempts;
        let ms = options.sleep;
        while (true) {
            try {
                return await fn(...xs);
            }
            catch (e) {
                if (attempts-- <= 0) {
                    throw e;
                }
                await sleep(Math.floor(Math.random() * ms));
                ms *= 2;
            }
        }
    };
}
exports.withRetries = withRetries;
async function sleep(ms) {
    return new Promise((ok) => setTimeout(ok, ms));
}
const log = (msg, ...other) => {
    console.log(msg, other.map((o) => (typeof o === 'object' ? JSON.stringify(o, undefined, 2) : o)));
};
exports.log = log;
//# sourceMappingURL=util.js.map