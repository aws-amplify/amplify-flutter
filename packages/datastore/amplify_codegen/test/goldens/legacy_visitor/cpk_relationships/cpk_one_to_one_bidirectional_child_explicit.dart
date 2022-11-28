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

library models.cpk_one_to_one_bidirectional_child_explicit;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:meta/meta.dart';

import 'cpk_one_to_one_bidirectional_parent.dart';

@immutable
class CpkOneToOneBidirectionalChildExplicitIdentifier
    with
        AWSEquatable<CpkOneToOneBidirectionalChildExplicitIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const CpkOneToOneBidirectionalChildExplicitIdentifier({
    required this.id,
    required this.name,
  });

  final String id;

  final String name;

  @override
  List<Object?> get props => [
        id,
        name,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
      };
  @override
  String get runtimeTypeName =>
      'CpkOneToOneBidirectionalChildExplicitIdentifier';
}

class CpkOneToOneBidirectionalChildExplicitType extends ModelType<
    CpkOneToOneBidirectionalChildExplicitIdentifier,
    CpkOneToOneBidirectionalChildExplicit,
    PartialCpkOneToOneBidirectionalChildExplicit> {
  const CpkOneToOneBidirectionalChildExplicitType();

  @override
  T fromJson<
      T extends PartialModel<CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit>>(Map<String, Object?> json) {
    if (T == CpkOneToOneBidirectionalChildExplicit ||
        T ==
            Model<CpkOneToOneBidirectionalChildExplicitIdentifier,
                CpkOneToOneBidirectionalChildExplicit>) {
      return CpkOneToOneBidirectionalChildExplicit.fromJson(json) as T;
    }
    if (T == RemoteCpkOneToOneBidirectionalChildExplicit ||
        T ==
            RemoteModel<CpkOneToOneBidirectionalChildExplicitIdentifier,
                CpkOneToOneBidirectionalChildExplicit>) {
      return _RemoteCpkOneToOneBidirectionalChildExplicit.fromJson(json) as T;
    }
    return _PartialCpkOneToOneBidirectionalChildExplicit.fromJson(json) as T;
  }

  @override
  String get modelName => 'CpkOneToOneBidirectionalChildExplicit';
}

class CpkOneToOneBidirectionalChildExplicitQueryFields<
    ModelIdentifier extends Object, M extends Model<ModelIdentifier, M>> {
  const CpkOneToOneBidirectionalChildExplicitQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, CpkOneToOneBidirectionalChildExplicit>?
      _root;

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.id] field.
  QueryField<ModelIdentifier, M, String> get $id => NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          String>(
        const QueryField<CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.name] field.
  QueryField<ModelIdentifier, M, String> get $name => NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          String>(
        const QueryField<CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.belongsToParentId] field.
  QueryField<ModelIdentifier, M, String?> get $belongsToParentId =>
      NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          String?>(
        const QueryField<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            String?>(fieldName: 'belongsToParentID'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.belongsToParentName] field.
  QueryField<ModelIdentifier, M, String?> get $belongsToParentName =>
      NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          String?>(
        const QueryField<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            String?>(fieldName: 'belongsToParentName'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.belongsToParent] field.
  CpkOneToOneBidirectionalParentQueryFields<ModelIdentifier, M>
      get $belongsToParent => CpkOneToOneBidirectionalParentQueryFields(
            NestedQueryField<
                ModelIdentifier,
                M,
                CpkOneToOneBidirectionalChildExplicitIdentifier,
                CpkOneToOneBidirectionalChildExplicit,
                CpkOneToOneBidirectionalParent>(
              const QueryField<
                  CpkOneToOneBidirectionalChildExplicitIdentifier,
                  CpkOneToOneBidirectionalChildExplicit,
                  CpkOneToOneBidirectionalParent>(fieldName: 'belongsToParent'),
              root: _root,
            ),
          );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          TemporalDateTime>(
        const QueryField<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            TemporalDateTime>(fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          TemporalDateTime>(
        const QueryField<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            TemporalDateTime>(fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalChildExplicit] model identifier.
  QueryField<ModelIdentifier, M,
          CpkOneToOneBidirectionalChildExplicitIdentifier>
      get $modelIdentifier => NestedQueryField<
              ModelIdentifier,
              M,
              CpkOneToOneBidirectionalChildExplicitIdentifier,
              CpkOneToOneBidirectionalChildExplicit,
              CpkOneToOneBidirectionalChildExplicitIdentifier>(
            const QueryField<
                CpkOneToOneBidirectionalChildExplicitIdentifier,
                CpkOneToOneBidirectionalChildExplicit,
                CpkOneToOneBidirectionalChildExplicitIdentifier>(
              fieldName: 'modelIdentifier',
            ),
            root: _root,
          );
}

abstract class PartialCpkOneToOneBidirectionalChildExplicit
    extends PartialModel<CpkOneToOneBidirectionalChildExplicitIdentifier,
        CpkOneToOneBidirectionalChildExplicit>
    with AWSEquatable<PartialCpkOneToOneBidirectionalChildExplicit> {
  const PartialCpkOneToOneBidirectionalChildExplicit._();

  String get id;
  String get name;
  String? get belongsToParentId;
  String? get belongsToParentName;
  PartialCpkOneToOneBidirectionalParent? get belongsToParent;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  CpkOneToOneBidirectionalChildExplicitIdentifier get modelIdentifier =>
      CpkOneToOneBidirectionalChildExplicitIdentifier(
        id: id,
        name: name,
      );
  @override
  CpkOneToOneBidirectionalChildExplicitType get modelType =>
      CpkOneToOneBidirectionalChildExplicit.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        belongsToParentId,
        belongsToParentName,
        belongsToParent,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'belongsToParentID': belongsToParentId,
        'belongsToParentName': belongsToParentName,
        'belongsToParent': belongsToParent?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'CpkOneToOneBidirectionalChildExplicit';
}

class _PartialCpkOneToOneBidirectionalChildExplicit
    extends PartialCpkOneToOneBidirectionalChildExplicit {
  const _PartialCpkOneToOneBidirectionalChildExplicit({
    required this.id,
    required this.name,
    this.belongsToParentId,
    this.belongsToParentName,
    this.belongsToParent,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialCpkOneToOneBidirectionalChildExplicit.fromJson(
    Map<String, Object?> json,
  ) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'name',
          ))
        : (json['name'] as String);
    final belongsToParentId = json['belongsToParentID'] == null
        ? null
        : (json['belongsToParentID'] as String);
    final belongsToParentName = json['belongsToParentName'] == null
        ? null
        : (json['belongsToParentName'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final belongsToParent = json['belongsToParent'] == null
        ? null
        : CpkOneToOneBidirectionalParent.classType
            .fromJson<PartialCpkOneToOneBidirectionalParent>(
            (json['belongsToParent'] as Map<String, Object?>),
          );
    return _PartialCpkOneToOneBidirectionalChildExplicit(
      id: id,
      name: name,
      belongsToParentId: belongsToParentId,
      belongsToParentName: belongsToParentName,
      belongsToParent: belongsToParent,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String name;

  @override
  final String? belongsToParentId;

  @override
  final String? belongsToParentName;

  @override
  final PartialCpkOneToOneBidirectionalParent? belongsToParent;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class CpkOneToOneBidirectionalChildExplicit
    extends PartialCpkOneToOneBidirectionalChildExplicit
    implements
        Model<CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit> {
  factory CpkOneToOneBidirectionalChildExplicit({
    String? id,
    required String name,
    String? belongsToParentId,
    String? belongsToParentName,
    CpkOneToOneBidirectionalParent? belongsToParent,
  }) = _CpkOneToOneBidirectionalChildExplicit;

  const CpkOneToOneBidirectionalChildExplicit._() : super._();

  factory CpkOneToOneBidirectionalChildExplicit.fromJson(
    Map<String, Object?> json,
  ) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'name',
          ))
        : (json['name'] as String);
    final belongsToParentId = json['belongsToParentID'] == null
        ? null
        : (json['belongsToParentID'] as String);
    final belongsToParentName = json['belongsToParentName'] == null
        ? null
        : (json['belongsToParentName'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final belongsToParent = json['belongsToParent'] == null
        ? null
        : CpkOneToOneBidirectionalParent.classType
            .fromJson<CpkOneToOneBidirectionalParent>(
            (json['belongsToParent'] as Map<String, Object?>),
          );
    return _CpkOneToOneBidirectionalChildExplicit._(
      id: id,
      name: name,
      belongsToParentId: belongsToParentId,
      belongsToParentName: belongsToParentName,
      belongsToParent: belongsToParent,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const CpkOneToOneBidirectionalChildExplicitType classType =
      CpkOneToOneBidirectionalChildExplicitType();

  static const CpkOneToOneBidirectionalChildExplicitQueryFields<
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit> _queryFields =
      CpkOneToOneBidirectionalChildExplicitQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'CpkOneToOneBidirectionalChildExplicit',
      'pluralName': 'CpkOneToOneBidirectionalChildExplicits',
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
        'belongsToParentID': {
          'name': 'belongsToParentID',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'belongsToParentName': {
          'name': 'belongsToParentName',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'belongsToParent': {
          'name': 'belongsToParent',
          'type': {'model': 'CpkOneToOneBidirectionalParent'},
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'BelongsTo',
            'associatedType': 'CpkOneToOneBidirectionalParent',
            'targetNames': [
              'belongsToParentID',
              'belongsToParentName',
            ],
          },
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
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': ['name'],
        },
        {
          'type': 'foreign',
          'primaryField': 'belongsToParent',
          'sortKeyFields': [
            'belongsToParentID',
            'belongsToParentName',
          ],
          'name': 'belongsToParent',
        },
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit, String> get ID => $id;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit, String> get NAME => $name;
  @override
  String? get belongsToParentId;

  /// Query field for the [belongsToParentId] field.
  QueryField<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      String?> get $belongsToParentId => _queryFields.$belongsToParentId;

  /// Query field for the [belongsToParentId] field.
  @Deprecated(r'Use $belongsToParentId instead')
  QueryField<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      String?> get BELONGS_TO_PARENT_ID => $belongsToParentId;
  @override
  String? get belongsToParentName;

  /// Query field for the [belongsToParentName] field.
  QueryField<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      String?> get $belongsToParentName => _queryFields.$belongsToParentName;

  /// Query field for the [belongsToParentName] field.
  @Deprecated(r'Use $belongsToParentName instead')
  QueryField<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      String?> get BELONGS_TO_PARENT_NAME => $belongsToParentName;
  @override
  CpkOneToOneBidirectionalParent? get belongsToParent;

  /// Query field for the [belongsToParent] field.
  CpkOneToOneBidirectionalParentQueryFields<
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit>
      get $belongsToParent => _queryFields.$belongsToParent;

  /// Query field for the [belongsToParent] field.
  @Deprecated(r'Use $belongsToParent instead')
  CpkOneToOneBidirectionalParentQueryFields<
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit>
      get BELONGS_TO_PARENT => $belongsToParent;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          CpkOneToOneBidirectionalChildExplicitIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<
          CpkOneToOneBidirectionalChildExplicitIdentifier,
          CpkOneToOneBidirectionalChildExplicit,
          CpkOneToOneBidirectionalChildExplicitIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  CpkOneToOneBidirectionalChildExplicit copyWith({
    String? id,
    String? name,
    String? belongsToParentId,
    String? belongsToParentName,
    CpkOneToOneBidirectionalParent? belongsToParent,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _CpkOneToOneBidirectionalChildExplicit._(
      id: id ?? this.id,
      name: name ?? this.name,
      belongsToParentId: belongsToParentId ?? this.belongsToParentId,
      belongsToParentName: belongsToParentName ?? this.belongsToParentName,
      belongsToParent: belongsToParent ?? this.belongsToParent,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit, T>
        field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'belongsToParentID':
        value = belongsToParentId;
        break;
      case r'belongsToParentName':
        value = belongsToParentName;
        break;
      case r'belongsToParent':
        value = belongsToParent;
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

class _CpkOneToOneBidirectionalChildExplicit
    extends CpkOneToOneBidirectionalChildExplicit {
  _CpkOneToOneBidirectionalChildExplicit({
    String? id,
    required this.name,
    this.belongsToParentId,
    this.belongsToParentName,
    this.belongsToParent,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _CpkOneToOneBidirectionalChildExplicit._({
    required this.id,
    required this.name,
    this.belongsToParentId,
    this.belongsToParentName,
    this.belongsToParent,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String name;

  @override
  final String? belongsToParentId;

  @override
  final String? belongsToParentName;

  @override
  final CpkOneToOneBidirectionalParent? belongsToParent;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteCpkOneToOneBidirectionalChildExplicit
    extends CpkOneToOneBidirectionalChildExplicit
    implements
        RemoteModel<CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit> {
  const RemoteCpkOneToOneBidirectionalChildExplicit._() : super._();
}

class _RemoteCpkOneToOneBidirectionalChildExplicit
    extends RemoteCpkOneToOneBidirectionalChildExplicit {
  const _RemoteCpkOneToOneBidirectionalChildExplicit({
    required this.id,
    required this.name,
    this.belongsToParentId,
    this.belongsToParentName,
    this.belongsToParent,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteCpkOneToOneBidirectionalChildExplicit.fromJson(
    Map<String, Object?> json,
  ) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'name',
          ))
        : (json['name'] as String);
    final belongsToParentId = json['belongsToParentID'] == null
        ? null
        : (json['belongsToParentID'] as String);
    final belongsToParentName = json['belongsToParentName'] == null
        ? null
        : (json['belongsToParentName'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalChildExplicit',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    final belongsToParent = json['belongsToParent'] == null
        ? null
        : CpkOneToOneBidirectionalParent.classType
            .fromJson<RemoteCpkOneToOneBidirectionalParent>(
            (json['belongsToParent'] as Map<String, Object?>),
          );
    return _RemoteCpkOneToOneBidirectionalChildExplicit(
      id: id,
      name: name,
      belongsToParentId: belongsToParentId,
      belongsToParentName: belongsToParentName,
      belongsToParent: belongsToParent,
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
  final String name;

  @override
  final String? belongsToParentId;

  @override
  final String? belongsToParentName;

  @override
  final RemoteCpkOneToOneBidirectionalParent? belongsToParent;

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
