import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:amplified_todo/main.dart' as app;
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart' as keys;
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

final random = Random();
const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
const digits = '1234567890';
const symbols = r'~/`!@#$%^&*(),._?:;{}|<>';

String generateUsername() => 'temp-user-${uuid()}';
String generatePassword() =>
    uuid() +
    uppercaseLetters[random.nextInt(uppercaseLetters.length)] +
    symbols[random.nextInt(symbols.length)];
String generateEmail() => 'test-amplify-flutter-${uuid()}@test${uuid()}.com';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const data = 'hello, world';
  const path = StoragePath.fromString('public/hello');
  final event = AnalyticsEvent('hello');

  Future<void> performUnauthenticatedActions() async {
    // Upload data to Storage
    await Amplify.Storage.uploadData(
      data: StorageDataPayload.string(data),
      path: path,
    ).result;

    // Record Analytics event
    await Amplify.Analytics.recordEvent(event: event);
    await Amplify.Analytics.flushEvents();

    // Try API mutation
    final todo = Todo(name: 'name', owner: 'test');
    final mutation = ModelMutations.create(todo);
    await expectLater(
      Amplify.API.mutate(request: mutation).response,
      throwsA(isA<ApiException>()),
    );

    // Perform DataStore operation (local save)
    final dsTodo = Todo(name: 'test', owner: 'test');
    await expectLater(Amplify.DataStore.save(dsTodo), completes);
  }

  Future<void> performAuthenticatedActions() async {
    // === AUTH: Fetch auth session ===
    final authSession = await Amplify.Auth.fetchAuthSession();
    expect(authSession.isSignedIn, isTrue);

    // Clear DataStore to prevent sync conflicts with direct API calls
    await Amplify.DataStore.clear();

    // === STORAGE: Download guest data ===
    final guestData = await Amplify.Storage.downloadData(path: path).result;
    expect(utf8.decode(guestData.bytes), data);

    // === STORAGE: Upload to private path ===
    final privatePath = StoragePath.fromIdentityId(
      (String identityId) => 'private/$identityId/canary-test',
    );
    await Amplify.Storage.uploadData(
      data: StorageDataPayload.string(data),
      path: privatePath,
    ).result;

    // === STORAGE: List files ===
    final listResult = await Amplify.Storage.list(
      path: StoragePath.fromString('public/'),
    ).result;
    expect(listResult.items.isNotEmpty, isTrue);

    // === ANALYTICS: Record event ===
    await Amplify.Analytics.recordEvent(event: event);
    await Amplify.Analytics.flushEvents();

    // === AUTH: Get current user ===
    final username = (await Amplify.Auth.getCurrentUser()).username;

    // === API: Create Todo ===
    final todo = Todo(name: 'canary-test-${uuid()}', owner: username);
    final createMutation = ModelMutations.create(todo);
    final createResponse =
        await Amplify.API.mutate(request: createMutation).response;
    expect(createResponse.hasErrors, isFalse);
    expect(createResponse.data, isNotNull);
    final createdTodo = createResponse.data!;

    // === API: Query Todo ===
    final queryRequest = ModelQueries.get(Todo.classType, createdTodo.modelIdentifier);
    final queryResponse = await Amplify.API.query(request: queryRequest).response;
    expect(queryResponse.hasErrors, isFalse);
    expect(queryResponse.data?.id, createdTodo.id);
    final queriedTodo = queryResponse.data!;

    // === API: Delete Todo (cleanup) ===
    // Use deleteById to avoid ConflictUnhandled errors caused by _version mismatch
    // when DataStore sync may have modified the item's version in the background.
    // Note: Cleanup failures are logged but do not fail the test, as the primary
    // test assertions have already passed. DataStore sync can race with direct API
    // calls, causing version conflicts that are expected in this test scenario.
    final deleteMutation = ModelMutations.deleteById(
      Todo.classType,
      queriedTodo.modelIdentifier,
    );
    final deleteResponse =
        await Amplify.API.mutate(request: deleteMutation).response;
    if (deleteResponse.hasErrors) {
      // Log only error types (safe enums like "Unauthorized", "ConflictUnhandled")
      // Do NOT log error messages or field values which may contain sensitive data
      final errorTypes = deleteResponse.errors
          ?.map((e) => e.errorType ?? 'Unknown')
          .join(', ');
      AWSLogger().warn('[Cleanup] Delete mutation failed with ${deleteResponse.errors?.length ?? 0} error(s). Types: $errorTypes. This is expected if DataStore sync modified the item version.');
    }

    // === DATASTORE: Save and observe ===
    final dsTodo = Todo(name: 'canary-ds-test', owner: username);
    final subscription = Amplify.DataStore.observe(Todo.classType);
    final expectation = expectLater(
      subscription,
      emitsThrough(
        isA<SubscriptionEvent<Todo>>().having(
          (event) => event.item.name,
          'name',
          'canary-ds-test',
        ),
      ),
    );
    await Amplify.DataStore.save(dsTodo);
    await expectation;

    // === DATASTORE: Query ===
    final dsQueryResult = await Amplify.DataStore.query(
      Todo.classType,
      where: Todo.NAME.eq('canary-ds-test'),
    );
    expect(dsQueryResult.isNotEmpty, isTrue);

    // === DATASTORE: Delete (cleanup) ===
    await Amplify.DataStore.delete(dsTodo);

    // === STORAGE: Delete uploaded files (cleanup) ===
    await Amplify.Storage.remove(path: path).result;
    await Amplify.Storage.remove(path: privatePath).result;
  }

  testWidgets('canary', (tester) async {
    await app.main();
    await tester.pumpAndSettle();

    final hubEventsController = StreamController<AuthHubEvent>(sync: true);
    addTearDown(hubEventsController.close);

    Amplify.Hub.listen(HubChannel.Auth, hubEventsController.add);

    await tester.runAsync(performUnauthenticatedActions);

    // Sign up using the Authenticator
    expect(find.byType(Authenticator), findsOneWidget);

    // Navigate to signUp screen
    final signUpTab = find.descendant(
      of: find.byType(TabBar),
      matching: find.byKey(const ValueKey(AuthenticatorStep.signUp)),
    );
    await tester.tap(signUpTab);
    await tester.pumpAndSettle();

    // Enter username, password, and email
    final username = generateUsername();
    final usernameField = find.byKey(keys.keyUsernameSignUpFormField);
    await tester.ensureVisible(usernameField);
    await tester.enterText(usernameField, username);

    final password = generatePassword();
    final passwordField = find.byKey(keys.keyPasswordSignUpFormField);
    await tester.ensureVisible(passwordField);
    await tester.enterText(passwordField, password);
    final confirmPasswordField = find.byKey(
      keys.keyPasswordConfirmationSignUpFormField,
    );
    await tester.ensureVisible(confirmPasswordField);
    await tester.enterText(confirmPasswordField, password);

    final email = generateEmail();
    final emailField = find.byKey(keys.keyEmailSignUpFormField);
    await tester.ensureVisible(emailField);
    await tester.enterText(emailField, email);

    // Click "Sign Up"
    final signUpButton = find.byKey(keys.keySignUpButton);
    await tester.ensureVisible(signUpButton);
    await tester.tap(signUpButton);
    await tester.pumpAndSettle();

    expect(find.text('Signed in'), findsOneWidget);

    await tester.runAsync(performAuthenticatedActions);

    // === AUTH: Sign out ===
    await tester.runAsync(() async {
      final signOutResult = await Amplify.Auth.signOut();
      expect(signOutResult, isA<CognitoCompleteSignOut>());
      
      // Verify user is signed out
      final sessionAfterSignOut = await Amplify.Auth.fetchAuthSession();
      expect(sessionAfterSignOut.isSignedIn, isFalse);
    });
    await tester.pumpAndSettle();
    expect(signUpTab, findsOneWidget, reason: 'User should be signed out');

    // === AUTH: Sign back in for cleanup ===
    await tester.runAsync(() async {
      final signInResult = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(signInResult.isSignedIn, isTrue);
    });

    // === AUTH: Delete user (cleanup) ===
    await tester.runAsync(Amplify.Auth.deleteUser);
    await expectLater(
      hubEventsController.stream,
      emitsThrough(AuthHubEvent.userDeleted()),
    );
    await tester.pumpAndSettle();
    expect(signUpTab, findsOneWidget, reason: 'User should be signed out after deletion');
  });
}
