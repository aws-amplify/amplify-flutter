# aws_liveness_example

Runs a complete Face Liveness check: sign in, create a session on the
backend, run the check, and show the backend's result and confidence score.

## Backend

The test backend is in `infra-gen2/backends/liveness/main`. It provides:

- Cognito email sign-in. Only signed-in users can create sessions and stream
  video, so anonymous callers can't run up Rekognition usage.
- `createLivenessSession` and `getLivenessResult` GraphQL queries, backed by a
  Lambda function that calls `CreateFaceLivenessSession` and
  `GetFaceLivenessSessionResults`. Results contain only the status and
  confidence, not the reference or audit images.
- `rekognition:StartFaceLivenessSession` for the authenticated role, used by
  the app to stream video.

Deploy it to your account and write `lib/amplify_outputs.dart`:

```sh
cd infra-gen2
npm i
dart run tool/deploy_gen2.dart -c Liveness
```

Deploy to a [region that supports Face Liveness](https://docs.aws.amazon.com/general/latest/gr/rekognition.html).

The sample doesn't record which user created a session, so any signed-in user
who knows a session ID can read its result. Production backends should tie
sessions to the caller.

## Running

Run the app on a physical device (Face Liveness needs a real camera), create
an account in the sign-in screen, and tap **Run Face Liveness check**.
