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

library models.model_with_explicitly_defined_pk_plus_sort_keys_as_composite_key;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:meta/meta.dart';

@immutable
class ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier
    with
        AWSEquatable<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier({
    required this.modelId,
    required this.title,
    required this.rating,
  });

  final String modelId;

  final String title;

  final int rating;

  @override
  List<Object?> get props => [
        modelId,
        title,
        rating,
      ];
  @override
  Map<String, Object?> toJson() => {
        'modelID': modelId,
        'title': title,
        'rating': rating,
      };
  @override
  String get runtimeTypeName =>
      'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier';
}

class ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyType
    extends ModelType<
        ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
        ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
        PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey> {
  const ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyType();

  @override
  T fromJson<
      T extends PartialModel<
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey>>(
    Map<String, Object?> json,
  ) {
    if (T == ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey ||
        T ==
            Model<
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey>) {
      return ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.fromJson(
        json,
      ) as T;
    }
    if (T == RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey ||
        T ==
            RemoteModel<
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey>) {
      return _RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
          .fromJson(json) as T;
    }
    return _PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
        .fromJson(json) as T;
  }

  @override
  String get modelName =>
      'ModelWithExplicitlyDefinedPKPlusSortKeysAsCompositeKey';
}

class ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyQueryFields<
    ModelIdentifier extends Object, M extends Model<ModelIdentifier, M>> {
  const ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyQueryFields([
    this._root,
  ]);

  final QueryField<ModelIdentifier, M,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey>? _root;

  /// Query field for the [ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.modelId] field.
  QueryField<ModelIdentifier, M, String> get $modelId => NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          String>(
        const QueryField<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
            String>(fieldName: 'modelID'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.title] field.
  QueryField<ModelIdentifier, M, String> get $title => NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          String>(
        const QueryField<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
            String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.rating] field.
  QueryField<ModelIdentifier, M, int> get $rating => NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          int>(
        const QueryField<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
            int>(fieldName: 'rating'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          TemporalDateTime>(
        const QueryField<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
            TemporalDateTime>(fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<
          ModelIdentifier,
          M,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          TemporalDateTime>(
        const QueryField<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
            TemporalDateTime>(fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey] model identifier.
  QueryField<ModelIdentifier, M,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier>
      get $modelIdentifier => NestedQueryField<
              ModelIdentifier,
              M,
              ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
              ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
              ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier>(
            const QueryField<
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
                ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier>(
              fieldName: 'modelIdentifier',
            ),
            root: _root,
          );
}

abstract class PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    extends PartialModel<
        ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
        ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey>
    with
        AWSEquatable<
            PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey> {
  const PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey._();

  String get modelId;
  String get title;
  int get rating;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier
      get modelIdentifier =>
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier(
            modelId: modelId,
            title: title,
            rating: rating,
          );
  @override
  ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyType get modelType =>
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.classType;
  @override
  List<Object?> get props => [
        modelId,
        title,
        rating,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'modelID': modelId,
        'title': title,
        'rating': rating,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName =>
      'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey';
}

class _PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    extends PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey {
  const _PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey({
    required this.modelId,
    required this.title,
    required this.rating,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.fromJson(
    Map<String, Object?> json,
  ) {
    final modelId = json['modelID'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'modelId',
          ))
        : (json['modelID'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'rating',
          ))
        : (json['rating'] as int);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey(
      modelId: modelId,
      title: title,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String modelId;

  @override
  final String title;

  @override
  final int rating;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    extends PartialModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    implements
        Model<ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey> {
  factory ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey({
    String? modelId,
    required String title,
    required int rating,
  }) = _ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey;

  const ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey._() : super._();

  factory ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.fromJson(
    Map<String, Object?> json,
  ) {
    final modelId = json['modelID'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'modelId',
          ))
        : (json['modelID'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'rating',
          ))
        : (json['rating'] as int);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey._(
      modelId: modelId,
      title: title,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyType
      classType = ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyType();

  static const ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyQueryFields<
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey> _queryFields =
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'ModelWithExplicitlyDefinedPKPlusSortKeysAsCompositeKey',
      'pluralName': 'ModelWithExplicitlyDefinedPKPlusSortKeysAsCompositeKeys',
      'fields': {
        'modelID': {
          'name': 'modelID',
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
          'primaryField': 'modelID',
          'sortKeyFields': [
            'title',
            'rating',
          ],
        }
      ],
    },
  )!;

  @override
  String get modelId;

  /// Query field for the [modelId] field.
  QueryField<
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
      String> get $modelId => _queryFields.$modelId;

  /// Query field for the [modelId] field.
  @Deprecated(r'Use $modelId instead')
  QueryField<
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
      String> get MODEL_ID => $modelId;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
      String> get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
      String> get TITLE => $title;
  @override
  int get rating;

  /// Query field for the [rating] field.
  QueryField<
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
      int> get $rating => _queryFields.$rating;

  /// Query field for the [rating] field.
  @Deprecated(r'Use $rating instead')
  QueryField<
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
      ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
      int> get RATING => $rating;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey,
          ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey copyWith({
    String? modelId,
    String? title,
    int? rating,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey._(
      modelId: modelId ?? this.modelId,
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
    QueryField<ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey, T>
        field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'modelID':
        value = modelId;
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

class _ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    extends ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey {
  _ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey({
    String? modelId,
    required this.title,
    required this.rating,
  })  : modelId = modelId ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey._({
    required this.modelId,
    required this.title,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String modelId;

  @override
  final String title;

  @override
  final int rating;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    extends ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    implements
        RemoteModel<
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKeyIdentifier,
            ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey> {
  const RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey._()
      : super._();
}

class _RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey
    extends RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey {
  const _RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey({
    required this.modelId,
    required this.title,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey.fromJson(
    Map<String, Object?> json,
  ) {
    final modelId = json['modelID'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'modelId',
          ))
        : (json['modelID'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'rating',
          ))
        : (json['rating'] as int);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithExplicitlyDefinedPkPlusSortKeysAsCompositeKey(
      modelId: modelId,
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
  final String modelId;

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
