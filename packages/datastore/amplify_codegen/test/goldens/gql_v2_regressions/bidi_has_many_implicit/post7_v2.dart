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

library models.post7_v2;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

import 'blog7_v2.dart';
import 'comment7_v2.dart';

class Post7V2Type extends ModelType<String, Post7V2, PartialPost7V2> {
  const Post7V2Type();

  @override
  T fromJson<T extends PartialModel<String, Post7V2>>(
    Map<String, Object?> json,
  ) {
    if (T == Post7V2 || T == Model<String, Post7V2>) {
      return Post7V2.fromJson(json) as T;
    }
    if (T == RemotePost7V2 || T == RemoteModel<String, Post7V2>) {
      return _RemotePost7V2.fromJson(json) as T;
    }
    return _PartialPost7V2.fromJson(json) as T;
  }

  @override
  String get modelName => 'Post7V2';
}

class Post7V2QueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const Post7V2QueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Post7V2>? _root;

  /// Query field for the [Post7V2.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Post7V2, String>(
        const QueryField<String, Post7V2, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Post7V2.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, String, Post7V2, String>(
        const QueryField<String, Post7V2, String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [Post7V2.blog] field.
  Blog7V2QueryFields<ModelIdentifier, M> get $blog => Blog7V2QueryFields(
        NestedQueryField<ModelIdentifier, M, String, Post7V2, Blog7V2>(
          const QueryField<String, Post7V2, Blog7V2>(fieldName: 'blog'),
          root: _root,
        ),
      );

  /// Query field for the [Post7V2.comments] field.
  Comment7V2QueryFields<ModelIdentifier, M> get $comments =>
      Comment7V2QueryFields(
        NestedQueryField<ModelIdentifier, M, String, Post7V2, Comment7V2>(
          const QueryField<String, Post7V2, Comment7V2>(fieldName: 'comments'),
          root: _root,
        ),
      );

  /// Query field for the [Post7V2.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Post7V2, TemporalDateTime>(
        const QueryField<String, Post7V2, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Post7V2.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Post7V2, TemporalDateTime>(
        const QueryField<String, Post7V2, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Post7V2.blog7V2PostsId] field.
  QueryField<ModelIdentifier, M, String?> get $blog7V2PostsId =>
      NestedQueryField<ModelIdentifier, M, String, Post7V2, String?>(
        const QueryField<String, Post7V2, String?>(fieldName: 'blog7V2PostsId'),
        root: _root,
      );

  /// Query field for the [Post7V2] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Post7V2, String>(
        const QueryField<String, Post7V2, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialPost7V2 extends PartialModel<String, Post7V2>
    with AWSEquatable<PartialPost7V2> {
  const PartialPost7V2._();

  String get id;
  String? get title;
  PartialBlog7V2? get blog;
  AsyncModelCollection<String, Comment7V2, PartialComment7V2,
      PartialComment7V2>? get comments;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get blog7V2PostsId;
  @override
  String get modelIdentifier => id;
  @override
  Post7V2Type get modelType => Post7V2.classType;
  @override
  List<Object?> get props => [
        id,
        title,
        blog,
        comments,
        createdAt,
        updatedAt,
        blog7V2PostsId,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'blog': blog?.toJson(),
        'comments': comments?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'blog7V2PostsId': blog7V2PostsId,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Post7V2';
}

class _PartialPost7V2 extends PartialPost7V2 {
  const _PartialPost7V2({
    required this.id,
    this.title,
    this.blog,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.blog7V2PostsId,
  }) : super._();

  factory _PartialPost7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post7V2',
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
    final blog7V2PostsId = json['blog7V2PostsId'] == null
        ? null
        : (json['blog7V2PostsId'] as String);
    final blog = json['blog'] == null
        ? null
        : Blog7V2.classType
            .fromJson<PartialBlog7V2>((json['blog'] as Map<String, Object?>));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment7V2, PartialComment7V2,
            PartialComment7V2>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment7V2.classType.fromJson<PartialComment7V2>(el),
                )
                .whereType<PartialComment7V2>()
                .toList(),
          );
    return _PartialPost7V2(
      id: id,
      title: title,
      blog: blog,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      blog7V2PostsId: blog7V2PostsId,
    );
  }

  @override
  final String id;

  @override
  final String? title;

  @override
  final PartialBlog7V2? blog;

  @override
  final AsyncModelCollection<String, Comment7V2, PartialComment7V2,
      PartialComment7V2>? comments;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? blog7V2PostsId;
}

abstract class Post7V2 extends PartialPost7V2
    implements Model<String, Post7V2> {
  factory Post7V2({
    String? id,
    required String title,
    Blog7V2? blog,
    List<Comment7V2>? comments,
  }) = _Post7V2;

  const Post7V2._() : super._();

  factory Post7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final blog7V2PostsId = json['blog7V2PostsId'] == null
        ? null
        : (json['blog7V2PostsId'] as String);
    final blog = json['blog'] == null
        ? null
        : Blog7V2.classType
            .fromJson<Blog7V2>((json['blog'] as Map<String, Object?>));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment7V2, PartialComment7V2,
            Comment7V2>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment7V2.classType.fromJson<Comment7V2>(el),
                )
                .whereType<Comment7V2>()
                .toList(),
          );
    return _Post7V2._(
      id: id,
      title: title,
      blog: blog,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      blog7V2PostsId: blog7V2PostsId,
    );
  }

  static const Post7V2Type classType = Post7V2Type();

  static const Post7V2QueryFields<String, Post7V2> _queryFields =
      Post7V2QueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'Post7V2',
      'pluralName': 'Post7V2s',
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
        'blog': {
          'name': 'blog',
          'type': {'model': 'Blog7V2'},
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'BelongsTo',
            'associatedType': 'Blog7V2',
            'targetNames': ['blog7V2PostsId'],
          },
        },
        'comments': {
          'name': 'comments',
          'type': {
            'list': {'model': 'Comment7V2'}
          },
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'HasMany',
            'associatedType': 'Comment7V2',
            'associatedFields': ['post'],
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
        'blog7V2PostsId': {
          'name': 'blog7V2PostsId',
          'type': {'scalar': 'ID'},
          'isReadOnly': true,
          'authRules': [],
        },
      },
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        },
        {
          'type': 'foreign',
          'primaryField': 'blog',
          'sortKeyFields': ['blog7V2PostsId'],
          'name': 'blog',
        },
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Post7V2, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Post7V2, String> get ID => $id;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, Post7V2, String> get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, Post7V2, String> get TITLE => $title;
  @override
  Blog7V2? get blog;

  /// Query field for the [blog] field.
  Blog7V2QueryFields<String, Post7V2> get $blog => _queryFields.$blog;

  /// Query field for the [blog] field.
  @Deprecated(r'Use $blog instead')
  Blog7V2QueryFields<String, Post7V2> get BLOG => $blog;
  @override
  AsyncModelCollection<String, Comment7V2, PartialComment7V2, Comment7V2>?
      get comments;

  /// Query field for the [comments] field.
  Comment7V2QueryFields<String, Post7V2> get $comments =>
      _queryFields.$comments;

  /// Query field for the [comments] field.
  @Deprecated(r'Use $comments instead')
  Comment7V2QueryFields<String, Post7V2> get COMMENTS => $comments;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get blog7V2PostsId;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Post7V2, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Post7V2, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Post7V2 copyWith({
    String? id,
    String? title,
    Blog7V2? blog,
    List<Comment7V2>? comments,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? blog7V2PostsId,
  }) {
    return _Post7V2._(
      id: id ?? this.id,
      title: title ?? this.title,
      blog: blog ?? this.blog,
      comments: comments == null
          ? this.comments
          : AsyncModelCollection.fromList(comments),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      blog7V2PostsId: blog7V2PostsId ?? this.blog7V2PostsId,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Post7V2, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'title':
        value = title;
        break;
      case r'blog':
        value = blog;
        break;
      case r'comments':
        value = comments;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'blog7V2PostsId':
        value = blog7V2PostsId;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Post7V2 extends Post7V2 {
  _Post7V2({
    String? id,
    required this.title,
    this.blog,
    List<Comment7V2>? comments,
  })  : id = id ?? uuid(),
        comments =
            comments == null ? null : AsyncModelCollection.fromList(comments),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        blog7V2PostsId = blog?.id,
        super._();

  const _Post7V2._({
    required this.id,
    required this.title,
    this.blog,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    this.blog7V2PostsId,
  }) : super._();

  @override
  final String id;

  @override
  final String title;

  @override
  final Blog7V2? blog;

  @override
  final AsyncModelCollection<String, Comment7V2, PartialComment7V2, Comment7V2>?
      comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? blog7V2PostsId;
}

abstract class RemotePost7V2 extends Post7V2
    implements RemoteModel<String, Post7V2> {
  const RemotePost7V2._() : super._();
}

class _RemotePost7V2 extends RemotePost7V2 {
  const _RemotePost7V2({
    required this.id,
    required this.title,
    this.blog,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    this.blog7V2PostsId,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePost7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final blog7V2PostsId = json['blog7V2PostsId'] == null
        ? null
        : (json['blog7V2PostsId'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Post7V2',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    final blog = json['blog'] == null
        ? null
        : Blog7V2.classType
            .fromJson<RemoteBlog7V2>((json['blog'] as Map<String, Object?>));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment7V2, PartialComment7V2,
            RemoteComment7V2>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment7V2.classType.fromJson<RemoteComment7V2>(el),
                )
                .whereType<RemoteComment7V2>()
                .toList(),
          );
    return _RemotePost7V2(
      id: id,
      title: title,
      blog: blog,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      blog7V2PostsId: blog7V2PostsId,
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
  final RemoteBlog7V2? blog;

  @override
  final AsyncModelCollection<String, Comment7V2, PartialComment7V2, Comment7V2>?
      comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? blog7V2PostsId;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
