import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:amplified_todo/main.dart' as app;
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_api/amplify_api.dart';
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

String generateUsername() => 'TEMP_USER-${uuid()}';
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
    await expectLater(
      Amplify.DataStore.save(dsTodo),
      completes,
    );
  }

  Future<void> performAuthenticatedActions() async {
    // Retrieve guest data
    final guestData = await Amplify.Storage.downloadData(
      path: path,
    ).result;
    expect(utf8.decode(guestData.bytes), data);

    // Upload data to Storage
    await Amplify.Storage.uploadData(
      data: StorageDataPayload.string(data),
      path: StoragePath.fromIdentityId(
        (String identityId) => 'private/$identityId/hello',
      ),
    ).result;

    // Record Analytics event
    await Amplify.Analytics.recordEvent(event: event);
    await Amplify.Analytics.flushEvents();

    // Perform API mutation
    final username = (await Amplify.Auth.getCurrentUser()).username;
    final todo = Todo(name: 'name', owner: username);
    final mutation = ModelMutations.create(todo);
    final response = await Amplify.API.mutate(request: mutation).response;
    expect(response.hasErrors, isFalse);
    expect(response.data, todo);

    // Perform DataStore operation
    final dsTodo = Todo(name: 'test', owner: username);
    final subscription = Amplify.DataStore.observe(Todo.classType);
    final expectation = expectLater(
      subscription,
      emitsThrough(
        isA<SubscriptionEvent<Todo>>()
            .having((event) => event.item.name, 'name', 'test'),
      ),
    );
    await Amplify.DataStore.save(dsTodo);
    await expectation;
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
    final confirmPasswordField =
        find.byKey(keys.keyPasswordConfirmationSignUpFormField);
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

    // Clean up
    await tester.runAsync(Amplify.Auth.deleteUser);
    await expectLater(
      hubEventsController.stream,
      emitsThrough(AuthHubEvent.userDeleted()),
    );
    await tester.pumpAndSettle();
    expect(signUpTab, findsOneWidget, reason: 'User should be signed out');
  });
}
