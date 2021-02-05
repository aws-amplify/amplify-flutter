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

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum AuthStrategy { OWNER, GROUPS, PRIVATE, PUBLIC }

enum ModelOperation { CREATE, UPDATE, DELETE, READ }

class AuthRule {
  final AuthStrategy authStrategy;
  final String ownerField; //opt
  final String identityClaim; //opt
  final String groupClaim; //opt
  final List<String> groups; //opt
  final String groupsField; //opt
  final List<ModelOperation> operations; //opt

  const AuthRule(
      {this.authStrategy,
      this.ownerField,
      this.identityClaim,
      this.groupClaim,
      this.groups,
      this.groupsField,
      this.operations});

  AuthRule copyWith({
    AuthStrategy authStrategy,
    String ownerField,
    String identityClaim,
    String groupClaim,
    List<String> groups,
    String groupsField,
    List<ModelOperation> operations,
  }) {
    return AuthRule(
      authStrategy: authStrategy ?? this.authStrategy,
      ownerField: ownerField ?? this.ownerField,
      identityClaim: identityClaim ?? this.identityClaim,
      groupClaim: groupClaim ?? this.groupClaim,
      groups: groups ?? this.groups,
      groupsField: groupsField ?? this.groupsField,
      operations: operations ?? this.operations,
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'authStrategy': describeEnum(authStrategy),
      'ownerField': ownerField,
      'identityClaim': identityClaim,
      'groupClaim': groupClaim,
      'groups': groups,
      'groupsField': groupsField,
      'operations': operations?.map((x) => describeEnum(x))?.toList(),
    };
    return Map.from(map)..removeWhere((k, v) => v == null);
  }

  factory AuthRule.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AuthRule(
        authStrategy: AuthStrategy.values[map['authStrategy']],
        ownerField: map['ownerField'],
        identityClaim: map['identityClaim'],
        groupClaim: map['groupClaim'],
        groups: List<String>.from(map['groups']),
        groupsField: map['groupsField'],
        operations: List<ModelOperation>.from(
            map['operations']?.map((x) => ModelOperation.values[x])));
  }

  String toJson() => json.encode(toMap());

  factory AuthRule.fromJson(String source) =>
      AuthRule.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthRule(authStrategy: $authStrategy, ownerField: $ownerField, identityClaim: $identityClaim, groupClaim: $groupClaim, groups: $groups, groupsField: $groupsField, operations: $operations)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is AuthRule &&
        o.authStrategy == authStrategy &&
        o.ownerField == ownerField &&
        o.identityClaim == identityClaim &&
        o.groupClaim == groupClaim &&
        listEquals(o.groups, groups) &&
        o.groupsField == groupsField &&
        listEquals(o.operations, operations);
  }

  @override
  int get hashCode {
    return authStrategy.hashCode ^
        ownerField.hashCode ^
        identityClaim.hashCode ^
        groupClaim.hashCode ^
        groups.hashCode ^
        groupsField.hashCode ^
        operations.hashCode;
  }
}
