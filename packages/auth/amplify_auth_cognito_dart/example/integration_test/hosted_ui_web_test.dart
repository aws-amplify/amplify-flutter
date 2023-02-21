// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore: invalid_use_of_internal_member,implementation_imports
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_common.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:checks/checks.dart';
import 'package:cli_script/cli_script.dart' hide check, fail;
import 'package:io/io.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:test/test.dart';
import 'package:webdriver/async_io.dart' hide LogLevel;

import 'common.dart';

/// The URI of the application.
final Uri applicationUri = Uri.parse('http://localhost:3000/');

final ProcessManager processManager = ProcessManager();
final AWSHttpClient httpClient = AWSHttpClient()
  ..supportedProtocols = SupportedProtocols.http1;

enum Compiler {
  ddc('DDC'),
  dart2js('dart2js');

  const Compiler(this.name);

  final String name;
}

/// Kills all processes listening on [port].
Future<void> killAll(int port) async {
  final pipeline = Script('lsof -i :$port') |
      Script('grep LISTEN') |
      Script(r"awk -F\  '{print $2}'");
  await for (final pid in pipeline.lines.map(int.parse)) {
    Process.killPid(pid);
  }
}

Future<void> buildAndRun(Compiler compiler) async {
  if (!isCI) {
    await processManager.spawnBackgroundInTest('chromedriver', [
      '--port=$chromedriverPort',
    ]);
  }
  const buildPath = 'build';
  final buildDir = Directory(buildPath);
  if (buildDir.existsSync()) {
    buildDir.deleteSync(recursive: true);
  }
  switch (compiler) {
    case Compiler.ddc:
      // Throwaway port. We use `webdev serve` to build with DDC but will
      // re-serve the files with our own server which can better handle
      // redirects.
      const servePort = 9000;
      await processManager.spawnBackgroundInTest('webdev', [
        'serve',
        '--output=web:$buildPath',
        'web:$servePort',
        '--',
        '--define=build_web_compilers:ddc=environment={"AMPLIFY_ENVIRONMENT":"hosted-ui"}',
      ]);

      // `webdev` spawns child processes of its own which are not easily closed
      // for some reason.
      addTearDown(() => killAll(servePort));

      // Wait for DDC build to complete by monitoring `servePort`.
      await Future.doWhile(() async {
        await Future<void>.delayed(const Duration(seconds: 5));
        try {
          final response = await httpClient
              .send(
                AWSHttpRequest.get(Uri.parse('http://localhost:$servePort')),
              )
              .response;
          return response.statusCode != 200;
        } on Exception {
          return true;
        }
      });
      break;
    case Compiler.dart2js:
      final buildProc = await processManager.spawn('webdev', [
        'build',
        '--',
        '--define=build_web_compilers:entrypoint=dart2js_args=["-DAMPLIFY_ENVIRONMENT=hosted-ui"]',
      ]);
      if (await buildProc.exitCode != 0) {
        fail('Could not build web app');
      }
      break;
  }

  final mimeResolver = MimeTypeResolver();

  // Serve the built website at `applicationUri` with appropriate fallbacks.
  // This is done so that, for example, `/auth` can be properly handled without
  // needing front-end routing or other tricks.
  final handler =
      const Pipeline().addMiddleware(logRequests()).addHandler((request) async {
    if (request.method != 'GET') {
      return Response(HttpStatus.methodNotAllowed);
    }
    var path = request.url.path;
    var file = File(p.joinAll([buildPath, ...request.url.pathSegments]));
    // Serve `index.html` for all directory listings or non-existent pages.
    if (path.endsWith('/') || !file.existsSync()) {
      path = p.join(buildPath, 'index.html');
      file = File(path);
    }
    final mimeType = mimeResolver.lookup(path);
    return Response.ok(
      await file.readAsBytes(),
      headers: {
        if (mimeType != null) 'Content-Type': mimeType,
      },
    );
  });
  final fileServer = await io.serve(
    handler,
    'localhost',
    applicationUri.port,
  );
  addTearDown(() => fileServer.close(force: true));
}

/// This test verifies the behavior of Hosted UI on Web by serving
/// `web/main.dart` and interacting with the app via a [WebDriver].
///
/// To test:
/// ```
/// dart test integration_test/hosted_ui_web_test.dart
/// ```
Future<void> main() async {
  AWSLogger().logLevel = LogLevel.verbose;

  group(
    'Hosted UI',
    () {
      late WebDriver driver;
      late String username;
      late String password;

      tearDownAll(() async {
        await httpClient.close();
      });

      for (final compiler in Compiler.values) {
        group(compiler.name, () {
          setUp(() async {
            await buildAndRun(compiler);

            await Amplify.configure(jsonEncode(config));
            addTearDown(Amplify.reset);

            username = generateUsername();
            password = generatePassword();

            logger.debug('Creating user $username...');
            await adminCreateUser(username, password, autoConfirm: true);
            addTearDown(() => deleteUser(username));

            logger.info('Launching Chrome...');
            driver = await createWebDriver();
            addTearDown(driver.quit);

            await driver.get(applicationUri);
          });

          test('sign in/sign out', () async {
            await driver.signIn(username: username, password: password);
            {
              final credentials = await driver.getCredentials();

              check(
                because: 'User should be logged in after redirect',
                credentials.userPoolTokens,
              ).isNotNull();
            }

            await driver.signOut();
            {
              final credentials = await driver.getCredentials();

              check(
                because: 'User should be signed out after redirect',
                credentials,
              )
                ..has((creds) => creds.awsCredentials, 'awsCredentials')
                    .isNull()
                ..has((creds) => creds.identityId, 'identityId').isNull()
                ..has((creds) => creds.userPoolTokens, 'userPoolTokens')
                    .isNull();
            }
          });

          test('incomplete sign out', () async {
            await driver.signIn(username: username, password: password);
            {
              final credentials = await driver.getCredentials();

              check(
                because: 'User should be logged in after redirect',
                credentials.userPoolTokens,
              ).isNotNull();
            }

            await driver.incompleteSignOut();
            {
              final credentials = await driver.getCredentials();

              check(
                because: 'User should be signed out without redirecting',
                credentials,
              )
                ..has((creds) => creds.awsCredentials, 'awsCredentials')
                    .isNull()
                ..has((creds) => creds.identityId, 'identityId').isNull()
                ..has((creds) => creds.userPoolTokens, 'userPoolTokens')
                    .isNull();
            }
          });
        });
      }
    },
    timeout: const Timeout(Duration(minutes: 30)),
  );
}

extension on WebDriver {
  /// Signs in on the Web platform by interacting with the login form component.
  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    final loginWithCognitoButton = await waitFor(const By.id('hostedUiLogin'));
    await loginWithCognitoButton.click();

    logger.info('REDIRECTING TO COGNITO');
    await locationChanges.firstWhere(
      (uri) => uri.host != 'localhost',
    );
    logger.info('REDIRECTED TO COGNITO');
    await signInCognito(username: username, password: password);
    logger.info('REDIRECTED AFTER SIGN IN');

    await waitFor(const By.id('signOut'));
  }

  /// Performs an "incomplete sign out" on Web platform by mimicking a redirect
  /// which never completes.
  Future<void> incompleteSignOut() async {
    await driver.execute(
      '''
const windowOpen = window.open;
window.open = function(url, target) {
  // Restore functionality for future calls.
  window.open = windowOpen;

  // Throw an error to prevent continuation of the `signOut` call. This mimicks
  // a redirect in that it stops execution of code at the point when a redirect
  // would have taken place.
  //
  // Note: This works because we do not catch `Error`/`Object` in `signOut`, so
  // this error will go unhandled and propagate to user code.
  throw new Error('Sign out aborted');
};
''',
      [],
    );

    final currentUri = Uri.parse(await currentUrl);

    final signOutButton = await waitFor(const By.id('signOut'));
    await signOutButton.click();

    final redirects = <Uri>[];
    locationChanges.listen((uri) {
      if (uri != currentUri) {
        redirects.add(uri);
      }
    });

    await waitFor(const By.id('loginForm'));

    check(
      because: 'signOut should not have redirected the page',
      redirects,
    ).isEmpty();
  }

  /// Performs a sign out on Web platform by interacting with the sign out
  /// button and waiting for a redirect to happen.
  Future<void> signOut() async {
    final signOutButton = await waitFor(const By.id('signOut'));
    await signOutButton.click();

    logger.info('REDIRECTING TO SIGN OUT');
    await driver.locationChanges.firstWhere(
      (uri) => uri.host == 'localhost' && uri.path == '/auth',
    );
    logger.info('REDIRECTED AFTER SIGN OUT');

    await waitFor(const By.id('loginForm'));
  }

  /// Gets credentials from the browser via IndexedDB.
  Future<CredentialStoreData> getCredentials() async {
    final json = await executeAsync(
      r'''
const [
  databaseName,

  // Callback is the last argument passed to the function. It must be called 
  // with the result of this function in order to complete.
  callback,
] = arguments;

// From `amplify_secure_storage_web.dart`
const databaseVersion = 1;
const storeName = 'default.store';

const db = await new Promise((resolve, reject) => {
  const request = indexedDB.open(databaseName, databaseVersion);
  request.onsuccess = (req) => {
    resolve(req.target.result);
  };
  request.onupgradeneeded = (_) => {
    reject('Invalid version');
  };
  request.onerror = (err) => {
    reject(`Could not complete request: ${err}`);
  };
});

const items = new Map();
await new Promise((resolve, reject) => {
  const tx = db.transaction(storeName, 'readwrite').objectStore(storeName);
  const request = tx.openCursor();
  request.onsuccess = (event) => {
    const cursor = event.target.result;
    if (!cursor) {
      return resolve();
    }
    const key = cursor.primaryKey;
    const value = cursor.value;
    items[key] = value;
    cursor.continue();
  };
  request.onerror = (err) => {
    reject(`Could not complete cursor req: ${err}`);
  };
  tx.onerror = (err) => {
    reject(`Could not complete tx: ${err}`);
  };
});

callback(JSON.stringify(items));
''',
      [webDatabaseName],
    ) as String;
    final data =
        (jsonDecode(json) as Map<String, Object?>).cast<String, String?>();
    final keys = HostedUiKeys(
      config.auth!.awsPlugin!.auth!.default$!.oAuth!,
    );
    CognitoUserPoolTokens? userPoolTokens;
    final accessToken = data[keys[HostedUiKey.accessToken]];
    final refreshToken = data[keys[HostedUiKey.refreshToken]];
    final idToken = data[keys[HostedUiKey.idToken]];
    if (accessToken != null && refreshToken != null && idToken != null) {
      userPoolTokens = CognitoUserPoolTokens(
        accessToken: JsonWebToken.parse(accessToken),
        refreshToken: refreshToken,
        idToken: JsonWebToken.parse(idToken),
      );
    }

    final awsKeys = CognitoIdentityPoolKeys(
      config.auth!.awsPlugin!.credentialsProvider!.default$!,
    );
    AWSCredentials? awsCredentials;
    final identityId = data[awsKeys[CognitoIdentityPoolKey.identityId]];
    final accessKeyId = data[awsKeys[CognitoIdentityPoolKey.accessKeyId]];
    final secretAccessKey =
        data[awsKeys[CognitoIdentityPoolKey.secretAccessKey]];
    final sessionToken = data[awsKeys[CognitoIdentityPoolKey.sessionToken]];
    if (accessKeyId != null && secretAccessKey != null) {
      awsCredentials =
          AWSCredentials(accessKeyId, secretAccessKey, sessionToken);
    }
    return CredentialStoreData(
      userPoolTokens: userPoolTokens,
      identityId: identityId,
      awsCredentials: awsCredentials,
    );
  }
}
