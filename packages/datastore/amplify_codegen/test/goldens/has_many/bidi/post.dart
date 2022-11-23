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

library models.post;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'comment.dart';

@immutable
class PostIdentifier
    with
        AWSEquatable<PostIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const PostIdentifier({
    required this.postId,
    required this.title,
  });

  final String postId;

  final String title;

  @override
  List<Object?> get props => [
        postId,
        title,
      ];
  @override
  Map<String, Object?> toJson() => {
        'postId': postId,
        'title': title,
      };
  @override
  String get runtimeTypeName => 'PostIdentifier';
}

class PostType extends ModelType<PostIdentifier, Post, PartialPost> {
  const PostType();

  @override
  T fromJson<T extends PartialModel<PostIdentifier, Post>>(
    Map<String, Object?> json,
  ) {
    if (T == Post || T == Model<PostIdentifier, Post>) {
      return Post.fromJson(json) as T;
    }
    if (T == RemotePost || T == RemoteModel<PostIdentifier, Post>) {
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

  /// Query field for the [Post.postId] field.
  QueryField<ModelIdentifier, M, String> get $postId =>
      NestedQueryField<ModelIdentifier, M, PostIdentifier, Post, String>(
        const QueryField<PostIdentifier, Post, String>(fieldName: 'postId'),
        root: _root,
      );

  /// Query field for the [Post.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, PostIdentifier, Post, String>(
        const QueryField<PostIdentifier, Post, String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [Post.comments] field.
  CommentQueryFields<ModelIdentifier, M> get $comments => CommentQueryFields(
        NestedQueryField<ModelIdentifier, M, PostIdentifier, Post, Comment>(
          const QueryField<PostIdentifier, Post, Comment>(
              fieldName: 'comments'),
          root: _root,
        ),
      );

  /// Query field for the [Post.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, PostIdentifier, Post,
          TemporalDateTime>(
        const QueryField<PostIdentifier, Post, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Post.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, PostIdentifier, Post,
          TemporalDateTime>(
        const QueryField<PostIdentifier, Post, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Post] model identifier.
  QueryField<ModelIdentifier, M, PostIdentifier> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, PostIdentifier, Post,
          PostIdentifier>(
        const QueryField<PostIdentifier, Post, PostIdentifier>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialPost extends PartialModel<PostIdentifier, Post>
    with AWSEquatable<PartialPost> {
  const PartialPost._();

  String get postId;
  String get title;
  AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
      PartialComment>? get comments;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  PostIdentifier get modelIdentifier => PostIdentifier(
        postId: postId,
        title: title,
      );
  @override
  PostType get modelType => Post.classType;
  @override
  List<Object?> get props => [
        postId,
        title,
        comments,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'postId': postId,
        'title': title,
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
    required this.postId,
    required this.title,
    this.comments,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialPost.fromJson(Map<String, Object?> json) {
    final postId = json['postId'] == null
        ? (throw ModelFieldError(
            'Post',
            'postId',
          ))
        : (json['postId'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
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
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialPost(
      postId: postId,
      title: title,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String postId;

  @override
  final String title;

  @override
  final AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
      PartialComment>? comments;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Post extends PartialPost implements Model<PostIdentifier, Post> {
  factory Post({
    String? postId,
    required String title,
    List<Comment>? comments,
  }) = _Post;

  const Post._() : super._();

  factory Post.fromJson(Map<String, Object?> json) {
    final postId = json['postId'] == null
        ? (throw ModelFieldError(
            'Post',
            'postId',
          ))
        : (json['postId'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
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
    return _Post._(
      postId: postId,
      title: title,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const PostType classType = PostType();

  static const PostQueryFields<PostIdentifier, Post> _queryFields =
      PostQueryFields();

  @override
  String get postId;

  /// Query field for the [postId] field.
  QueryField<PostIdentifier, Post, String> get $postId => _queryFields.$postId;

  /// Query field for the [postId] field.
  @Deprecated(r'Use $postId instead')
  QueryField<PostIdentifier, Post, String> get POST_ID => $postId;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<PostIdentifier, Post, String> get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<PostIdentifier, Post, String> get TITLE => $title;
  @override
  AsyncModelCollection<CommentIdentifier, Comment, PartialComment, Comment>?
      get comments;

  /// Query field for the [comments] field.
  CommentQueryFields<PostIdentifier, Post> get $comments =>
      _queryFields.$comments;

  /// Query field for the [comments] field.
  @Deprecated(r'Use $comments instead')
  CommentQueryFields<PostIdentifier, Post> get COMMENTS => $comments;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<PostIdentifier, Post, PostIdentifier> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<PostIdentifier, Post, PostIdentifier> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  Post copyWith({
    String? postId,
    String? title,
    List<Comment>? comments,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _Post._(
      postId: postId ?? this.postId,
      title: title ?? this.title,
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
  T valueFor<T extends Object?>(QueryField<PostIdentifier, Post, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'postId':
        value = postId;
        break;
      case r'title':
        value = title;
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
    String? postId,
    required this.title,
    List<Comment>? comments,
  })  : postId = postId ?? uuid(),
        comments =
            comments == null ? null : AsyncModelCollection.fromList(comments),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Post._({
    required this.postId,
    required this.title,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String postId;

  @override
  final String title;

  @override
  final AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
      Comment>? comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemotePost extends Post
    implements RemoteModel<PostIdentifier, Post> {
  const RemotePost._() : super._();
}

class _RemotePost extends RemotePost {
  const _RemotePost({
    required this.postId,
    required this.title,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePost.fromJson(Map<String, Object?> json) {
    final postId = json['postId'] == null
        ? (throw ModelFieldError(
            'Post',
            'postId',
          ))
        : (json['postId'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post',
            'title',
          ))
        : (json['title'] as String);
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
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
    return _RemotePost(
      postId: postId,
      title: title,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String postId;

  @override
  final String title;

  @override
  final AsyncModelCollection<CommentIdentifier, Comment, PartialComment,
      RemoteComment>? comments;

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
