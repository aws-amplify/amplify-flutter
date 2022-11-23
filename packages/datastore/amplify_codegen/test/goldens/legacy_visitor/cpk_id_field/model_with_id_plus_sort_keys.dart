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

library models.model_with_id_plus_sort_keys;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:meta/meta.dart';

@immutable
class ModelWithIdPlusSortKeysIdentifier
    with
        AWSEquatable<ModelWithIdPlusSortKeysIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ModelWithIdPlusSortKeysIdentifier({
    required this.id,
    required this.title,
    required this.rating,
  });

  final String id;

  final String title;

  final int rating;

  @override
  List<Object?> get props => [
        id,
        title,
        rating,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
      };
  @override
  String get runtimeTypeName => 'ModelWithIdPlusSortKeysIdentifier';
}

class ModelWithIdPlusSortKeysType extends ModelType<
    ModelWithIdPlusSortKeysIdentifier,
    ModelWithIdPlusSortKeys,
    PartialModelWithIdPlusSortKeys> {
  const ModelWithIdPlusSortKeysType();

  @override
  T fromJson<
      T extends PartialModel<ModelWithIdPlusSortKeysIdentifier,
          ModelWithIdPlusSortKeys>>(Map<String, Object?> json) {
    if (T == ModelWithIdPlusSortKeys ||
        T ==
            Model<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys>) {
      return ModelWithIdPlusSortKeys.fromJson(json) as T;
    }
    if (T == RemoteModelWithIdPlusSortKeys ||
        T ==
            RemoteModel<ModelWithIdPlusSortKeysIdentifier,
                ModelWithIdPlusSortKeys>) {
      return _RemoteModelWithIdPlusSortKeys.fromJson(json) as T;
    }
    return _PartialModelWithIdPlusSortKeys.fromJson(json) as T;
  }

  @override
  String get modelName => 'ModelWithIDPlusSortKeys';
}

class ModelWithIdPlusSortKeysQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ModelWithIdPlusSortKeysQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ModelWithIdPlusSortKeys>? _root;

  /// Query field for the [ModelWithIdPlusSortKeys.id] field.
  QueryField<ModelIdentifier, M, String> get $id => NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithIdPlusSortKeysIdentifier,
          ModelWithIdPlusSortKeys,
          String>(
        const QueryField<ModelWithIdPlusSortKeysIdentifier,
            ModelWithIdPlusSortKeys, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [ModelWithIdPlusSortKeys.title] field.
  QueryField<ModelIdentifier, M, String> get $title => NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithIdPlusSortKeysIdentifier,
          ModelWithIdPlusSortKeys,
          String>(
        const QueryField<ModelWithIdPlusSortKeysIdentifier,
            ModelWithIdPlusSortKeys, String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [ModelWithIdPlusSortKeys.rating] field.
  QueryField<ModelIdentifier, M, int> get $rating => NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithIdPlusSortKeysIdentifier,
          ModelWithIdPlusSortKeys,
          int>(
        const QueryField<ModelWithIdPlusSortKeysIdentifier,
            ModelWithIdPlusSortKeys, int>(fieldName: 'rating'),
        root: _root,
      );

  /// Query field for the [ModelWithIdPlusSortKeys.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, ModelWithIdPlusSortKeysIdentifier,
          ModelWithIdPlusSortKeys, TemporalDateTime>(
        const QueryField<ModelWithIdPlusSortKeysIdentifier,
            ModelWithIdPlusSortKeys, TemporalDateTime>(fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [ModelWithIdPlusSortKeys.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, ModelWithIdPlusSortKeysIdentifier,
          ModelWithIdPlusSortKeys, TemporalDateTime>(
        const QueryField<ModelWithIdPlusSortKeysIdentifier,
            ModelWithIdPlusSortKeys, TemporalDateTime>(fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [ModelWithIdPlusSortKeys] model identifier.
  QueryField<ModelIdentifier, M, ModelWithIdPlusSortKeysIdentifier>
      get $modelIdentifier => NestedQueryField<
              ModelIdentifier,
              M,
              ModelWithIdPlusSortKeysIdentifier,
              ModelWithIdPlusSortKeys,
              ModelWithIdPlusSortKeysIdentifier>(
            const QueryField<ModelWithIdPlusSortKeysIdentifier,
                ModelWithIdPlusSortKeys, ModelWithIdPlusSortKeysIdentifier>(
              fieldName: 'modelIdentifier',
            ),
            root: _root,
          );
}

abstract class PartialModelWithIdPlusSortKeys extends PartialModel<
    ModelWithIdPlusSortKeysIdentifier,
    ModelWithIdPlusSortKeys> with AWSEquatable<PartialModelWithIdPlusSortKeys> {
  const PartialModelWithIdPlusSortKeys._();

  String get id;
  String get title;
  int get rating;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  ModelWithIdPlusSortKeysIdentifier get modelIdentifier =>
      ModelWithIdPlusSortKeysIdentifier(
        id: id,
        title: title,
        rating: rating,
      );
  @override
  ModelWithIdPlusSortKeysType get modelType =>
      ModelWithIdPlusSortKeys.classType;
  @override
  List<Object?> get props => [
        id,
        title,
        rating,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ModelWithIdPlusSortKeys';
}

class _PartialModelWithIdPlusSortKeys extends PartialModelWithIdPlusSortKeys {
  const _PartialModelWithIdPlusSortKeys({
    required this.id,
    required this.title,
    required this.rating,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialModelWithIdPlusSortKeys.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'rating',
          ))
        : (json['rating'] as int);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialModelWithIdPlusSortKeys(
      id: id,
      title: title,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String title;

  @override
  final int rating;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ModelWithIdPlusSortKeys extends PartialModelWithIdPlusSortKeys
    implements
        Model<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys> {
  factory ModelWithIdPlusSortKeys({
    String? id,
    required String title,
    required int rating,
  }) = _ModelWithIdPlusSortKeys;

  const ModelWithIdPlusSortKeys._() : super._();

  factory ModelWithIdPlusSortKeys.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'rating',
          ))
        : (json['rating'] as int);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ModelWithIdPlusSortKeys._(
      id: id,
      title: title,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ModelWithIdPlusSortKeysType classType =
      ModelWithIdPlusSortKeysType();

  static const ModelWithIdPlusSortKeysQueryFields<
          ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys>
      _queryFields = ModelWithIdPlusSortKeysQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'ModelWithIDPlusSortKeys',
      'pluralName': 'ModelWithIDPlusSortKeys',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'title': {
          'name': 'title',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'rating': {
          'name': 'rating',
          'type': {'scalar': 'Int'},
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
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [
            'title',
            'rating',
          ],
        }
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, String>
      get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, String>
      get ID => $id;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, String>
      get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, String>
      get TITLE => $title;
  @override
  int get rating;

  /// Query field for the [rating] field.
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, int>
      get $rating => _queryFields.$rating;

  /// Query field for the [rating] field.
  @Deprecated(r'Use $rating instead')
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, int>
      get RATING => $rating;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys,
          ModelWithIdPlusSortKeysIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys,
          ModelWithIdPlusSortKeysIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  ModelWithIdPlusSortKeys copyWith({
    String? id,
    String? title,
    int? rating,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _ModelWithIdPlusSortKeys._(
      id: id ?? this.id,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<ModelWithIdPlusSortKeysIdentifier, ModelWithIdPlusSortKeys, T>
        field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'title':
        value = title;
        break;
      case r'rating':
        value = rating;
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

class _ModelWithIdPlusSortKeys extends ModelWithIdPlusSortKeys {
  _ModelWithIdPlusSortKeys({
    String? id,
    required this.title,
    required this.rating,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ModelWithIdPlusSortKeys._({
    required this.id,
    required this.title,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String title;

  @override
  final int rating;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteModelWithIdPlusSortKeys extends ModelWithIdPlusSortKeys
    implements
        RemoteModel<ModelWithIdPlusSortKeysIdentifier,
            ModelWithIdPlusSortKeys> {
  const RemoteModelWithIdPlusSortKeys._() : super._();
}

class _RemoteModelWithIdPlusSortKeys extends RemoteModelWithIdPlusSortKeys {
  const _RemoteModelWithIdPlusSortKeys({
    required this.id,
    required this.title,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithIdPlusSortKeys.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'rating',
          ))
        : (json['rating'] as int);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithIdPlusSortKeys',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithIdPlusSortKeys(
      id: id,
      title: title,
      rating: rating,
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
  final int rating;

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
