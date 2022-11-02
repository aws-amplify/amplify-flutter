// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:test/fake.dart';
import 'package:test/test.dart';

class MockAuthProviderToken extends AmplifyAuthProviderToken<MockAuthProvider>
    with AWSEquatable<MockAuthProviderToken> {
  const MockAuthProviderToken(this.category);

  final Category category;

  @override
  List<Object?> get props => [category];
}

class MockAuthProvider extends Fake implements AmplifyAuthProvider {
  MockAuthProvider(this.category);

  final Category category;
}

class AuthPlugin extends Fake implements AuthPluginInterface {
  @override
  Category get category => Category.auth;

  late final AmplifyAuthProvider _authProvider;

  @override
  P cast<P extends AmplifyPluginInterface>() => this as P;

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    authProviderRepo.registerAuthProvider(
      MockAuthProviderToken(category),
      MockAuthProvider(category),
    );
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    _authProvider = authProviderRepo.getAuthProvider(
      const MockAuthProviderToken(Category.api),
    )!;
  }
}

class ApiPlugin extends Fake implements APIPluginInterface {
  @override
  Category get category => Category.api;

  late final AmplifyAuthProvider _authProvider;

  @override
  P cast<P extends AmplifyPluginInterface>() => this as P;

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    authProviderRepo.registerAuthProvider(
      MockAuthProviderToken(category),
      MockAuthProvider(category),
    );
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    _authProvider = authProviderRepo.getAuthProvider(
      const MockAuthProviderToken(Category.auth),
    )!;
  }
}

void main() {
  group('AuthProviderRepository', () {
    test('allows plugin interdependenices', () async {
      final apiPlugin = ApiPlugin();
      final authPlugin = AuthPlugin();

      await Amplify.addPlugins([apiPlugin, authPlugin]);
      await Amplify.configure('{}');

      expect(
        apiPlugin._authProvider,
        isA<MockAuthProvider>().having(
          (p) => p.category,
          'category',
          Category.auth,
        ),
        reason: 'This would fail if auth providers are added in `configure`',
      );
      expect(
        authPlugin._authProvider,
        isA<MockAuthProvider>().having(
          (p) => p.category,
          'category',
          Category.api,
        ),
        reason: 'This would fail if auth providers are added in `configure`',
      );
    });
  });
}
