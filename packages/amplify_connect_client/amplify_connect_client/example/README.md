# amplify_connect_client example

A manual test app for the Amplify Connect client (`amplify_connect_client`)
against a deployed backend-notifications construct (the Amazon Connect Customer
Profiles identify endpoint). It exercises the four identify flows from a UI:
sign-in/out, authenticated identify, guest identify, device registration, and
merge-on-sign-in. Each action prints the request it sends and the result.

## Configuration

The app loads `amplify_outputs.json` (bundled as an asset) at startup. It reads
the endpoint and region from the `custom.CustomerProfiles` section (the
canonical output written by the backend construct), and configures Amplify Auth
from the `auth` section.

> Note: `Amplify.configure` only understands its own sections, so the app gives
> it an auth-only copy (the non-standard `custom` key is stripped). The Connect
> client reads `custom.CustomerProfiles { endpoint, region }` directly.

The bundled `amplify_outputs.json` ships with placeholder values only. Before
running, replace it with the `amplify_outputs.json` from your own deployed
backend (it already carries the `custom.CustomerProfiles` section with your
`endpoint` and `region`). Do not commit real values back to the repo.

## Running (macOS)

This example targets macOS desktop (mobile/desktop avoid the browser CORS the
API Gateway routes do not configure).

```bash
# From the repo root, generate local dependency overrides:
aft bootstrap --include amplify_connect_client_example

# This toolchain resolves these plugins via Swift Package Manager, whose
# transitive package_info_plus target trips a macOS deployment-target check.
# The repo's plugins ship CocoaPods podspecs, so build via CocoaPods instead:
flutter config --no-enable-swift-package-manager

cd packages/amplify_connect_client/amplify_connect_client/example
flutter run -d macos
```

## Using the app

1. Sign in by typing a Cognito user's email and password to exercise the
   authenticated route, or stay signed out for the guest route.
2. Tap "Identify (authed)" while signed in, or "Guest identify" while signed
   out.
3. "Register device" folds a device token into an identify call.
4. For "Merge on sign-in": run "Guest identify" while signed out (captures the
   guest identity id), then tap "Merge on sign-in" to sign in and fold the guest
   profile into the authenticated one.
