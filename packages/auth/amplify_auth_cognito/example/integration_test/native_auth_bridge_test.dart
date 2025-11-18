// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_internal_member

import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/flows/hosted_ui/hosted_ui_platform_flutter.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'test_runner.dart';

const testUrlScheme = 'authtest';

void main() {
  testRunner.setupTests();

  group(
    'NativeAuthBridge',
    skip: zIsWeb || !(Platform.isIOS || Platform.isAndroid),
    () {
      const browserPackage = 'browserPackage';

      late DependencyManager dependencyManager;
      late HostedUiPlatformImpl platform;

      setUp(() async {
        dependencyManager = DependencyManager()
          ..addInstance<AuthOutputs>(mockConfig.auth!)
          ..addInstance<SecureStorageInterface>(MockSecureStorage())
          ..addInstance<http.Client>(
            MockClient((request) {
              throw UnimplementedError();
            }),
          );
        platform = HostedUiPlatformImpl(dependencyManager);
      });

      asyncTest('signInWithUrl', (_) async {
        const options = CognitoSignInWithWebUIPluginOptions(
          isPreferPrivateSession: false,
          browserPackageName: browserPackage,
        );
        dependencyManager
          ..addInstance<NativeAuthBridge>(
            MockNativeAuthBridge(
              signInWithUrl: expectAsync1((argSignInOut) async {
                expect(
                  argSignInOut.url,
                  contains(mockConfig.auth?.oauth?.domain),
                );
                expect(argSignInOut.callbackurlscheme, testUrlScheme);
                expect(argSignInOut.preferprivatesession, isFalse);
                expect(argSignInOut.browserPackageName, browserPackage);
                return {'code': 'code', 'state': 'state'};
              }),
            ),
          )
          ..addInstance<Dispatcher<AuthEvent, AuthState>>(
            const MockDispatcher(),
          );
        await platform.signIn(options: options);
      });

      asyncTest('signInWithUrl with OIDC parameters', (_) async {
        const options = CognitoSignInWithWebUIPluginOptions(
          isPreferPrivateSession: false,
          browserPackageName: browserPackage,
          nonce: 'nonce',
          language: 'en',
          loginHint: 'username',
          prompt: [
            CognitoSignInWithWebUIPrompt.login,
            CognitoSignInWithWebUIPrompt.consent,
          ],
          resource: 'myapp://',
        );
        dependencyManager
          ..addInstance<NativeAuthBridge>(
            MockNativeAuthBridge(
              signInWithUrl: expectAsync1((argSignInOut) async {
                expect(
                  argSignInOut.url,
                  contains(mockConfig.auth?.oauth?.domain),
                );
                expect(argSignInOut.callbackurlscheme, testUrlScheme);
                expect(argSignInOut.preferprivatesession, isFalse);
                expect(argSignInOut.browserPackageName, browserPackage);
                expect(argSignInOut.nonce, 'nonce');
                expect(argSignInOut.language, 'en');
                expect(argSignInOut.loginHint, 'username');
                expect(argSignInOut.prompt, isNotNull);
                expect(
                  argSignInOut.prompt?.contains(
                    CognitoSignInWithWebUIPrompt.login.value,
                  ),
                  isTrue,
                );
                expect(
                  argSignInOut.prompt?.contains(
                    CognitoSignInWithWebUIPrompt.consent.value,
                  ),
                  isTrue,
                );
                expect(argSignInOut.resource, 'myapp://');
                return {'code': 'code', 'state': 'state'};
              }),
            ),
          )
          ..addInstance<Dispatcher<AuthEvent, AuthState>>(
            const MockDispatcher(),
          );
        await platform.signIn(options: options);
      });

      asyncTest('signOutWithUrl', (_) async {
        const options = CognitoSignInWithWebUIPluginOptions(
          isPreferPrivateSession: false,
          browserPackageName: browserPackage,
        );
        dependencyManager
          ..addInstance<NativeAuthBridge>(
            MockNativeAuthBridge(
              signOutWithUrl: expectAsync1((argSignInOut) async {
                expect(
                  argSignInOut.url,
                  contains(mockConfig.auth?.oauth?.domain),
                );
                expect(argSignInOut.callbackurlscheme, testUrlScheme);
                expect(argSignInOut.preferprivatesession, isFalse);
                expect(argSignInOut.browserPackageName, browserPackage);
              }),
            ),
          )
          ..addInstance<Dispatcher<AuthEvent, AuthState>>(
            const MockDispatcher(),
          );
        await platform.signOut(options: options);
      });
    },
  );
}

class SignInOut {
  SignInOut(
    this.url,
    this.callbackurlscheme,
    this.preferprivatesession,
    this.browserPackageName,
    this.nonce,
    this.language,
    this.loginHint,
    this.prompt,
    this.resource,
  );

  String url = '';
  String callbackurlscheme = '';
  bool preferprivatesession = false;
  String? browserPackageName;
  String? nonce;
  String? language;
  String? loginHint;
  List<String>? prompt;
  String? resource;
}

typedef SignInOutFn<T> = Future<T> Function(SignInOut signInOut);

class MockNativeAuthBridge extends Fake implements NativeAuthBridge {
  MockNativeAuthBridge({
    SignInOutFn<Map<String, String>>? signInWithUrl,
    SignInOutFn<void>? signOutWithUrl,
  }) : _signInWithUrl = signInWithUrl,
       _signOutWithUrl = signOutWithUrl;

  final SignInOutFn<Map<String, String>>? _signInWithUrl;
  final SignInOutFn<void>? _signOutWithUrl;

  @override
  Future<Map<String, String>> signInWithUrl(
    String argUrl,
    String argCallbackurlscheme,
    bool argPreferprivatesession,
    String? argBrowserpackagename,
    String? argNonce,
    String? argLanguage,
    String? argLoginHint,
    List<String>? argPrompt,
    String? argResource,
  ) async {
    return _signInWithUrl?.call(
          SignInOut(
            argUrl,
            argCallbackurlscheme,
            argPreferprivatesession,
            argBrowserpackagename,
            argNonce,
            argLanguage,
            argLoginHint,
            argPrompt,
            argResource,
          ),
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
          SignInOut(
            argUrl,
            argCallbackurlscheme,
            argPreferprivatesession,
            argBrowserpackagename,
            null,
            null,
            null,
            null,
            null,
          ),
        ) ??
        (throw UnimplementedError());
  }
}
