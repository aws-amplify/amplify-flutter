import { defineAuth } from "@aws-amplify/backend";

// Only signed-in users can create and stream Face Liveness sessions, so
// anonymous callers can't run up Rekognition usage.
export const auth = defineAuth({
  loginWith: {
    email: true,
  },
});
