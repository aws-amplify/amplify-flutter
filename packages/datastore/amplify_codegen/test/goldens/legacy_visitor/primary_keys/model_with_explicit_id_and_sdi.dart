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

library models.model_with_explicit_id_and_sdi;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class ModelWithExplicitIdAndSdiType extends ModelType<String,
    ModelWithExplicitIdAndSdi, PartialModelWithExplicitIdAndSdi> {
  const ModelWithExplicitIdAndSdiType();

  @override
  T fromJson<T extends PartialModel<String, ModelWithExplicitIdAndSdi>>(
    Map<String, Object?> json,
  ) {
    if (T == ModelWithExplicitIdAndSdi ||
        T == Model<String, ModelWithExplicitIdAndSdi>) {
      return ModelWithExplicitIdAndSdi.fromJson(json) as T;
    }
    if (T == RemoteModelWithExplicitIdAndSdi ||
        T == RemoteModel<String, ModelWithExplicitIdAndSdi>) {
      return _RemoteModelWithExplicitIdAndSdi.fromJson(json) as T;
    }
    return _PartialModelWithExplicitIdAndSdi.fromJson(json) as T;
  }

  @override
  String get modelName => 'ModelWithExplicitIDAndSDI';
}

class ModelWithExplicitIdAndSdiQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ModelWithExplicitIdAndSdiQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ModelWithExplicitIdAndSdi>? _root;

  /// Query field for the [ModelWithExplicitIdAndSdi.id] field.
  QueryField<ModelIdentifier, M, String> get $id => NestedQueryField<
          ModelIdentifier, M, String, ModelWithExplicitIdAndSdi, String>(
        const QueryField<String, ModelWithExplicitIdAndSdi, String>(
          fieldName: 'id',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitIdAndSdi.parentId] field.
  QueryField<ModelIdentifier, M, String?> get $parentId => NestedQueryField<
          ModelIdentifier, M, String, ModelWithExplicitIdAndSdi, String?>(
        const QueryField<String, ModelWithExplicitIdAndSdi, String?>(
          fieldName: 'parentID',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitIdAndSdi.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitIdAndSdi,
          TemporalDateTime>(
        const QueryField<String, ModelWithExplicitIdAndSdi, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitIdAndSdi.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitIdAndSdi,
          TemporalDateTime>(
        const QueryField<String, ModelWithExplicitIdAndSdi, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitIdAndSdi] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitIdAndSdi,
          String>(
        const QueryField<String, ModelWithExplicitIdAndSdi, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialModelWithExplicitIdAndSdi
    extends PartialModel<String, ModelWithExplicitIdAndSdi>
    with AWSEquatable<PartialModelWithExplicitIdAndSdi> {
  const PartialModelWithExplicitIdAndSdi._();

  String get id;
  String? get parentId;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ModelWithExplicitIdAndSdiType get modelType =>
      ModelWithExplicitIdAndSdi.classType;
  @override
  List<Object?> get props => [
        id,
        parentId,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'parentID': parentId,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ModelWithExplicitIdAndSdi';
}

class _PartialModelWithExplicitIdAndSdi
    extends PartialModelWithExplicitIdAndSdi {
  const _PartialModelWithExplicitIdAndSdi({
    required this.id,
    this.parentId,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialModelWithExplicitIdAndSdi.fromJson(
    Map<String, Object?> json,
  ) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'id',
          ))
        : (json['id'] as String);
    final parentId =
        json['parentID'] == null ? null : (json['parentID'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialModelWithExplicitIdAndSdi(
      id: id,
      parentId: parentId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? parentId;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ModelWithExplicitIdAndSdi
    extends PartialModelWithExplicitIdAndSdi
    implements Model<String, ModelWithExplicitIdAndSdi> {
  factory ModelWithExplicitIdAndSdi({
    String? id,
    String? parentId,
  }) = _ModelWithExplicitIdAndSdi;

  const ModelWithExplicitIdAndSdi._() : super._();

  factory ModelWithExplicitIdAndSdi.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'id',
          ))
        : (json['id'] as String);
    final parentId =
        json['parentID'] == null ? null : (json['parentID'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ModelWithExplicitIdAndSdi._(
      id: id,
      parentId: parentId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ModelWithExplicitIdAndSdiType classType =
      ModelWithExplicitIdAndSdiType();

  static const ModelWithExplicitIdAndSdiQueryFields<String,
          ModelWithExplicitIdAndSdi> _queryFields =
      ModelWithExplicitIdAndSdiQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'ModelWithExplicitIDAndSDI',
      'pluralName': 'ModelWithExplicitIDAndSDIs',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'parentID': {
          'name': 'parentID',
          'type': {'scalar': 'ID'},
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
      'authRules': [],
      'indexes': [
        {
          'type': 'secondary',
          'primaryField': 'parentID',
          'sortKeyFields': [],
          'name': 'byParent',
          'queryField': 'modelWithExplicitIDAndSDIsByParentID',
        },
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        },
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, ModelWithExplicitIdAndSdi, String> get $id =>
      _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, ModelWithExplicitIdAndSdi, String> get ID => $id;
  @override
  String? get parentId;

  /// Query field for the [parentId] field.
  QueryField<String, ModelWithExplicitIdAndSdi, String?> get $parentId =>
      _queryFields.$parentId;

  /// Query field for the [parentId] field.
  @Deprecated(r'Use $parentId instead')
  QueryField<String, ModelWithExplicitIdAndSdi, String?> get PARENT_ID =>
      $parentId;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ModelWithExplicitIdAndSdi, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ModelWithExplicitIdAndSdi, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  ModelWithExplicitIdAndSdi copyWith({
    String? id,
    String? parentId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _ModelWithExplicitIdAndSdi._(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<String, ModelWithExplicitIdAndSdi, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'parentID':
        value = parentId;
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

class _ModelWithExplicitIdAndSdi extends ModelWithExplicitIdAndSdi {
  _ModelWithExplicitIdAndSdi({
    String? id,
    this.parentId,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ModelWithExplicitIdAndSdi._({
    required this.id,
    this.parentId,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String? parentId;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteModelWithExplicitIdAndSdi extends ModelWithExplicitIdAndSdi
    implements RemoteModel<String, ModelWithExplicitIdAndSdi> {
  const RemoteModelWithExplicitIdAndSdi._() : super._();
}

class _RemoteModelWithExplicitIdAndSdi extends RemoteModelWithExplicitIdAndSdi {
  const _RemoteModelWithExplicitIdAndSdi({
    required this.id,
    this.parentId,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithExplicitIdAndSdi.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'id',
          ))
        : (json['id'] as String);
    final parentId =
        json['parentID'] == null ? null : (json['parentID'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitIdAndSdi',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithExplicitIdAndSdi(
      id: id,
      parentId: parentId,
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
  final String? parentId;

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
