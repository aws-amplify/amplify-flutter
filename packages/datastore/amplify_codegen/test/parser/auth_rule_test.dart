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

import 'package:amplify_codegen/src/helpers/field.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:test/test.dart';

void main() {
  List<AuthRule> parseAuthRules(String schema) {
    return (parseString(schema).definitions.single as ObjectTypeDefinitionNode)
        .directives
        .authRules
        .toList();
  }

  group('Parser', () {
    group('Auth Rules', () {
      group('Owner Auth', () {
        test(
            'should add default owner field when owner auth is missing ownerField',
            () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: owner, identityClaim: "owner", operations: [read], provider: userPools}
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.owner
                  ..identityClaim = 'owner'
                  ..operations.add(ModelOperation.read)
                  ..provider = AuthRuleProvider.userPools
                  ..ownerField = 'owner',
              ),
            ),
          );
        });

        test(
            'should add default identityClaim cognito:userName if the directive is missing it',
            () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: owner, ownerField: "username", operations: [read], provider: userPools}
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.owner
                  ..identityClaim = 'sub::username'
                  ..operations.add(ModelOperation.read)
                  ..provider = AuthRuleProvider.userPools
                  ..ownerField = 'username',
              ),
            ),
          );
        });

        test('should add operations when its missing', () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: owner, ownerField: "username", provider: userPools, identityClaim: "user_name"}
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.owner
                  ..identityClaim = 'user_name'
                  ..operations.addAll([
                    ModelOperation.create,
                    ModelOperation.read,
                    ModelOperation.update,
                    ModelOperation.delete,
                  ])
                  ..provider = AuthRuleProvider.userPools
                  ..ownerField = 'username',
              ),
            ),
          );
        });

        test('should add provider when its missing', () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: owner, ownerField: "username", operations: [create, update, delete], identityClaim: "user_name"}
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.owner
                  ..identityClaim = 'user_name'
                  ..operations.addAll([
                    ModelOperation.create,
                    ModelOperation.update,
                    ModelOperation.delete,
                  ])
                  ..provider = AuthRuleProvider.userPools
                  ..ownerField = 'username',
              ),
            ),
          );
        });
      });

      group('Group Auth', () {
        test('should filter dynamic group auth rule', () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: groups, groupsField: "my-group" }
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.groups
                  ..groupsField = 'my-group',
              ),
            ),
          );
        });

        test('should add groupClaim field when its missing', () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: groups, provider: oidc, groups: ["Foo"], operations: [update] }
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.groups
                  ..provider = AuthRuleProvider.oidc
                  ..groups.add('Foo')
                  ..operations.add(ModelOperation.update)
                  ..groupClaim = 'cognito:groups',
              ),
            ),
          );
        });

        test('should add provider field when its missing', () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: groups, groupClaim: "my:groups", groups: ["Foo"], operations: [update] }
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.groups
                  ..provider = AuthRuleProvider.userPools
                  ..groupClaim = 'my:groups'
                  ..groups.add('Foo')
                  ..operations.add(ModelOperation.update),
              ),
            ),
          );
        });

        test('should add default operations when its missing', () {
          const schema = '''
          type DummyType @auth(rules: [
            { allow: groups, groupClaim: "my:groups", groups: ["Foo"] }
          ]) {}
          ''';
          final authRule = parseAuthRules(schema).single;
          expect(
            authRule,
            equals(
              AuthRule.build(
                (b) => b
                  ..authStrategy = AuthStrategy.groups
                  ..provider = AuthRuleProvider.userPools
                  ..groupClaim = 'my:groups'
                  ..groups.add('Foo')
                  ..operations.addAll([
                    ModelOperation.create,
                    ModelOperation.read,
                    ModelOperation.update,
                    ModelOperation.delete,
                  ]),
              ),
            ),
          );
        });
      });
    });
  });
}
