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

library models.comment;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'post.dart';

@immutable
class CommentIdentifier
    with
        AWSEquatable<CommentIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const CommentIdentifier({
    required this.commentId,
    required this.content,
  });

  final String commentId;

  final String content;

  @override
  List<Object?> get props => [
        commentId,
        content,
      ];
  @override
  Map<String, Object?> toJson() => {
        'commentId': commentId,
        'content': content,
      };
  @override
  String get runtimeTypeName => 'CommentIdentifier';
}

class CommentType
    extends ModelType<CommentIdentifier, Comment, PartialComment> {
  const CommentType();

  @override
  T fromJson<T extends PartialModel<CommentIdentifier, Comment>>(
    Map<String, Object?> json,
  ) {
    if (T == Comment || T == Model<CommentIdentifier, Comment>) {
      return Comment.fromJson(json) as T;
    }
    if (T == RemoteComment || T == RemoteModel<CommentIdentifier, Comment>) {
      return _RemoteComment.fromJson(json) as T;
    }
    return _PartialComment.fromJson(json) as T;
  }

  @override
  String get modelName => 'Comment';
}

class CommentQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const CommentQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Comment>? _root;

  /// Query field for the [Comment.commentId] field.
  QueryField<ModelIdentifier, M, String> get $commentId =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String>(
        const QueryField<CommentIdentifier, Comment, String>(
          fieldName: 'commentId',
        ),
        root: _root,
      );

  /// Query field for the [Comment.content] field.
  QueryField<ModelIdentifier, M, String> get $content =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String>(
        const QueryField<CommentIdentifier, Comment, String>(
          fieldName: 'content',
        ),
        root: _root,
      );

  /// Query field for the [Comment.post] field.
  PostQueryFields<ModelIdentifier, M> get $post => PostQueryFields(
        NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, Post>(
          const QueryField<CommentIdentifier, Comment, Post>(fieldName: 'post'),
          root: _root,
        ),
      );

  /// Query field for the [Comment.postId] field.
  QueryField<ModelIdentifier, M, String> get $postId =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String>(
        const QueryField<CommentIdentifier, Comment, String>(
          fieldName: 'postId',
        ),
        root: _root,
      );

  /// Query field for the [Comment.postTitle] field.
  QueryField<ModelIdentifier, M, String> get $postTitle =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String>(
        const QueryField<CommentIdentifier, Comment, String>(
          fieldName: 'postTitle',
        ),
        root: _root,
      );

  /// Query field for the [Comment.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment,
          TemporalDateTime>(
        const QueryField<CommentIdentifier, Comment, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Comment.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment,
          TemporalDateTime>(
        const QueryField<CommentIdentifier, Comment, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Comment] model identifier.
  QueryField<ModelIdentifier, M, CommentIdentifier> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment,
          CommentIdentifier>(
        const QueryField<CommentIdentifier, Comment, CommentIdentifier>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialComment extends PartialModel<CommentIdentifier, Comment>
    with AWSEquatable<PartialComment> {
  const PartialComment._();

  String get commentId;
  String get content;
  AsyncModel<PostIdentifier, Post, PartialPost, PartialPost>? get post;
  String? get postId;
  String? get postTitle;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  CommentIdentifier get modelIdentifier => CommentIdentifier(
        commentId: commentId,
        content: content,
      );
  @override
  CommentType get modelType => Comment.classType;
  @override
  List<Object?> get props => [
        commentId,
        content,
        post,
        postId,
        postTitle,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'commentId': commentId,
        'content': content,
        'post': post?.toJson(),
        'postId': postId,
        'postTitle': postTitle,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Comment';
}

class _PartialComment extends PartialComment {
  const _PartialComment({
    required this.commentId,
    required this.content,
    this.post,
    this.postId,
    this.postTitle,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialComment.fromJson(Map<String, Object?> json) {
    final commentId = json['commentId'] == null
        ? (throw ModelFieldError(
            'Comment',
            'commentId',
          ))
        : (json['commentId'] as String);
    final content = json['content'] == null
        ? (throw ModelFieldError(
            'Comment',
            'content',
          ))
        : (json['content'] as String);
    final post = json['post'] == null
        ? null
        : AsyncModel<PostIdentifier, Post, PartialPost, PartialPost>.fromModel(
            Post.classType
                .fromJson<PartialPost>((json['post'] as Map<String, Object?>)),
          );
    final postId = json['postId'] == null ? null : (json['postId'] as String);
    final postTitle =
        json['postTitle'] == null ? null : (json['postTitle'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialComment(
      commentId: commentId,
      content: content,
      post: post,
      postId: postId,
      postTitle: postTitle,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String commentId;

  @override
  final String content;

  @override
  final AsyncModel<PostIdentifier, Post, PartialPost, PartialPost>? post;

  @override
  final String? postId;

  @override
  final String? postTitle;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Comment extends PartialComment
    implements Model<CommentIdentifier, Comment> {
  factory Comment({
    String? commentId,
    required String content,
    Post? post,
    required String postId,
    required String postTitle,
  }) = _Comment;

  const Comment._() : super._();

  factory Comment.fromJson(Map<String, Object?> json) {
    final commentId = json['commentId'] == null
        ? (throw ModelFieldError(
            'Comment',
            'commentId',
          ))
        : (json['commentId'] as String);
    final content = json['content'] == null
        ? (throw ModelFieldError(
            'Comment',
            'content',
          ))
        : (json['content'] as String);
    final post = json['post'] == null
        ? null
        : AsyncModel<PostIdentifier, Post, PartialPost, Post>.fromModel(
            Post.classType
                .fromJson<Post>((json['post'] as Map<String, Object?>)),
          );
    final postId = json['postId'] == null
        ? (throw ModelFieldError(
            'Comment',
            'postId',
          ))
        : (json['postId'] as String);
    final postTitle = json['postTitle'] == null
        ? (throw ModelFieldError(
            'Comment',
            'postTitle',
          ))
        : (json['postTitle'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Comment',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Comment',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _Comment._(
      commentId: commentId,
      content: content,
      post: post,
      postId: postId,
      postTitle: postTitle,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const CommentType classType = CommentType();

  static const CommentQueryFields<CommentIdentifier, Comment> _queryFields =
      CommentQueryFields();

  @override
  String get commentId;

  /// Query field for the [commentId] field.
  QueryField<CommentIdentifier, Comment, String> get $commentId =>
      _queryFields.$commentId;

  /// Query field for the [commentId] field.
  @Deprecated(r'Use $commentId instead')
  QueryField<CommentIdentifier, Comment, String> get COMMENT_ID => $commentId;
  @override
  String get content;

  /// Query field for the [content] field.
  QueryField<CommentIdentifier, Comment, String> get $content =>
      _queryFields.$content;

  /// Query field for the [content] field.
  @Deprecated(r'Use $content instead')
  QueryField<CommentIdentifier, Comment, String> get CONTENT => $content;
  @override
  AsyncModel<PostIdentifier, Post, PartialPost, Post>? get post;

  /// Query field for the [post] field.
  PostQueryFields<CommentIdentifier, Comment> get $post => _queryFields.$post;

  /// Query field for the [post] field.
  @Deprecated(r'Use $post instead')
  PostQueryFields<CommentIdentifier, Comment> get POST => $post;
  @override
  String get postId;

  /// Query field for the [postId] field.
  QueryField<CommentIdentifier, Comment, String> get $postId =>
      _queryFields.$postId;

  /// Query field for the [postId] field.
  @Deprecated(r'Use $postId instead')
  QueryField<CommentIdentifier, Comment, String> get POST_ID => $postId;
  @override
  String get postTitle;

  /// Query field for the [postTitle] field.
  QueryField<CommentIdentifier, Comment, String> get $postTitle =>
      _queryFields.$postTitle;

  /// Query field for the [postTitle] field.
  @Deprecated(r'Use $postTitle instead')
  QueryField<CommentIdentifier, Comment, String> get POST_TITLE => $postTitle;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<CommentIdentifier, Comment, CommentIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<CommentIdentifier, Comment, CommentIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  @override
  T valueFor<T extends Object?>(
    QueryField<CommentIdentifier, Comment, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'commentId':
        value = commentId;
        break;
      case r'content':
        value = content;
        break;
      case r'post':
        value = post;
        break;
      case r'postId':
        value = postId;
        break;
      case r'postTitle':
        value = postTitle;
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

class _Comment extends Comment {
  _Comment({
    String? commentId,
    required this.content,
    Post? post,
    required this.postId,
    required this.postTitle,
  })  : commentId = commentId ?? uuid(),
        post = post == null ? null : AsyncModel.fromModel(post),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Comment._({
    required this.commentId,
    required this.content,
    this.post,
    required this.postId,
    required this.postTitle,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String commentId;

  @override
  final String content;

  @override
  final AsyncModel<PostIdentifier, Post, PartialPost, Post>? post;

  @override
  final String postId;

  @override
  final String postTitle;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteComment extends Comment
    implements RemoteModel<CommentIdentifier, Comment> {
  const RemoteComment._() : super._();
}

class _RemoteComment extends RemoteComment {
  const _RemoteComment({
    required this.commentId,
    required this.content,
    this.post,
    required this.postId,
    required this.postTitle,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteComment.fromJson(Map<String, Object?> json) {
    final commentId = json['commentId'] == null
        ? (throw ModelFieldError(
            'Comment',
            'commentId',
          ))
        : (json['commentId'] as String);
    final content = json['content'] == null
        ? (throw ModelFieldError(
            'Comment',
            'content',
          ))
        : (json['content'] as String);
    final post = json['post'] == null
        ? null
        : AsyncModel<PostIdentifier, Post, PartialPost, RemotePost>.fromModel(
            Post.classType
                .fromJson<RemotePost>((json['post'] as Map<String, Object?>)),
          );
    final postId = json['postId'] == null
        ? (throw ModelFieldError(
            'Comment',
            'postId',
          ))
        : (json['postId'] as String);
    final postTitle = json['postTitle'] == null
        ? (throw ModelFieldError(
            'Comment',
            'postTitle',
          ))
        : (json['postTitle'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Comment',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Comment',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Comment',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Comment',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Comment',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteComment(
      commentId: commentId,
      content: content,
      post: post,
      postId: postId,
      postTitle: postTitle,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String commentId;

  @override
  final String content;

  @override
  final AsyncModel<PostIdentifier, Post, PartialPost, RemotePost>? post;

  @override
  final String postId;

  @override
  final String postTitle;

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
