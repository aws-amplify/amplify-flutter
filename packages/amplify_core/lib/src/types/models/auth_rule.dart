/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum AuthStrategy { OWNER, GROUPS, PRIVATE, PUBLIC }

enum ModelOperation { CREATE, UPDATE, DELETE, READ }

enum AuthRuleProvider { APIKEY, OIDC, IAM, USERPOOLS, FUNCTION }

@immutable
class AuthRule {
  final AuthStrategy authStrategy;
  final String? ownerField;
  final String? identityClaim;
  final String? groupClaim;
  final List<String>? groups;
  final String? groupsField;
  final AuthRuleProvider? provider;
  final List<ModelOperation>? operations;

  const AuthRule(
      {required this.authStrategy,
      this.ownerField,
      this.identityClaim,
      this.groupClaim,
      this.groups,
      this.groupsField,
      this.provider,
      this.operations});

  AuthRule copyWith({
    AuthStrategy? authStrategy,
    String? ownerField,
    String? identityClaim,
    String? groupClaim,
    List<String>? groups,
    String? groupsField,
    AuthRuleProvider? provider,
    List<ModelOperation>? operations,
  }) {
    return AuthRule(
      authStrategy: authStrategy ?? this.authStrategy,
      ownerField: ownerField ?? this.ownerField,
      identityClaim: identityClaim ?? this.identityClaim,
      groupClaim: groupClaim ?? this.groupClaim,
      groups: groups ?? this.groups,
      groupsField: groupsField ?? this.groupsField,
      provider: provider ?? this.provider,
      operations: operations ?? this.operations,
    );
  }

  Map<String, dynamic> toMap() {
    final map = {
      'authStrategy': describeEnum(authStrategy),
      'ownerField': ownerField,
      'identityClaim': identityClaim,
      'groupClaim': groupClaim,
      'groups': groups,
      'groupsField': groupsField,
      'provider': provider != null ? describeEnum(provider!) : null,
      'operations': operations?.map(describeEnum).toList(),
    };
    return Map<String, dynamic>.from(map)
      ..removeWhere((k, dynamic v) => v == null);
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'AuthRule(authStrategy: $authStrategy, ownerField: $ownerField, identityClaim: $identityClaim, groupClaim: $groupClaim, groups: $groups, groupsField: $groupsField, provider: $provider, operations: $operations)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is AuthRule &&
        other.authStrategy == authStrategy &&
        other.ownerField == ownerField &&
        other.identityClaim == identityClaim &&
        other.groupClaim == groupClaim &&
        listEquals(other.groups, groups) &&
        other.groupsField == groupsField &&
        other.provider == provider &&
        listEquals(other.operations, operations);
  }

  @override
  int get hashCode {
    return authStrategy.hashCode ^
        ownerField.hashCode ^
        identityClaim.hashCode ^
        groupClaim.hashCode ^
        groups.hashCode ^
        groupsField.hashCode ^
        provider.hashCode ^
        operations.hashCode;
  }
}
