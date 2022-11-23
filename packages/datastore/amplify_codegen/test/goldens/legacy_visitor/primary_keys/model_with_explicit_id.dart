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

// ignore_for_file: non_constant_identifier_names

library models.model_with_explicit_id;

import 'package:amplify_core/amplify_core.dart';

class ModelWithExplicitIdType
    extends ModelType<String, ModelWithExplicitId, PartialModelWithExplicitId> {
  const ModelWithExplicitIdType();

  @override
  T fromJson<T extends PartialModel<String, ModelWithExplicitId>>(
    Map<String, Object?> json,
  ) {
    if (T == ModelWithExplicitId || T == Model<String, ModelWithExplicitId>) {
      return ModelWithExplicitId.fromJson(json) as T;
    }
    if (T == RemoteModelWithExplicitId ||
        T == RemoteModel<String, ModelWithExplicitId>) {
      return _RemoteModelWithExplicitId.fromJson(json) as T;
    }
    return _PartialModelWithExplicitId.fromJson(json) as T;
  }

  @override
  String get modelName => 'ModelWithExplicitID';
}

class ModelWithExplicitIdQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ModelWithExplicitIdQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ModelWithExplicitId>? _root;

  /// Query field for the [ModelWithExplicitId.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitId, String>(
        const QueryField<String, ModelWithExplicitId, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitId.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitId, String>(
        const QueryField<String, ModelWithExplicitId, String>(
          fieldName: 'title',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitId.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitId,
          TemporalDateTime>(
        const QueryField<String, ModelWithExplicitId, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitId.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitId,
          TemporalDateTime>(
        const QueryField<String, ModelWithExplicitId, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitId] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitId, String>(
        const QueryField<String, ModelWithExplicitId, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialModelWithExplicitId
    extends PartialModel<String, ModelWithExplicitId>
    with AWSEquatable<PartialModelWithExplicitId> {
  const PartialModelWithExplicitId._();

  String get id;
  String? get title;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ModelWithExplicitIdType get modelType => ModelWithExplicitId.classType;
  @override
  List<Object?> get props => [
        id,
        title,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ModelWithExplicitId';
}

class _PartialModelWithExplicitId extends PartialModelWithExplicitId {
  const _PartialModelWithExplicitId({
    required this.id,
    this.title,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialModelWithExplicitId.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null ? null : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialModelWithExplicitId(
      id: id,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? title;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ModelWithExplicitId extends PartialModelWithExplicitId
    implements Model<String, ModelWithExplicitId> {
  factory ModelWithExplicitId({
    String? id,
    required String title,
  }) = _ModelWithExplicitId;

  const ModelWithExplicitId._() : super._();

  factory ModelWithExplicitId.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ModelWithExplicitId._(
      id: id,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ModelWithExplicitIdType classType = ModelWithExplicitIdType();

  static const ModelWithExplicitIdQueryFields<String, ModelWithExplicitId>
      _queryFields = ModelWithExplicitIdQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, ModelWithExplicitId, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, ModelWithExplicitId, String> get ID => $id;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, ModelWithExplicitId, String> get $title =>
      _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, ModelWithExplicitId, String> get TITLE => $title;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ModelWithExplicitId, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ModelWithExplicitId, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  @override
  T valueFor<T extends Object?>(
    QueryField<String, ModelWithExplicitId, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'title':
        value = title;
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

class _ModelWithExplicitId extends ModelWithExplicitId {
  _ModelWithExplicitId({
    String? id,
    required this.title,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ModelWithExplicitId._({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String title;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteModelWithExplicitId extends ModelWithExplicitId
    implements RemoteModel<String, ModelWithExplicitId> {
  const RemoteModelWithExplicitId._() : super._();
}

class _RemoteModelWithExplicitId extends RemoteModelWithExplicitId {
  const _RemoteModelWithExplicitId({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithExplicitId.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitId',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithExplicitId(
      id: id,
      title: title,
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
  final String title;

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
