# amplify_connect_client example

A manual test app for the Amplify Connect client (`amplify_connect_client`)
against a deployed backend-notifications construct (the Amazon Connect Customer
Profiles identify endpoint). It exercises the four identify flows from a UI:
sign-in/out, authenticated identify, guest identify, device registration, and
merge-on-sign-in. Each action prints the request it sends and the result.

## Configuration

The app loads `amplify_outputs.json` (bundled as an asset) at startup. It reads
the endpoint and region from the `notifications.amazon_connect_customer_profiles`
section (the canonical output written by the backend construct), and configures
Amplify Auth from the `auth` section.

> Note: `Amplify.configure` only understands its own sections, so the app gives
> it an auth-only copy (the non-standard `notifications` key is stripped). The
> Connect client reads
> `notifications.amazon_connect_customer_profiles { aws_region, endpoint }`
> directly.

The bundled `amplify_outputs.json` ships with placeholder values only. Before
running, replace it with the `amplify_outputs.json` from your own deployed
backend (it already carries the `notifications.amazon_connect_customer_profiles`
section with your `aws_region` and `endpoint`). Do not commit real values back
to the repo.

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

1. Sign in by typing a Cognito user's email and password to sign requests with
   authenticated credentials, or stay signed out to sign with guest
   credentials. Either way the request is SigV4-signed.
2. Tap "Identify" to create or update the profile.
3. Tap "Register device" to register the token from the field (the device id,
   platform, and channel type are supplied by the library). Push channels only
   exist on Android and iOS, so this reports unsupported on desktop.
4. Tap "Remove device" to remove this device from the profile.
