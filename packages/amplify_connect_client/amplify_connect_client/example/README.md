# amplify_connect_client example

A manual test app for the Amplify Connect client (`amplify_connect_client`)
against a deployed backend-notifications construct (the Amazon Connect Customer
Profiles identify endpoint). It exercises the four identify flows from a UI:
sign-in/out, authenticated identify, guest identify, device registration, and
merge-on-sign-in. Each action prints the request it sends and the result.

## Configuration

The app loads `amplify_outputs.json` (bundled as an asset) at startup. It reads
the endpoint and region from the `analytics.amazon_connect_customer_profiles`
section, and configures Amplify Auth from the `auth` section.

> Note on the config bridge: the construct writes its endpoint under
> `custom.CustomerProfiles { endpoint, region }`, while the client reads
> `analytics.amazon_connect_customer_profiles { aws_region, endpoint }`. The
> bundled `amplify_outputs.json` carries both, so the app works until the two
> teams reconcile on a single key. `Amplify.configure` is given an auth-only
> copy (the non-standard `analytics`/`custom` keys are stripped) so Auth
> configures cleanly.

To point the app at a different sandbox, replace `amplify_outputs.json` with the
sandbox output augmented with the `analytics.amazon_connect_customer_profiles`
section.

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

1. Sign in with a Cognito user (default fields are pre-filled for the POC user)
   to exercise the authenticated route, or stay signed out for the guest route.
2. Tap "Identify (authed)" while signed in, or "Guest identify" while signed
   out.
3. "Register device" folds a device token into an identify call.
4. For "Merge on sign-in": run "Guest identify" while signed out (captures the
   guest identity id), then tap "Merge on sign-in" to sign in and fold the guest
   profile into the authenticated one.
