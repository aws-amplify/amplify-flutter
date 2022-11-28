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

library models.post;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

import 'comment.dart';
import 'post_status.dart';

class PostType extends ModelType<String, Post, PartialPost> {
  const PostType();

  @override
  T fromJson<T extends PartialModel<String, Post>>(Map<String, Object?> json) {
    if (T == Post || T == Model<String, Post>) {
      return Post.fromJson(json) as T;
    }
    if (T == RemotePost || T == RemoteModel<String, Post>) {
      return _RemotePost.fromJson(json) as T;
    }
    return _PartialPost.fromJson(json) as T;
  }

  @override
  String get modelName => 'Post';
}

class PostQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const PostQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Post>? _root;

  /// Query field for the [Post.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Post, String>(
        const QueryField<String, Post, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Post.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, String, Post, String>(
        const QueryField<String, Post, String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [Post.rating] field.
  QueryField<ModelIdentifier, M, int> get $rating =>
      NestedQueryField<ModelIdentifier, M, String, Post, int>(
        const QueryField<String, Post, int>(fieldName: 'rating'),
        root: _root,
      );

  /// Query field for the [Post.status] field.
  QueryField<ModelIdentifier, M, PostStatus> get $status =>
      NestedQueryField<ModelIdentifier, M, String, Post, PostStatus>(
        const QueryField<String, Post, PostStatus>(fieldName: 'status'),
        root: _root,
      );

  /// Query field for the [Post.comments] field.
  CommentQueryFields<ModelIdentifier, M> get $comments => CommentQueryFields(
        NestedQueryField<ModelIdentifier, M, String, Post, Comment>(
          const QueryField<String, Post, Comment>(fieldName: 'comments'),
          root: _root,
        ),
      );

  /// Query field for the [Post.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Post, TemporalDateTime>(
        const QueryField<String, Post, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Post.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Post, TemporalDateTime>(
        const QueryField<String, Post, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Post] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Post, String>(
        const QueryField<String, Post, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialPost extends PartialModel<String, Post>
    with AWSEquatable<PartialPost> {
  const PartialPost._();

  String get id;
  String? get title;
  int? get rating;
  PostStatus? get status;
  AsyncModelCollection<String, Comment, PartialComment, PartialComment>?
      get comments;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  PostType get modelType => Post.classType;
  @override
  List<Object?> get props => [
        id,
        title,
        rating,
        status,
        comments,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'status': status?.value,
        'comments': comments?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Post';
}

class _PartialPost extends PartialPost {
  const _PartialPost({
    required this.id,
    this.title,
    this.rating,
    this.status,
    this.comments,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialPost.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null ? null : (json['title'] as String);
    final rating = json['rating'] == null ? null : (json['rating'] as int);
    final status = json['status'] == null
        ? null
        : PostStatus.fromJson((json['status'] as String));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment, PartialComment,
            PartialComment>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment.classType.fromJson<PartialComment>(el),
                )
                .whereType<PartialComment>()
                .toList(),
          );
    return _PartialPost(
      id: id,
      title: title,
      rating: rating,
      status: status,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? title;

  @override
  final int? rating;

  @override
  final PostStatus? status;

  @override
  final AsyncModelCollection<String, Comment, PartialComment, PartialComment>?
      comments;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Post extends PartialPost implements Model<String, Post> {
  factory Post({
    String? id,
    required String title,
    required int rating,
    required PostStatus status,
    List<Comment>? comments,
  }) = _Post;

  const Post._() : super._();

  factory Post.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'Post',
            'rating',
          ))
        : (json['rating'] as int);
    final status = json['status'] == null
        ? (throw ModelFieldError(
            'Post',
            'status',
          ))
        : PostStatus.fromJson((json['status'] as String));
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment, PartialComment,
            Comment>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment.classType.fromJson<Comment>(el),
                )
                .whereType<Comment>()
                .toList(),
          );
    return _Post._(
      id: id,
      title: title,
      rating: rating,
      status: status,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const PostType classType = PostType();

  static const PostQueryFields<String, Post> _queryFields = PostQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'Post',
      'pluralName': 'Posts',
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
        'status': {
          'name': 'status',
          'type': {'enum': 'PostStatus'},
          'isReadOnly': false,
          'authRules': [],
        },
        'comments': {
          'name': 'comments',
          'type': {
            'list': {'model': 'Comment'}
          },
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'HasMany',
            'associatedType': 'Comment',
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
      },
      'authRules': [],
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
  QueryField<String, Post, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Post, String> get ID => $id;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, Post, String> get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, Post, String> get TITLE => $title;
  @override
  int get rating;

  /// Query field for the [rating] field.
  QueryField<String, Post, int> get $rating => _queryFields.$rating;

  /// Query field for the [rating] field.
  @Deprecated(r'Use $rating instead')
  QueryField<String, Post, int> get RATING => $rating;
  @override
  PostStatus get status;

  /// Query field for the [status] field.
  QueryField<String, Post, PostStatus> get $status => _queryFields.$status;

  /// Query field for the [status] field.
  @Deprecated(r'Use $status instead')
  QueryField<String, Post, PostStatus> get STATUS => $status;
  @override
  AsyncModelCollection<String, Comment, PartialComment, Comment>? get comments;

  /// Query field for the [comments] field.
  CommentQueryFields<String, Post> get $comments => _queryFields.$comments;

  /// Query field for the [comments] field.
  @Deprecated(r'Use $comments instead')
  CommentQueryFields<String, Post> get COMMENTS => $comments;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Post, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Post, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Post copyWith({
    String? id,
    String? title,
    int? rating,
    PostStatus? status,
    List<Comment>? comments,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _Post._(
      id: id ?? this.id,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      status: status ?? this.status,
      comments: comments == null
          ? this.comments
          : AsyncModelCollection.fromList(comments),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Post, T> field) {
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
      case r'status':
        value = status;
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
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Post extends Post {
  _Post({
    String? id,
    required this.title,
    required this.rating,
    required this.status,
    List<Comment>? comments,
  })  : id = id ?? uuid(),
        comments =
            comments == null ? null : AsyncModelCollection.fromList(comments),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Post._({
    required this.id,
    required this.title,
    required this.rating,
    required this.status,
    this.comments,
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
  final PostStatus status;

  @override
  final AsyncModelCollection<String, Comment, PartialComment, Comment>?
      comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemotePost extends Post implements RemoteModel<String, Post> {
  const RemotePost._() : super._();
}

class _RemotePost extends RemotePost {
  const _RemotePost({
    required this.id,
    required this.title,
    required this.rating,
    required this.status,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePost.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final rating = json['rating'] == null
        ? (throw ModelFieldError(
            'Post',
            'rating',
          ))
        : (json['rating'] as int);
    final status = json['status'] == null
        ? (throw ModelFieldError(
            'Post',
            'status',
          ))
        : PostStatus.fromJson((json['status'] as String));
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Post',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Post',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Post',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment, PartialComment,
            RemoteComment>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment.classType.fromJson<RemoteComment>(el),
                )
                .whereType<RemoteComment>()
                .toList(),
          );
    return _RemotePost(
      id: id,
      title: title,
      rating: rating,
      status: status,
      comments: comments,
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
  final PostStatus status;

  @override
  final AsyncModelCollection<String, Comment, PartialComment, Comment>?
      comments;

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
