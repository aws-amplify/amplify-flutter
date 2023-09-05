// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_internal_member

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito/src/flows/hosted_ui/hosted_ui_platform_flutter.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webview_flutter/webview_flutter.dart';
// ignore: implementation_imports
import 'package:webview_flutter_wkwebview/src/foundation/foundation.dart';

import 'test_runner.dart';

final AWSLogger _logger = AWSLogger().createChild('HostedUI');

// This test verifies the non-native logic of the Hosted UI flow on iOS and
// Android using an embedded WebView.
void main() {
  testRunner.setupTests();

  group(
    'Hosted UI',
    () {
      late AmplifyAuthCognito plugin;
      late CognitoAuthStateMachine stateMachine;
      late String username;
      late String password;

      setUp(() async {
        await testRunner.configure(
          environmentName: 'hosted-ui',
        );
        plugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
        stateMachine = plugin.stateMachine;

        username = generateUsername();
        password = generatePassword();
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
        );
      });

      Future<void> signIn(
        WidgetTester tester, {
        bool cancel = false,
      }) async {
        stateMachine.addInstance<HostedUiPlatform>(
          HostedUiTestPlatform(
            tester,
            stateMachine,
            username: username,
            password: password,
            cancel: cancel,
          ),
        );
        _logger.debug('Signing in with Web UI');
        if (cancel) {
          final expectation = expectLater(
            plugin.signInWithWebUI(
              provider: AuthProvider.cognito,
            ),
            throwsA(isA<UserCancelledException>()),
          );
          final hostedUiMachine =
              stateMachine.expect(HostedUiStateMachine.type);
          expect(
            hostedUiMachine.stream,
            emitsInOrder([
              isA<HostedUiSigningIn>(),
              isA<HostedUiFailure>().having(
                (s) => s.exception,
                'exception',
                isA<UserCancelledException>(),
              ),
              emitsDone,
            ]),
          );
          await expectation;
          // Ensure queue is flushed and done event is emitted after
          // signInWithWebUI completes.
          await hostedUiMachine.close();
        } else {
          final result = await plugin.signInWithWebUI(
            provider: AuthProvider.cognito,
          );
          _logger.debug('Signed in with Web UI');
          expect(result.isSignedIn, isTrue);
        }
      }

      Future<void> signOut({required bool globalSignOut}) async {
        final result = await plugin.signOut(
          options: SignOutOptions(
            globalSignOut: globalSignOut,
          ),
        );
        expect(result, isA<CognitoCompleteSignOut>());
        final credentials = await stateMachine.loadCredentials();
        expect(
          credentials.awsCredentials,
          isNull,
        );
        expect(
          credentials.identityId,
          isNull,
        );
        expect(
          credentials.signInDetails,
          isNull,
        );
        expect(
          credentials.userPoolTokens,
          isNull,
        );
        await expectLater(
          plugin.getCurrentUser(),
          throwsA(isA<SignedOutException>()),
        );
        await expectLater(
          plugin.stateMachine.getUserPoolTokens(),
          throwsA(isA<SignedOutException>()),
        );
      }

      testWidgets('sign in / sign out', (tester) async {
        await signIn(tester);
        await signOut(globalSignOut: false);
      });

      testWidgets('cancel sign-in', (tester) async {
        await signIn(tester, cancel: true);
      });

      testWidgets('global sign out', (tester) async {
        await signIn(tester);
        await signOut(globalSignOut: true);
      });
    },
    // Add remaining platforms as `webview_flutter` adds support.
    skip: zIsWeb || !(Platform.isAndroid || Platform.isIOS),
  );
}

class HostedUiTestPlatform extends HostedUiPlatformImpl {
  HostedUiTestPlatform(
    this.tester,
    DependencyManager manager, {
    required this.username,
    required this.password,
    required this.cancel,
  }) : super(manager);

  final String username;
  final String password;

  /// Whether to cancel the sign-in flow once initiated.
  final bool cancel;

  final WidgetTester tester;
  final Completer<WebViewController> _controller = Completer();
  final Completer<OAuthParameters> _oauthParameters = Completer();

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    if (cancel) {
      throw const UserCancelledException('Cancelled');
    }
    final signInUri = await getSignInUri(provider: provider);
    await tester.pumpWidget(
      HostedUiApp(
        platform: this,
        initialUri: signInUri,
      ),
    );
    await tester.pumpAndSettle();
    final controller = await _controller.future;
    await tester.pump(const Duration(seconds: 2));
    try {
      await controller.runJavaScript('''
const usernameInput = document.getElementById('signInFormUsername');
usernameInput.scrollIntoView();
usernameInput.value = '$username';

const passwordInput = document.getElementById('signInFormPassword');
passwordInput.scrollIntoView();
passwordInput.value = '$password';

const loginButton = document.getElementsByName('signInSubmitButton')[0];
loginButton.scrollIntoView();
loginButton.click();
''');
    } on PlatformException catch (e) {
      final details = e.details;
      if (details is NSError) {
        _logger.error(
          'Error running JavaScript: '
          '${details.code} ${details.domain} ${details.localizedDescription}',
        );
      } else {
        _logger.error(
          'Error running JavaScript: $details',
        );
      }
      rethrow;
    }
    final oauthParameters = await _oauthParameters.future;
    unawaited(
      dispatcher.dispatchAndComplete(HostedUiEvent.exchange(oauthParameters)),
    );
  }

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIPluginOptions options,
  }) async {
    final signOutUrl = getSignOutUri();
    final controller = await _controller.future;
    await controller.loadRequest(signOutUrl);
    await controller.clearCache();
    await controller.clearLocalStorage();
  }
}

class HostedUiApp extends StatefulWidget {
  const HostedUiApp({
    required this.platform,
    required this.initialUri,
    super.key,
  });

  final HostedUiTestPlatform platform;
  final Uri initialUri;

  @override
  State<HostedUiApp> createState() => _HostedUiAppState();
}

class _HostedUiAppState extends State<HostedUiApp> {
  late final controller = () {
    late final WebViewController controller;
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (error) {
            _logger.error(
              'Web resource error: ${error.errorCode} ${error.description} ${error.errorType}',
            );
          },
          onPageStarted: (url) {
            _logger.info('Started loading: $url');
          },
          onPageFinished: (url) {
            _logger.info('Finished loading: $url');
            if (!widget.platform._controller.isCompleted) {
              widget.platform._controller.complete(controller);
            }
          },
          onNavigationRequest: (request) {
            _logger.info('Request to load: ${request.url}');
            final uri = Uri.parse(request.url);
            if (uri.scheme == widget.platform.signInRedirectUri.scheme) {
              if (!widget.platform._oauthParameters.isCompleted) {
                widget.platform._oauthParameters.complete(
                  OAuthParameters.fromJson(uri.queryParameters),
                );
              }
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(widget.initialUri);
    return controller;
  }();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: WebViewWidget(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
