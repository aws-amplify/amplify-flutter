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

library models.model_with_primary_key;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class ModelWithPrimaryKeyType
    extends ModelType<String, ModelWithPrimaryKey, PartialModelWithPrimaryKey> {
  const ModelWithPrimaryKeyType();

  @override
  T fromJson<T extends PartialModel<String, ModelWithPrimaryKey>>(
    Map<String, Object?> json,
  ) {
    if (T == ModelWithPrimaryKey || T == Model<String, ModelWithPrimaryKey>) {
      return ModelWithPrimaryKey.fromJson(json) as T;
    }
    if (T == RemoteModelWithPrimaryKey ||
        T == RemoteModel<String, ModelWithPrimaryKey>) {
      return _RemoteModelWithPrimaryKey.fromJson(json) as T;
    }
    return _PartialModelWithPrimaryKey.fromJson(json) as T;
  }

  @override
  String get modelName => 'ModelWithPrimaryKey';
}

class ModelWithPrimaryKeyQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ModelWithPrimaryKeyQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ModelWithPrimaryKey>? _root;

  /// Query field for the [ModelWithPrimaryKey.productId] field.
  QueryField<ModelIdentifier, M, String> get $productId =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey, String>(
        const QueryField<String, ModelWithPrimaryKey, String>(
          fieldName: 'productID',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey, String>(
        const QueryField<String, ModelWithPrimaryKey, String>(
          fieldName: 'name',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey.content] field.
  QueryField<ModelIdentifier, M, String?> get $content => NestedQueryField<
          ModelIdentifier, M, String, ModelWithPrimaryKey, String?>(
        const QueryField<String, ModelWithPrimaryKey, String?>(
          fieldName: 'content',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey.albumId] field.
  QueryField<ModelIdentifier, M, String> get $albumId =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey, String>(
        const QueryField<String, ModelWithPrimaryKey, String>(
          fieldName: 'albumID',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey.categoryId] field.
  QueryField<ModelIdentifier, M, String> get $categoryId =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey, String>(
        const QueryField<String, ModelWithPrimaryKey, String>(
          fieldName: 'categoryID',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey,
          TemporalDateTime>(
        const QueryField<String, ModelWithPrimaryKey, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey,
          TemporalDateTime>(
        const QueryField<String, ModelWithPrimaryKey, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithPrimaryKey] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithPrimaryKey, String>(
        const QueryField<String, ModelWithPrimaryKey, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialModelWithPrimaryKey
    extends PartialModel<String, ModelWithPrimaryKey>
    with AWSEquatable<PartialModelWithPrimaryKey> {
  const PartialModelWithPrimaryKey._();

  String get productId;
  String? get name;
  String? get content;
  String? get albumId;
  String? get categoryId;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => productId;
  @override
  ModelWithPrimaryKeyType get modelType => ModelWithPrimaryKey.classType;
  @override
  List<Object?> get props => [
        productId,
        name,
        content,
        albumId,
        categoryId,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'productID': productId,
        'name': name,
        'content': content,
        'albumID': albumId,
        'categoryID': categoryId,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ModelWithPrimaryKey';
}

class _PartialModelWithPrimaryKey extends PartialModelWithPrimaryKey {
  const _PartialModelWithPrimaryKey({
    required this.productId,
    this.name,
    this.content,
    this.albumId,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialModelWithPrimaryKey.fromJson(Map<String, Object?> json) {
    final productId = json['productID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'productId',
          ))
        : (json['productID'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final albumId =
        json['albumID'] == null ? null : (json['albumID'] as String);
    final categoryId =
        json['categoryID'] == null ? null : (json['categoryID'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialModelWithPrimaryKey(
      productId: productId,
      name: name,
      content: content,
      albumId: albumId,
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String productId;

  @override
  final String? name;

  @override
  final String? content;

  @override
  final String? albumId;

  @override
  final String? categoryId;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ModelWithPrimaryKey extends PartialModelWithPrimaryKey
    implements Model<String, ModelWithPrimaryKey> {
  factory ModelWithPrimaryKey({
    String? productId,
    required String name,
    String? content,
    required String albumId,
    required String categoryId,
  }) = _ModelWithPrimaryKey;

  const ModelWithPrimaryKey._() : super._();

  factory ModelWithPrimaryKey.fromJson(Map<String, Object?> json) {
    final productId = json['productID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'productId',
          ))
        : (json['productID'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'name',
          ))
        : (json['name'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final albumId = json['albumID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'albumId',
          ))
        : (json['albumID'] as String);
    final categoryId = json['categoryID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'categoryId',
          ))
        : (json['categoryID'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ModelWithPrimaryKey._(
      productId: productId,
      name: name,
      content: content,
      albumId: albumId,
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ModelWithPrimaryKeyType classType = ModelWithPrimaryKeyType();

  static const ModelWithPrimaryKeyQueryFields<String, ModelWithPrimaryKey>
      _queryFields = ModelWithPrimaryKeyQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'ModelWithPrimaryKey',
      'pluralName': 'ModelWithPrimaryKeys',
      'fields': {
        'productID': {
          'name': 'productID',
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
        'content': {
          'name': 'content',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'albumID': {
          'name': 'albumID',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'categoryID': {
          'name': 'categoryID',
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
          'primaryField': 'albumID',
          'sortKeyFields': [],
          'name': 'byAlbum',
          'queryField': 'modelWithPrimaryKeysByAlbumID',
        },
        {
          'type': 'secondary',
          'primaryField': 'categoryID',
          'sortKeyFields': [],
          'name': 'byCategory',
          'queryField': 'modelWithPrimaryKeysByCategoryID',
        },
        {
          'type': 'primary',
          'primaryField': 'productID',
          'sortKeyFields': [],
        },
      ],
    },
  )!;

  @override
  String get productId;

  /// Query field for the [productId] field.
  QueryField<String, ModelWithPrimaryKey, String> get $productId =>
      _queryFields.$productId;

  /// Query field for the [productId] field.
  @Deprecated(r'Use $productId instead')
  QueryField<String, ModelWithPrimaryKey, String> get PRODUCT_ID => $productId;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<String, ModelWithPrimaryKey, String> get $name =>
      _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, ModelWithPrimaryKey, String> get NAME => $name;
  @override
  String? get content;

  /// Query field for the [content] field.
  QueryField<String, ModelWithPrimaryKey, String?> get $content =>
      _queryFields.$content;

  /// Query field for the [content] field.
  @Deprecated(r'Use $content instead')
  QueryField<String, ModelWithPrimaryKey, String?> get CONTENT => $content;
  @override
  String get albumId;

  /// Query field for the [albumId] field.
  QueryField<String, ModelWithPrimaryKey, String> get $albumId =>
      _queryFields.$albumId;

  /// Query field for the [albumId] field.
  @Deprecated(r'Use $albumId instead')
  QueryField<String, ModelWithPrimaryKey, String> get ALBUM_ID => $albumId;
  @override
  String get categoryId;

  /// Query field for the [categoryId] field.
  QueryField<String, ModelWithPrimaryKey, String> get $categoryId =>
      _queryFields.$categoryId;

  /// Query field for the [categoryId] field.
  @Deprecated(r'Use $categoryId instead')
  QueryField<String, ModelWithPrimaryKey, String> get CATEGORY_ID =>
      $categoryId;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ModelWithPrimaryKey, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ModelWithPrimaryKey, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  ModelWithPrimaryKey copyWith({
    String? productId,
    String? name,
    String? content,
    String? albumId,
    String? categoryId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _ModelWithPrimaryKey._(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      content: content ?? this.content,
      albumId: albumId ?? this.albumId,
      categoryId: categoryId ?? this.categoryId,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<String, ModelWithPrimaryKey, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'productID':
        value = productId;
        break;
      case r'name':
        value = name;
        break;
      case r'content':
        value = content;
        break;
      case r'albumID':
        value = albumId;
        break;
      case r'categoryID':
        value = categoryId;
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

class _ModelWithPrimaryKey extends ModelWithPrimaryKey {
  _ModelWithPrimaryKey({
    String? productId,
    required this.name,
    this.content,
    required this.albumId,
    required this.categoryId,
  })  : productId = productId ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ModelWithPrimaryKey._({
    required this.productId,
    required this.name,
    this.content,
    required this.albumId,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String productId;

  @override
  final String name;

  @override
  final String? content;

  @override
  final String albumId;

  @override
  final String categoryId;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteModelWithPrimaryKey extends ModelWithPrimaryKey
    implements RemoteModel<String, ModelWithPrimaryKey> {
  const RemoteModelWithPrimaryKey._() : super._();
}

class _RemoteModelWithPrimaryKey extends RemoteModelWithPrimaryKey {
  const _RemoteModelWithPrimaryKey({
    required this.productId,
    required this.name,
    this.content,
    required this.albumId,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithPrimaryKey.fromJson(Map<String, Object?> json) {
    final productId = json['productID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'productId',
          ))
        : (json['productID'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'name',
          ))
        : (json['name'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final albumId = json['albumID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'albumId',
          ))
        : (json['albumID'] as String);
    final categoryId = json['categoryID'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'categoryId',
          ))
        : (json['categoryID'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithPrimaryKey',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithPrimaryKey(
      productId: productId,
      name: name,
      content: content,
      albumId: albumId,
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String productId;

  @override
  final String name;

  @override
  final String? content;

  @override
  final String albumId;

  @override
  final String categoryId;

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
