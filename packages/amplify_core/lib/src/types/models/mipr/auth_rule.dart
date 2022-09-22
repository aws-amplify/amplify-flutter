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
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'auth_rule.g.dart';

/// {@template amplify_core.models.mipr.auth_strategy}
/// The different strategies for authorizing a user.
///
/// The strategy determines how the subscriptions will be constructed, whether
/// an auth plugin is needed, etc.
/// {@endtemplate}
class AuthStrategy extends EnumClass {
  const AuthStrategy._(super.name);

  /// Owner, or user-based, access.
  ///
  /// The signed-in user's identity must match the model's owner to authenticate
  /// the request. The field with the model's owner defaults to a synthetic
  /// `owner` field and can be overriden using [AuthRule.ownerField].
  @BuiltValueEnumConst(wireName: 'OWNER')
  static const AuthStrategy owner = _$owner;

  /// Group-based authorization (static or dynamic).
  ///
  /// The groups attached to the signed-in user's JWT token are used to
  /// authorize the request. Groups can be statically defined using
  /// [AuthRule.groups] or dynamically using [AuthRule.groupsField] to
  /// specify the model field containing the groups.
  @BuiltValueEnumConst(wireName: 'GROUPS')
  static const AuthStrategy groups = _$groups;

  /// Private, or authenticated, access.
  ///
  /// Any user who has a valid token is allowed access. The token depends on the
  /// [AuthRuleProvider] chosen.
  @BuiltValueEnumConst(wireName: 'PRIVATE')
  static const AuthStrategy private = _$private;

  /// Public, or unauthenticated, access.
  ///
  /// The user does not need to be signed in, however, they may need some form
  /// of authorization token still, as is the case with the
  /// [AuthRuleProvider.iam] provider.
  @BuiltValueEnumConst(wireName: 'PUBLIC')
  static const AuthStrategy public = _$public;

  /// Custom authorization logic, typically in the form of a serverless
  /// function.
  @BuiltValueEnumConst(wireName: 'CUSTOM')
  static const AuthStrategy custom = _$custom;

  /// The values of [AuthStrategy].
  static BuiltSet<AuthStrategy> get values => _$AuthStrategyValues;

  /// The [AuthStrategy] value corresponding to [name].
  static AuthStrategy valueOf(String name) => _$AuthStrategyValueOf(name);

  /// The serializer for [AuthStrategy].
  static Serializer<AuthStrategy> get serializer => _$authStrategySerializer;
}

/// {@template amplify_core.models.mipr.default_auth_rule_provider}
/// The default auth provider for the strategy, if none is explictly selected.
/// {@endtemplate}
extension DefaultAuthRuleProvider on AuthStrategy {
  /// {@macro amplify_core.models.mipr.default_auth_rule_provider}
  AuthRuleProvider get defaultProvider {
    switch (this) {
      case AuthStrategy.owner:
      case AuthStrategy.groups:
      case AuthStrategy.private:
        return AuthRuleProvider.userPools;
      case AuthStrategy.public:
        return AuthRuleProvider.apiKey;
      case AuthStrategy.custom:
        return AuthRuleProvider.function;
    }
    throw ArgumentError(this);
  }
}

/// {@template amplify_core.models.mipr.auth_provider}
/// An authorization backend which fulfills one or more [AuthStrategy].
/// {@endtemplate}
class AuthRuleProvider extends EnumClass {
  const AuthRuleProvider._(super.name);

  /// API Key authorization.
  @BuiltValueEnumConst(wireName: 'APIKEY')
  static const AuthRuleProvider apiKey = _$apiKey;

  /// IAM authorization.
  @BuiltValueEnumConst(wireName: 'IAM')
  static const AuthRuleProvider iam = _$iam;

  /// OIDC authorization.
  @BuiltValueEnumConst(wireName: 'OIDC')
  static const AuthRuleProvider oidc = _$oidc;

  /// Cognito User Pools authorization.
  @BuiltValueEnumConst(wireName: 'USERPOOLS')
  static const AuthRuleProvider userPools = _$userPools;

  /// Serverless function (Lambda) authorization.
  @BuiltValueEnumConst(wireName: 'FUNCTION')
  static const AuthRuleProvider function = _$function;

  /// The values of [AuthRuleProvider].
  static BuiltSet<AuthRuleProvider> get values => _$AuthRuleProviderValues;

  /// The [AuthRuleProvider] value corresponding to [name].
  static AuthRuleProvider valueOf(String name) =>
      _$AuthRuleProviderValueOf(name);

  /// The serializer for [AuthRuleProvider].
  static Serializer<AuthRuleProvider> get serializer =>
      _$authRuleProviderSerializer;
}

/// {@template amplify_core.models.mipr.model_operation}
/// An operation which can be performed on a model in the context of an
/// [AuthRule].
/// {@endtemplate}
class ModelOperation extends EnumClass {
  const ModelOperation._(super.name);

  /// Allows running mutations which create the model/field.
  @BuiltValueEnumConst(wireName: 'CREATE')
  static const ModelOperation create = _$create;

  /// Allows running mutations which update the model/field.
  @BuiltValueEnumConst(wireName: 'UPDATE')
  static const ModelOperation update = _$update;

  /// Allows running mutations which delete the model/field.
  @BuiltValueEnumConst(wireName: 'DELETE')
  static const ModelOperation delete = _$delete;

  /// Allows all read operations.
  ///
  /// Short-hand for [get], [list], [sync], [listen], [search].
  @BuiltValueEnumConst(wireName: 'READ')
  static const ModelOperation read = _$read;

  /// Allows retrieving an individual item.
  static const ModelOperation get = _$get;

  /// Allows retrieving a list of items.
  static const ModelOperation list = _$list;

  /// Allows syncing offline/online changes (incl. via DataStore).
  static const ModelOperation sync = _$sync;

  /// Allows subscribing to real-time updates.
  static const ModelOperation listen = _$listen;

  /// Allows searching using `@searchable` directive.
  static const ModelOperation search = _$search;

  /// The values of [ModelOperation].
  static BuiltSet<ModelOperation> get values => _$ModelOperationValues;

  /// The [ModelOperation] value corresponding to [name].
  static ModelOperation valueOf(String name) => _$ModelOperationValueOf(name);

  /// The serializer for [ModelOperation].
  static Serializer<ModelOperation> get serializer =>
      _$modelOperationSerializer;
}

/// {@template amplify_core.models.mipr.auth_rule}
/// An `@auth` rule attached to a `Model` or `ModelField`.
///
/// Represents an authorization rule which govern access to a model or field
/// as part of a collection of [AuthRule].
/// {@endtemplate}
abstract class AuthRule
    with AWSSerializable<Map<String, Object?>>
    implements Built<AuthRule, AuthRuleBuilder> {
  /// {@macro amplify_core.models.mipr.auth_rule}
  factory AuthRule({
    required AuthStrategy authStrategy,
    String? ownerField,
    String? identityClaim,
    String? groupClaim,
    List<String>? groups,
    String? groupsField,
    AuthRuleProvider? provider,
    Iterable<ModelOperation>? operations,
  }) {
    return AuthRule.build((b) {
      b
        ..authStrategy = authStrategy
        ..ownerField = ownerField
        ..identityClaim = identityClaim
        ..groupClaim = groupClaim
        ..groupsField = groupsField
        ..provider = provider;

      if (groups != null) {
        b.groups.addAll(groups);
      }
      if (operations != null) {
        b.operations.addAll(operations);
      }
    });
  }

  /// {@macro amplify_core.models.mipr.auth_rule}
  factory AuthRule.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(serializer, json) as AuthRule;
  }

  /// {@macro amplify_core.models.mipr.auth_rule}
  factory AuthRule.build([void Function(AuthRuleBuilder) updates]) = _$AuthRule;
  const AuthRule._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _setDefaults(AuthRuleBuilder b) {
    switch (b.authStrategy) {
      case AuthStrategy.groups:
        b.groupClaim ??= 'cognito:groups';
        if (b.groups.isNotEmpty && b.groupsField != null) {
          throw ArgumentError.value(
            b.groups,
            'groups',
            'cannot use both static and dynamic group authorization',
          );
        }
        b.groupsField ??= 'groups';
        break;
      case AuthStrategy.owner:
        b.ownerField ??= 'owner';
        b.identityClaim ??= 'sub::username';
        break;
      case AuthStrategy.private:
        break;
      case AuthStrategy.public:
        break;
      case AuthStrategy.custom:
        break;
    }
    if (b.operations.isEmpty) {
      b.operations.addAll([
        ModelOperation.create,
        ModelOperation.update,
        ModelOperation.delete,
        ModelOperation.read,
      ]);
    }
    b.provider ??= b.authStrategy!.defaultProvider;
  }

  /// The strategy this rule applies to.
  AuthStrategy get authStrategy;

  /// The field in the model schema which contains the owner's username.
  ///
  /// This can be customized when using the [AuthStrategy.owner] strategy.
  String? get ownerField;

  /// The claim in the JWT token which identifies the user.
  ///
  /// This can be customized when using the [AuthStrategy.owner] strategy.
  String? get identityClaim;

  /// The claim in the JWT token which identifies a user's group.
  ///
  /// This can be customized when using the [AuthStrategy.groups] strategy.
  String? get groupClaim;

  /// The static list of groups which are authorized by this rule.
  ///
  /// This can be customized when using the [AuthStrategy.groups] strategy.
  BuiltSet<String>? get groups;

  /// The field in the model schema which contains the list of groups authorized
  /// by this rule.
  ///
  /// This can be customized when using the [AuthStrategy.groups] strategy.
  String? get groupsField;

  /// The backend which fulfills this strategy.
  ///
  /// This defaults to [DefaultAuthRuleProvider.defaultProvider] but can be
  /// customized when using an alternative provider.
  AuthRuleProvider get provider;

  /// The set of operations allowed by this rule.
  ///
  /// Defaults to all operations.
  BuiltSet<ModelOperation> get operations;

  @override
  Map<String, Object?> toJson() {
    return serializers.serializeWith(AuthRule.serializer, this)
        as Map<String, Object?>;
  }

  /// The serializer for [AuthRule].
  static Serializer<AuthRule> get serializer => _$authRuleSerializer;
}
