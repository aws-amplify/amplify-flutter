// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_internal_member

import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/flows/hosted_ui/hosted_ui_platform_flutter.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  group(
    'NativeAuthBridge',
    skip: zIsWeb || !(Platform.isIOS || Platform.isAndroid),
    () {
      const browserPackage = 'browserPackage';

      late DependencyManager dependencyManager;
      late HostedUiPlatformImpl platform;

      setUp(() async {
        dependencyManager = DependencyManager()
          ..addInstance<CognitoOAuthConfig>(hostedUiConfig)
          ..addInstance<SecureStorageInterface>(MockSecureStorage())
          ..addInstance<http.Client>(
            MockClient((request) {
              throw UnimplementedError();
            }),
          );
        platform = HostedUiPlatformImpl(dependencyManager);
      });

      tearDown(Amplify.reset);

      test('signInWithUrl', () async {
        const options = CognitoSignInWithWebUIOptions(
          isPreferPrivateSession: true,
          browserPackageName: browserPackage,
        );
        dependencyManager
          ..addInstance<NativeAuthBridge>(
            MockNativeAuthBridge(
              signInWithUrl: expectAsync4((
                argUrl,
                argCallbackurlscheme,
                argPreferprivatesession,
                argBrowserpackagename,
              ) async {
                expect(argUrl, contains(hostedUiConfig.webDomain));
                expect(argCallbackurlscheme, testUrlScheme);
                expect(argPreferprivatesession, isTrue);
                expect(argBrowserpackagename, browserPackage);
                return {'code': 'code', 'state': 'state'};
              }),
            ),
          )
          ..addInstance<Dispatcher<AuthEvent, AuthState>>(
            const MockDispatcher(),
          );
        await platform.signIn(options: options);
      });

      test('signOutWithUrl', () async {
        const options = CognitoSignOutWithWebUIOptions(
          browserPackageName: browserPackage,
        );
        dependencyManager
          ..addInstance<NativeAuthBridge>(
            MockNativeAuthBridge(
              signOutWithUrl: expectAsync4((
                argUrl,
                argCallbackurlscheme,
                argPreferprivatesession,
                argBrowserpackagename,
              ) async {
                expect(argUrl, contains(hostedUiConfig.webDomain));
                expect(argCallbackurlscheme, testUrlScheme);
                expect(argPreferprivatesession, isTrue);
                expect(argBrowserpackagename, browserPackage);
              }),
            ),
          )
          ..addInstance<Dispatcher<AuthEvent, AuthState>>(
            const MockDispatcher(),
          );
        await platform.signOut(
          options: options,
          isPreferPrivateSession: true,
        );
      });
    },
  );
}

typedef SignInOutFn<T> = Future<T> Function(
  String argUrl,
  String argCallbackurlscheme,
  bool argPreferprivatesession,
  String? argBrowserpackagename,
);

class MockNativeAuthBridge extends Fake implements NativeAuthBridge {
  MockNativeAuthBridge({
    SignInOutFn<Map<String?, String?>>? signInWithUrl,
    SignInOutFn<void>? signOutWithUrl,
  })  : _signInWithUrl = signInWithUrl,
        _signOutWithUrl = signOutWithUrl;

  final SignInOutFn<Map<String?, String?>>? _signInWithUrl;
  final SignInOutFn<void>? _signOutWithUrl;

  @override
  Future<void> addPlugin() async {}

  @override
  Future<Map<String?, String?>> signInWithUrl(
    String argUrl,
    String argCallbackurlscheme,
    bool argPreferprivatesession,
    String? argBrowserpackagename,
  ) async {
    return _signInWithUrl?.call(
          argUrl,
          argCallbackurlscheme,
          argPreferprivatesession,
          argBrowserpackagename,
        ) ??
        (throw UnimplementedError());
  }

  @override
  Future<void> signOutWithUrl(
    String argUrl,
    String argCallbackurlscheme,
    bool argPreferprivatesession,
    String? argBrowserpackagename,
  ) async {
    return _signOutWithUrl?.call(
          argUrl,
          argCallbackurlscheme,
          argPreferprivatesession,
          argBrowserpackagename,
        ) ??
        (throw UnimplementedError());
  }
}
