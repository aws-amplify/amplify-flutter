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

  /// Query field for the [Comment.postCommentsPostId] field.
  QueryField<ModelIdentifier, M, String?> get $postCommentsPostId =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String?>(
        const QueryField<CommentIdentifier, Comment, String?>(
          fieldName: 'postCommentsPostId',
        ),
        root: _root,
      );

  /// Query field for the [Comment.postCommentsTitle] field.
  QueryField<ModelIdentifier, M, String?> get $postCommentsTitle =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String?>(
        const QueryField<CommentIdentifier, Comment, String?>(
          fieldName: 'postCommentsTitle',
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
  PartialPost? get post;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get postCommentsPostId;
  String? get postCommentsTitle;
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
        createdAt,
        updatedAt,
        postCommentsPostId,
        postCommentsTitle,
      ];
  @override
  Map<String, Object?> toJson() => {
        'commentId': commentId,
        'content': content,
        'post': post?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'postCommentsPostId': postCommentsPostId,
        'postCommentsTitle': postCommentsTitle,
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
    this.createdAt,
    this.updatedAt,
    this.postCommentsPostId,
    this.postCommentsTitle,
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
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final postCommentsPostId = json['postCommentsPostId'] == null
        ? null
        : (json['postCommentsPostId'] as String);
    final postCommentsTitle = json['postCommentsTitle'] == null
        ? null
        : (json['postCommentsTitle'] as String);
    final post = json['post'] == null
        ? null
        : Post.classType
            .fromJson<PartialPost>((json['post'] as Map<String, Object?>));
    return _PartialComment(
      commentId: commentId,
      content: content,
      post: post,
      createdAt: createdAt,
      updatedAt: updatedAt,
      postCommentsPostId: postCommentsPostId,
      postCommentsTitle: postCommentsTitle,
    );
  }

  @override
  final String commentId;

  @override
  final String content;

  @override
  final PartialPost? post;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? postCommentsPostId;

  @override
  final String? postCommentsTitle;
}

abstract class Comment extends PartialComment
    implements Model<CommentIdentifier, Comment> {
  factory Comment({
    String? commentId,
    required String content,
    Post? post,
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
    final postCommentsPostId = json['postCommentsPostId'] == null
        ? null
        : (json['postCommentsPostId'] as String);
    final postCommentsTitle = json['postCommentsTitle'] == null
        ? null
        : (json['postCommentsTitle'] as String);
    final post = json['post'] == null
        ? null
        : Post.classType.fromJson<Post>((json['post'] as Map<String, Object?>));
    return _Comment._(
      commentId: commentId,
      content: content,
      post: post,
      createdAt: createdAt,
      updatedAt: updatedAt,
      postCommentsPostId: postCommentsPostId,
      postCommentsTitle: postCommentsTitle,
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
  Post? get post;

  /// Query field for the [post] field.
  PostQueryFields<CommentIdentifier, Comment> get $post => _queryFields.$post;

  /// Query field for the [post] field.
  @Deprecated(r'Use $post instead')
  PostQueryFields<CommentIdentifier, Comment> get POST => $post;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get postCommentsPostId;
  @override
  String? get postCommentsTitle;

  /// Query field for the [modelIdentifier] field.
  QueryField<CommentIdentifier, Comment, CommentIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<CommentIdentifier, Comment, CommentIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  Comment copyWith({
    String? commentId,
    String? content,
    Post? post,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? postCommentsPostId,
    String? postCommentsTitle,
  }) {
    return _Comment._(
      commentId: commentId ?? this.commentId,
      content: content ?? this.content,
      post: post == null ? this.post : AsyncModel.fromModel(post),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      postCommentsPostId: postCommentsPostId ?? this.postCommentsPostId,
      postCommentsTitle: postCommentsTitle ?? this.postCommentsTitle,
    );
  }

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
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'postCommentsPostId':
        value = postCommentsPostId;
        break;
      case r'postCommentsTitle':
        value = postCommentsTitle;
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
    this.post,
  })  : commentId = commentId ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        postCommentsPostId = post?.postId,
        postCommentsTitle = post?.title,
        super._();

  const _Comment._({
    required this.commentId,
    required this.content,
    this.post,
    required this.createdAt,
    required this.updatedAt,
    this.postCommentsPostId,
    this.postCommentsTitle,
  }) : super._();

  @override
  final String commentId;

  @override
  final String content;

  @override
  final Post? post;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? postCommentsPostId;

  @override
  final String? postCommentsTitle;
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
    required this.createdAt,
    required this.updatedAt,
    this.postCommentsPostId,
    this.postCommentsTitle,
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
    final postCommentsPostId = json['postCommentsPostId'] == null
        ? null
        : (json['postCommentsPostId'] as String);
    final postCommentsTitle = json['postCommentsTitle'] == null
        ? null
        : (json['postCommentsTitle'] as String);
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
    final post = json['post'] == null
        ? null
        : Post.classType
            .fromJson<RemotePost>((json['post'] as Map<String, Object?>));
    return _RemoteComment(
      commentId: commentId,
      content: content,
      post: post,
      createdAt: createdAt,
      updatedAt: updatedAt,
      postCommentsPostId: postCommentsPostId,
      postCommentsTitle: postCommentsTitle,
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
  final RemotePost? post;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? postCommentsPostId;

  @override
  final String? postCommentsTitle;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
