// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

enum DeviceState { untracked, tracked, remembered }

DeviceMetadataRepository get deviceRepo =>
    Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey)
        // ignore: invalid_use_of_protected_member
        .stateMachine
        .getOrCreate<DeviceMetadataRepository>();

void main() {
  testRunner.setupTests();

  group('Device Tracking', () {
    // The username selected by the user.
    String? username;

    // The password selected by the user.
    String? password;

    // The username assigned by Cognito.
    //
    // This will be the same as [username] except in the case of email alias
    // where Cognito will assign a random UUID for the "username". Device
    // tracking relies on this UUID for storing device secrets since it
    // identifies the user regardless of the alias used to sign in.
    late String cognitoUsername;

    Future<DeviceState> getDeviceState() async {
      final secrets = await deviceRepo.get(cognitoUsername);
      if (secrets == null) {
        return DeviceState.untracked;
      }
      return secrets.deviceStatus == DeviceRememberedStatusType.remembered
          ? DeviceState.remembered
          : DeviceState.tracked;
    }

    Future<String?> getDeviceKey() async {
      final secrets = await deviceRepo.get(cognitoUsername);
      return secrets?.deviceKey;
    }

    Future<void> signIn({
      bool emailAlias = false,
      bool enableMfa = false,
    }) async {
      await signOutUser();

      if (username == null && password == null) {
        username = emailAlias ? generateEmail() : generateUsername();
        password = generatePassword();

        cognitoUsername = await adminCreateUser(
          username!,
          password!,
          autoConfirm: true,
          verifyAttributes: true,
          enableMfa: enableMfa,
          attributes: {if (emailAlias) AuthUserAttributeKey.email: username!},
        );
        if (emailAlias) {
          expect(
            cognitoUsername,
            isNot(username),
            reason:
                'When using an alias, Cognito should assign a UUID '
                'as the username',
          );
        }
        addTearDown(() {
          username = null;
          password = null;
        });
      }

      if (enableMfa) {
        final otpResult = await getOtpCode(
          UserAttribute.username(cognitoUsername),
        );
        final signInRes = await Amplify.Auth.signIn(
          username: username!,
          password: password,
        );
        if (signInRes.nextStep.signInStep ==
            AuthSignInStep.confirmSignInWithSmsMfaCode) {
          final confirmSignInRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          expect(confirmSignInRes.isSignedIn, isTrue);
        } else {
          expect(signInRes.isSignedIn, isTrue);
        }
      } else {
        final res = await Amplify.Auth.signIn(
          username: username!,
          password: password,
        );
        expect(res.isSignedIn, isTrue);
      }
    }

    for (final environmentName in deviceOptInEnvironments) {
      group('Opt-In', () {
        group(environmentName, () {
          setUp(() async {
            await testRunner.configure(environmentName: environmentName);

            await signIn();
          });

          asyncTest('device is not automatically remembered', (_) async {
            expect(await getDeviceState(), DeviceState.tracked);
          });

          asyncTest('rememberDevice starts tracking', (_) async {
            expect(await getDeviceState(), DeviceState.tracked);
            await Amplify.Auth.rememberDevice();
            expect(await getDeviceState(), DeviceState.remembered);
          });

          asyncTest('forgetDevice stops tracking', (_) async {
            expect(await getDeviceState(), DeviceState.tracked);
            await Amplify.Auth.rememberDevice();
            expect(await getDeviceState(), DeviceState.remembered);
            await Amplify.Auth.forgetDevice();
            expect(await getDeviceState(), DeviceState.untracked);
          });

          asyncTest('fetchDevices lists remembered devices', (_) async {
            expect(await getDeviceState(), DeviceState.tracked);
            expect(await Amplify.Auth.fetchDevices(), isEmpty);
            await Amplify.Auth.rememberDevice();
            expect(await Amplify.Auth.fetchDevices(), isNotEmpty);
          });

          asyncTest('multiple logins use the same device key', (_) async {
            final deviceKey = await getDeviceKey();
            expect(deviceKey, isNotNull);
            await signOutUser();
            await signIn();
            expect(await getDeviceKey(), deviceKey);
          });

          asyncTest('can login when device is removed in Cognito', (_) async {
            final deviceKey = await getDeviceKey();
            expect(deviceKey, isNotNull);
            await signOutUser();
            await deleteDevice(cognitoUsername, deviceKey!);
            await expectLater(signIn(), completes);
            final newDeviceKey = await getDeviceKey();
            expect(newDeviceKey, isNotNull);
            expect(newDeviceKey, isNot(deviceKey));
          });
        });
      });
    }

    group('Opt-In (MFA)', () {
      setUp(() async {
        await testRunner.configure(environmentName: 'device-tracking-opt-in');

        await signIn(enableMfa: true);
      });

      asyncTest('cannot bypass MFA when device is not remembered', (_) async {
        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username!,
          password: password,
        );
        expect(
          res.nextStep.signInStep,
          AuthSignInStep.confirmSignInWithSmsMfaCode,
          reason: 'Subsequent sign-in attempts should require MFA',
        );
      });

      asyncTest('can bypass MFA when device is remembered', (_) async {
        await Amplify.Auth.rememberDevice();
        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username!,
          password: password,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'Subsequent sign-in attempts should not require MFA',
        );
      });

      asyncTest('can login when device is removed in Cognito', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await deleteDevice(cognitoUsername, deviceKey!);
        await expectLater(signIn(enableMfa: true), completes);
        final newDeviceKey = await getDeviceKey();
        expect(newDeviceKey, isNotNull);
        expect(newDeviceKey, isNot(deviceKey));
      });
    });

    group('Always', () {
      setUp(() async {
        await testRunner.configure(environmentName: 'device-tracking-always');

        await signIn();
      });

      asyncTest('device is automatically remembered', (_) async {
        expect(await getDeviceState(), DeviceState.remembered);
      });

      asyncTest('rememberDevice is a no-op when already tracking', (_) async {
        await expectLater(Amplify.Auth.rememberDevice(), completes);
      });

      asyncTest('fetchCurrentDevice returns the current device', (_) async {
        await expectLater(Amplify.Auth.fetchCurrentDevice(), completes);
        final currentTestDevice = await Amplify.Auth.fetchCurrentDevice();
        final currentDeviceKey = await getDeviceKey();
        expect(currentDeviceKey, currentTestDevice.id);
      });

      asyncTest(
        'The device from fetchCurrentDevice isnt equal to another device.',
        (_) async {
          final previousDeviceKey = await getDeviceKey();
          await signOutUser();
          await deleteDevice(cognitoUsername, previousDeviceKey!);
          await signIn();
          final newCurrentTestDevice = await Amplify.Auth.fetchCurrentDevice();
          expect(newCurrentTestDevice.id, isNot(previousDeviceKey));
        },
      );

      asyncTest(
        'fetchCurrentDevice throws a DeviceNotTrackedException when device is forgotten.',
        (_) async {
          expect(await getDeviceState(), DeviceState.remembered);
          await Amplify.Auth.forgetDevice();
          await expectLater(
            Amplify.Auth.fetchCurrentDevice,
            throwsA(isA<DeviceNotTrackedException>()),
          );
        },
      );

      asyncTest(
        'fetchCurrentDevice throws a SignedOutException when device signs out.',
        (_) async {
          await signOutUser();
          await expectLater(
            Amplify.Auth.fetchCurrentDevice,
            throwsA(isA<SignedOutException>()),
          );
        },
      );

      asyncTest('forgetDevice stops tracking', (_) async {
        expect(await getDeviceState(), DeviceState.remembered);
        await Amplify.Auth.forgetDevice();
        expect(await getDeviceState(), DeviceState.untracked);
      });

      asyncTest('fetchDevices lists remembered devices', (_) async {
        expect(await Amplify.Auth.fetchDevices(), hasLength(1));
      });

      asyncTest('multiple logins use the same device key', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await signIn();
        expect(await getDeviceKey(), deviceKey);
      });

      asyncTest('can login when device is removed in Cognito', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await deleteDevice(cognitoUsername, deviceKey!);
        await expectLater(signIn(), completes);
        final newDeviceKey = await getDeviceKey();
        expect(newDeviceKey, isNotNull);
        expect(newDeviceKey, isNot(deviceKey));
      });
    });

    group('Always (MFA)', () {
      setUp(() async {
        await testRunner.configure(environmentName: 'device-tracking-always');

        await signIn(enableMfa: true);
      });

      asyncTest('can bypass MFA when device is always remembered', (_) async {
        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username!,
          password: password,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'Subsequent sign-in attempts should not require MFA',
        );
      });

      asyncTest('can login when device is removed in Cognito', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await deleteDevice(cognitoUsername, deviceKey!);
        await expectLater(signIn(enableMfa: true), completes);
        final newDeviceKey = await getDeviceKey();
        expect(newDeviceKey, isNotNull);
        expect(newDeviceKey, isNot(deviceKey));
      });
    });

    group('Always (Email Alias)', () {
      setUp(() async {
        await testRunner.configure(
          environmentName: 'device-tracking-email-alias',
        );

        await signIn(emailAlias: true);
      });

      asyncTest('device is automatically remembered', (_) async {
        expect(await getDeviceState(), DeviceState.remembered);
      });

      asyncTest('rememberDevice is a no-op when already tracking', (_) async {
        await expectLater(Amplify.Auth.rememberDevice(), completes);
      });

      asyncTest('forgetDevice stops tracking', (_) async {
        expect(await getDeviceState(), DeviceState.remembered);
        await Amplify.Auth.forgetDevice();
        expect(await getDeviceState(), DeviceState.untracked);
      });

      asyncTest('fetchDevices lists remembered devices', (_) async {
        expect(await Amplify.Auth.fetchDevices(), hasLength(1));
      });

      asyncTest('multiple logins use the same device key', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await signIn(emailAlias: true);
        expect(await getDeviceKey(), deviceKey);
      });

      asyncTest('can login when device is removed in Cognito', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await deleteDevice(cognitoUsername, deviceKey!);
        await expectLater(signIn(emailAlias: true), completes);
        final newDeviceKey = await getDeviceKey();
        expect(newDeviceKey, isNotNull);
        expect(newDeviceKey, isNot(deviceKey));
      });
    });

    group('Always (Email Alias / MFA)', () {
      setUp(() async {
        await testRunner.configure(
          environmentName: 'device-tracking-email-alias',
        );

        await signIn(emailAlias: true, enableMfa: true);
      });

      asyncTest('device is automatically remembered', (_) async {
        expect(await getDeviceState(), DeviceState.remembered);
      });

      asyncTest('rememberDevice is a no-op when already tracking', (_) async {
        await expectLater(Amplify.Auth.rememberDevice(), completes);
      });

      asyncTest('forgetDevice stops tracking', (_) async {
        expect(await getDeviceState(), DeviceState.remembered);
        await Amplify.Auth.forgetDevice();
        expect(await getDeviceState(), DeviceState.untracked);
      });

      asyncTest('fetchDevices lists remembered devices', (_) async {
        expect(await Amplify.Auth.fetchDevices(), hasLength(1));
      });

      asyncTest('multiple logins use the same device key', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await signIn(emailAlias: true, enableMfa: true);
        expect(await getDeviceKey(), deviceKey);
      });

      asyncTest('can login when device is removed in Cognito', (_) async {
        final deviceKey = await getDeviceKey();
        expect(deviceKey, isNotNull);
        await signOutUser();
        await deleteDevice(cognitoUsername, deviceKey!);
        await expectLater(signIn(emailAlias: true, enableMfa: true), completes);
        final newDeviceKey = await getDeviceKey();
        expect(newDeviceKey, isNotNull);
        expect(newDeviceKey, isNot(deviceKey));
      });

      asyncTest('can bypass MFA when device is always remembered', (_) async {
        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username!,
          password: password,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'Subsequent sign-in attempts should not require MFA',
        );
      });
    });
  });
}
