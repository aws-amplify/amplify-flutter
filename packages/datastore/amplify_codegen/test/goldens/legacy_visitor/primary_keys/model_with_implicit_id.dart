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

library models.model_with_implicit_id;

import 'package:amplify_core/amplify_core.dart';

class ModelWithImplicitIdType
    extends ModelType<String, ModelWithImplicitId, PartialModelWithImplicitId> {
  const ModelWithImplicitIdType();

  @override
  T fromJson<T extends PartialModel<String, ModelWithImplicitId>>(
    Map<String, Object?> json,
  ) {
    if (T == ModelWithImplicitId || T == Model<String, ModelWithImplicitId>) {
      return ModelWithImplicitId.fromJson(json) as T;
    }
    if (T == RemoteModelWithImplicitId ||
        T == RemoteModel<String, ModelWithImplicitId>) {
      return _RemoteModelWithImplicitId.fromJson(json) as T;
    }
    return _PartialModelWithImplicitId.fromJson(json) as T;
  }

  @override
  String get modelName => 'ModelWithImplicitID';
}

class ModelWithImplicitIdQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ModelWithImplicitIdQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ModelWithImplicitId>? _root;

  /// Query field for the [ModelWithImplicitId.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithImplicitId, String>(
        const QueryField<String, ModelWithImplicitId, String>(
          fieldName: 'title',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithImplicitId.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithImplicitId,
          TemporalDateTime>(
        const QueryField<String, ModelWithImplicitId, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithImplicitId.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithImplicitId,
          TemporalDateTime>(
        const QueryField<String, ModelWithImplicitId, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithImplicitId.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithImplicitId, String>(
        const QueryField<String, ModelWithImplicitId, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [ModelWithImplicitId] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithImplicitId, String>(
        const QueryField<String, ModelWithImplicitId, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialModelWithImplicitId
    extends PartialModel<String, ModelWithImplicitId>
    with AWSEquatable<PartialModelWithImplicitId> {
  const PartialModelWithImplicitId._();

  String? get title;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  ModelWithImplicitIdType get modelType => ModelWithImplicitId.classType;
  @override
  List<Object?> get props => [
        title,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'title': title,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ModelWithImplicitId';
}

class _PartialModelWithImplicitId extends PartialModelWithImplicitId {
  const _PartialModelWithImplicitId({
    this.title,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialModelWithImplicitId.fromJson(Map<String, Object?> json) {
    final title = json['title'] == null ? null : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'id',
          ))
        : (json['id'] as String);
    return _PartialModelWithImplicitId(
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  @override
  final String? title;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class ModelWithImplicitId extends PartialModelWithImplicitId
    implements Model<String, ModelWithImplicitId> {
  factory ModelWithImplicitId({
    required String title,
    String? id,
  }) = _ModelWithImplicitId;

  const ModelWithImplicitId._() : super._();

  factory ModelWithImplicitId.fromJson(Map<String, Object?> json) {
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'id',
          ))
        : (json['id'] as String);
    return _ModelWithImplicitId._(
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  static const ModelWithImplicitIdType classType = ModelWithImplicitIdType();

  static const ModelWithImplicitIdQueryFields<String, ModelWithImplicitId>
      _queryFields = ModelWithImplicitIdQueryFields();

  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, ModelWithImplicitId, String> get $title =>
      _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, ModelWithImplicitId, String> get TITLE => $title;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, ModelWithImplicitId, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, ModelWithImplicitId, String> get ID => $id;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ModelWithImplicitId, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ModelWithImplicitId, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  @override
  T valueFor<T extends Object?>(
    QueryField<String, ModelWithImplicitId, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'title':
        value = title;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'id':
        value = id;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _ModelWithImplicitId extends ModelWithImplicitId {
  _ModelWithImplicitId({
    required this.title,
    String? id,
  })  : createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        id = id ?? uuid(),
        super._();

  const _ModelWithImplicitId._({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  }) : super._();

  @override
  final String title;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;
}

abstract class RemoteModelWithImplicitId extends ModelWithImplicitId
    implements RemoteModel<String, ModelWithImplicitId> {
  const RemoteModelWithImplicitId._() : super._();
}

class _RemoteModelWithImplicitId extends RemoteModelWithImplicitId {
  const _RemoteModelWithImplicitId({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithImplicitId.fromJson(Map<String, Object?> json) {
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'id',
          ))
        : (json['id'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithImplicitId',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithImplicitId(
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String title;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
