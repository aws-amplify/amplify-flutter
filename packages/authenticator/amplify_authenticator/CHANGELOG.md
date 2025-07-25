## 2.3.7

- Minor bug fixes and improvements

## 2.3.6

### Chores
- chore(all): Bump Dart SDK to 3.8.0 ([#6165](https://github.com/aws-amplify/amplify-flutter/pull/6165))

## 2.3.5

- Minor bug fixes and improvements

## 2.3.4

### Chores
- chore(all): Bump Dart SDK to 3.7.0 ([#6026](https://github.com/aws-amplify/amplify-flutter/pull/6026))

## 2.3.3

- Minor bug fixes and improvements

## 2.3.2

- Minor bug fixes and improvements

## 2.3.1

### Fixes
- fix(authenticator): recover from exceptions during reset password flow ([#5672](https://github.com/aws-amplify/amplify-flutter/pull/5672))

## 2.3.0

### Features
- feat(auth, authenticator): Add support for Email OTP MFA ([#5449](https://github.com/aws-amplify/amplify-flutter/pull/5449)) (#5472)

## 2.2.0

### Features
- feat(authenticator): export unmet password requirements ([#5437](https://github.com/aws-amplify/amplify-flutter/pull/5437))

## 2.1.3

- Minor bug fixes and improvements

## 2.1.2

### Fixes
- fix(authenticator): Export InstructionsResolver ([#5169](https://github.com/aws-amplify/amplify-flutter/pull/5169))
- Minor bug fixes and improvements

## 2.1.1

- Minor bug fixes and improvements

## 2.1.0

### Features
- feat: Support Amplify Gen 2 outputs ([#5073](https://github.com/aws-amplify/amplify-flutter/pull/5073))

## 2.0.1

- Minor bug fixes and improvements

## 2.0.0

We are thrilled to release version 2.0 of the Amplify Flutter libraries to add support for Amplify Gen 2. Learn more about Amplify Gen 2 at [https://docs.amplify.aws](https://docs.amplify.aws).

If you are upgrading an existing project using Amplify Flutter v1 (created with Amplify Gen 1 CLI or a custom pipeline) please see the [upgrade guide](https://docs.amplify.aws/gen1/flutter/start/project-setup/upgrade-guide/).

As always, you can find us on [GitHub](https://github.com/aws-amplify/amplify-flutter/) and [Discord](https://discord.gg/jWVbPfC) to answer any questions.

### Breaking Changes
- chore!: remove deprecated apis

## 1.6.0

### Features
- feat: update plus plugins version ([#4619](https://github.com/aws-amplify/amplify-flutter/pull/4619))

## 1.5.5

### Fixes
- fix: correct `package_info_plus` version constraint ([#4583](https://github.com/aws-amplify/amplify-flutter/pull/4583))

## 1.5.4

- Minor bug fixes and improvements## 1.5.3

## 1.5.3

### Fixes
- fix: Bumped package_info_plus to ">=4.0.1 <=6.0.0"

## 1.5.2

### Fixes
- fix(authenticator): required phone number validator ([#4106](https://github.com/aws-amplify/amplify-flutter/pull/4106))

## 1.5.1

- Minor bug fixes and improvements

## 1.5.0

### Fixes
- fix(authenticator): Beta channel fixes ([#3835](https://github.com/aws-amplify/amplify-flutter/pull/3835))
- fix(authenticator): fix validate before trim bug ([#3809](https://github.com/aws-amplify/amplify-flutter/pull/3809))
- fix(authenticator): use getCurrentUser to check sign in state

## 1.4.3

- Minor bug fixes and improvements

## 1.4.2

### Fixes
- fix(authenticator): TOTP Setup typo ([#3758](https://github.com/aws-amplify/amplify-flutter/pull/3758))
- fix(authenticator): Wrap social button text ([#3692](https://github.com/aws-amplify/amplify-flutter/pull/3692))
- fix(authenticator): date validator ([#3766](https://github.com/aws-amplify/amplify-flutter/pull/3766))

## 1.4.1

- Minor bug fixes and improvements

## 1.4.0

### Fixes
- fix(authenticator): Social button debug Property Type ([#3608](https://github.com/aws-amplify/amplify-flutter/pull/3608))

### Features
- feat(authenticator): TOTP MFA ([#3609](https://github.com/aws-amplify/amplify-flutter/pull/3609))

## 1.3.2

- Minor bug fixes and improvements

## 1.3.1

- Minor bug fixes and improvements

## 1.3.0

### Features
- feat(authenticator): default dial code ([#3354](https://github.com/aws-amplify/amplify-flutter/pull/3354))

## 1.2.1

- Minor bug fixes and improvements

## 1.2.0

### Fixes
- fix(authenticator): Only call `setState` if mounted ([#3076](https://github.com/aws-amplify/amplify-flutter/pull/3076))
- fix(authenticator): alphabetize country codes

### Features
- feat(authenticator, m3): use SearchAnchor for country code
- feat(authenticator, m3): use `FilledButton` for primary buttons

## 1.1.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

## 1.0.1

### Fixes
- fix(repo): Flutter 3.3 support

## 1.0.0

We are thrilled to release version 1.0 of the Amplify Flutter libraries!

This release introduces a full rewrite of the Amplify libraries in Dart, allowing you to build AWS cloud-connected
applications on every platform Flutter supports (iOS, Android, Web, macOS, Windows, and Linux).

If you've been using v0 in production, you can now safely migrate to v1. Check out our 
[migration guide](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) for 
more information.

As always, you can find us on [GitHub](https://github.com/aws-amplify/amplify-flutter/) and 
[Discord](https://discord.gg/jWVbPfC) to answer any questions.

### Bug Fixes

The following issues have been fixed in this release:

- When working offline, id/access/refresh token expiration time is not honored. ([#2398](https://github.com/aws-amplify/amplify-flutter/issues/2398))
- NotAuthorizedException exception message are different on android and iOS ([#2231](https://github.com/aws-amplify/amplify-flutter/issues/2231))

## 1.0.0-next.5+2

- Minor bug fixes and improvements

## 1.0.0-next.5+1

### Fixes
- fix: prevent duplicate calls to onFieldSubmitted ([#2828](https://github.com/aws-amplify/amplify-flutter/pull/2828))

## 1.0.0-next.5

### Fixes
- fix(authenticator): Hub event processing
- fix(authenticator): Verify attribute state

### Features
- feat(authenticator): Add AutoFill Capabilities ([#2306](https://github.com/aws-amplify/amplify-flutter/pull/2306))

### Breaking Changes
- refactor(auth)!: Plugin options ([#2691](https://github.com/aws-amplify/amplify-flutter/pull/2691))

## 1.0.0-next.4+2

- Minor bug fixes and improvements

## 1.0.0-next.4+1

- Minor bug fixes and improvements

## 1.0.0-next.4

### Breaking Changes
- refactor(auth)!: Make reset password step an enum
- refactor(auth)!: Make sign-in step an enum
- refactor(auth)!: Make sign-up step an enum
- refactor(auth)!: State machine facade ([#2482](https://github.com/aws-amplify/amplify-flutter/pull/2482))

## 1.0.0-next.3

### Fixes
- fix(authenticator): ARB syntax ([#2560](https://github.com/aws-amplify/amplify-flutter/pull/2560))

### Breaking Changes
- fix(auth)!: Fetch Auth Session offline behavior ([#2585](https://github.com/aws-amplify/amplify-flutter/pull/2585))

## 1.0.0-next.2

### Fixes
- fix(authenticator): Example Dead Link ([#2505](https://github.com/aws-amplify/amplify-flutter/pull/2505))
- fix(authenticator): Navigation via TabBar ([#2486](https://github.com/aws-amplify/amplify-flutter/pull/2486))
- fix(authenticator): keyboard navigation ([#2473](https://github.com/aws-amplify/amplify-flutter/pull/2473))

### Breaking Changes
- refactor(auth)!: Align exception types
- refactor(core)!: Migrate exception types

## 1.0.0-next.1+3

### Fixes
- fix(authenticator): keyboard navigation ([#2473](https://github.com/aws-amplify/amplify-flutter/pull/2473))

## 1.0.0-next.1+2

- Minor bug fixes and improvements

## 1.0.0-next.1+1

- Minor bug fixes and improvements

## 1.0.0-next.1

### Fixes
- fix(authenticator): remove navigator from tree for AuthenticatedState ([#2354](https://github.com/aws-amplify/amplify-flutter/pull/2354))

## 1.0.0-next.0+5

### Fixes
- fix(authenticator): Configuration error handling
- fix(authenticator): remove unnecessary assertion in PendingVerificationCheckState constructor ([#2325](https://github.com/aws-amplify/amplify-flutter/pull/2325))

## 1.0.0-next.0+4

- Minor bug fixes and improvements

## 1.0.0-next.0+3

### Features
- feat(authenticator): handle `AuthHubEventType.signedIn` ([#2049](https://github.com/aws-amplify/amplify-flutter/pull/2049))
- feat(secure_storage): handle package uninstall/re-install on Linux and Windows ([#2044](https://github.com/aws-amplify/amplify-flutter/pull/2044))
- feat(secure_storage): remove items on re-install for iOS & MacOS ([#2118](https://github.com/aws-amplify/amplify-flutter/pull/2118))

## 1.0.0-next.0+2

- Fix package analysis issue

## 1.0.0-next.0+1

- Fix package analysis issue

## 1.0.0-next.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## 0.1.1 (2022-05-17)

### Features

- feat(auth): enables custom auth flows (#1444)

### Fixes

- fix(authenticator): Fix confirm password validator (#1542)

### Chores

- chore(authenticator): Fix failing integration tests (#1545)

## 0.1.0 (2022-02-24)

- Initial stable release of the amplify_authenticator package. See https://ui.docs.amplify.aws/components/authenticator?platform=flutter to get started.
