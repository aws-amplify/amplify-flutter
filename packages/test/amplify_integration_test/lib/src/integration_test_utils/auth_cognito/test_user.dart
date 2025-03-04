import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/amplify_test.dart';

/// A test user for use in integration tests.
/// Email based sign in mechanism is used.
class TestUser {
  /// Create a test user with a random email and password.
  TestUser({String? email, String? password})
    : _email = email ?? generateEmail(),
      _password = password ?? generatePassword();

  final String _email;
  final String _password;

  /// Sign up the test user.
  Future<void> signUp() async {
    await signOut();
    final result = await Amplify.Auth.signUp(
      username: _email,
      password: _password,
    );
    if (!result.isSignUpComplete) {
      throw Exception('Unable to sign up test user.');
    }
  }

  /// Sign out the test user. No-op if already signed out.
  Future<void> signOut() async {
    final session = await Amplify.Auth.fetchAuthSession();
    if (!session.isSignedIn) return;
    await Amplify.Auth.signOut();
  }

  /// Sign in the test user. No-op if already signed in.
  Future<void> signIn() async {
    final session = await Amplify.Auth.fetchAuthSession();
    if (session.isSignedIn) return;
    try {
      final result = await Amplify.Auth.signIn(
        username: _email,
        password: _password,
      );
      if (!result.isSignedIn) {
        throw Exception('Unable to sign in test user.');
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  /// Delete the user from the auth service.
  Future<void> delete() async {
    final session = await Amplify.Auth.fetchAuthSession();
    if (!session.isSignedIn) await signIn();
    await Amplify.Auth.deleteUser();
  }
}

/// Sign up a test user and sign in.
Future<TestUser> signUpTestUser(TestUser? testUser) async {
  testUser = testUser ?? TestUser();
  await testUser.signUp();
  return testUser;
}

/// No-op if already signed in.
Future<void> signInTestUser(TestUser? testUser) async {
  if (testUser == null) {
    throw const InvalidStateException(
      'No test user to sign in.',
      recoverySuggestion: 'Ensure test user signed up.',
    );
  }
  await testUser.signIn();
}

/// No-op if not signed in.
Future<void> signOutTestUser(TestUser? testUser) async {
  await testUser?.signOut();
}

/// validates the test user and deletes it.
Future<void> deleteTestUser(TestUser? testUser) async {
  if (testUser == null) {
    throw const InvalidStateException(
      'No test user to delete.',
      recoverySuggestion: 'Ensure test user signed up.',
    );
  }
  await testUser.delete();
}
