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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names,inference_failure_on_collection_literal

library models.custom_claim;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class CustomClaimType
    extends ModelType<String, CustomClaim, PartialCustomClaim> {
  const CustomClaimType();

  @override
  T fromJson<T extends PartialModel<String, CustomClaim>>(
    Map<String, Object?> json,
  ) {
    if (T == CustomClaim || T == Model<String, CustomClaim>) {
      return CustomClaim.fromJson(json) as T;
    }
    if (T == RemoteCustomClaim || T == RemoteModel<String, CustomClaim>) {
      return _RemoteCustomClaim.fromJson(json) as T;
    }
    return _PartialCustomClaim.fromJson(json) as T;
  }

  @override
  String get modelName => 'customClaim';
}

class CustomClaimQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const CustomClaimQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, CustomClaim>? _root;

  /// Query field for the [CustomClaim.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, CustomClaim, String>(
        const QueryField<String, CustomClaim, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [CustomClaim.name] field.
  QueryField<ModelIdentifier, M, String?> get $name =>
      NestedQueryField<ModelIdentifier, M, String, CustomClaim, String?>(
        const QueryField<String, CustomClaim, String?>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [CustomClaim.bar] field.
  QueryField<ModelIdentifier, M, String?> get $bar =>
      NestedQueryField<ModelIdentifier, M, String, CustomClaim, String?>(
        const QueryField<String, CustomClaim, String?>(fieldName: 'bar'),
        root: _root,
      );

  /// Query field for the [CustomClaim.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, CustomClaim,
          TemporalDateTime>(
        const QueryField<String, CustomClaim, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [CustomClaim.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, CustomClaim,
          TemporalDateTime>(
        const QueryField<String, CustomClaim, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [CustomClaim] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, CustomClaim, String>(
        const QueryField<String, CustomClaim, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialCustomClaim extends PartialModel<String, CustomClaim>
    with AWSEquatable<PartialCustomClaim> {
  const PartialCustomClaim._();

  String get id;
  String? get name;
  String? get bar;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  CustomClaimType get modelType => CustomClaim.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        bar,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'bar': bar,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'CustomClaim';
}

class _PartialCustomClaim extends PartialCustomClaim {
  const _PartialCustomClaim({
    required this.id,
    this.name,
    this.bar,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialCustomClaim.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialCustomClaim(
      id: id,
      name: name,
      bar: bar,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? bar;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class CustomClaim extends PartialCustomClaim
    implements Model<String, CustomClaim> {
  factory CustomClaim({
    String? id,
    String? name,
    String? bar,
  }) = _CustomClaim;

  const CustomClaim._() : super._();

  factory CustomClaim.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _CustomClaim._(
      id: id,
      name: name,
      bar: bar,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const CustomClaimType classType = CustomClaimType();

  static const CustomClaimQueryFields<String, CustomClaim> _queryFields =
      CustomClaimQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'customClaim',
      'pluralName': 'customClaims',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'name': {
          'name': 'name',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'bar': {
          'name': 'bar',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
      },
      'authRules': [
        {
          'authStrategy': 'GROUPS',
          'provider': 'USERPOOLS',
          'operations': [
            'CREATE',
            'UPDATE',
            'DELETE',
            'READ',
          ],
          'groupClaim': 'user_groups',
          'groups': ['Moderator'],
          'groupsField': 'groups',
        }
      ],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        }
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, CustomClaim, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, CustomClaim, String> get ID => $id;
  @override
  String? get name;

  /// Query field for the [name] field.
  QueryField<String, CustomClaim, String?> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, CustomClaim, String?> get NAME => $name;
  @override
  String? get bar;

  /// Query field for the [bar] field.
  QueryField<String, CustomClaim, String?> get $bar => _queryFields.$bar;

  /// Query field for the [bar] field.
  @Deprecated(r'Use $bar instead')
  QueryField<String, CustomClaim, String?> get BAR => $bar;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, CustomClaim, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, CustomClaim, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  CustomClaim copyWith({
    String? id,
    String? name,
    String? bar,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _CustomClaim._(
      id: id ?? this.id,
      name: name ?? this.name,
      bar: bar ?? this.bar,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, CustomClaim, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'bar':
        value = bar;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _CustomClaim extends CustomClaim {
  _CustomClaim({
    String? id,
    this.name,
    this.bar,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _CustomClaim._({
    required this.id,
    this.name,
    this.bar,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? bar;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteCustomClaim extends CustomClaim
    implements RemoteModel<String, CustomClaim> {
  const RemoteCustomClaim._() : super._();
}

class _RemoteCustomClaim extends RemoteCustomClaim {
  const _RemoteCustomClaim({
    required this.id,
    this.name,
    this.bar,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteCustomClaim.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'CustomClaim',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteCustomClaim(
      id: id,
      name: name,
      bar: bar,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? bar;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
