# aws_liveness_example

Runs a Face Liveness check using guest credentials from Amplify Auth.

1. Deploy an Amplify Gen 2 backend with Auth that allows guest access, and
   grant the unauthenticated role `rekognition:StartFaceLivenessSession`.
2. Copy its `amplify_outputs.json` to `example/assets/`.
3. Create a session with `CreateFaceLivenessSession` (for example with the AWS
   CLI: `aws rekognition create-face-liveness-session`).
4. Run the app on a physical device, enter the session ID and region, and
   tap **Start Face Liveness**.
5. Get the result with `GetFaceLivenessSessionResults`.
