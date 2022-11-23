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

@immutable
class CommentIdentifier
    with
        AWSEquatable<CommentIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const CommentIdentifier({
    required this.id,
    required this.content,
  });

  final String id;

  final String content;

  @override
  List<Object?> get props => [
        id,
        content,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
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

  /// Query field for the [Comment.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String>(
        const QueryField<CommentIdentifier, Comment, String>(fieldName: 'id'),
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

  /// Query field for the [Comment.postCommentsId] field.
  QueryField<ModelIdentifier, M, String?> get $postCommentsId =>
      NestedQueryField<ModelIdentifier, M, CommentIdentifier, Comment, String?>(
        const QueryField<CommentIdentifier, Comment, String?>(
          fieldName: 'postCommentsId',
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

  String get id;
  String get content;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get postCommentsId;
  String? get postCommentsTitle;
  @override
  CommentIdentifier get modelIdentifier => CommentIdentifier(
        id: id,
        content: content,
      );
  @override
  CommentType get modelType => Comment.classType;
  @override
  List<Object?> get props => [
        id,
        content,
        createdAt,
        updatedAt,
        postCommentsId,
        postCommentsTitle,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'content': content,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'postCommentsId': postCommentsId,
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
    required this.id,
    required this.content,
    this.createdAt,
    this.updatedAt,
    this.postCommentsId,
    this.postCommentsTitle,
  }) : super._();

  factory _PartialComment.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment',
            'id',
          ))
        : (json['id'] as String);
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
    final postCommentsId = json['postCommentsId'] == null
        ? null
        : (json['postCommentsId'] as String);
    final postCommentsTitle = json['postCommentsTitle'] == null
        ? null
        : (json['postCommentsTitle'] as String);
    return _PartialComment(
      id: id,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      postCommentsId: postCommentsId,
      postCommentsTitle: postCommentsTitle,
    );
  }

  @override
  final String id;

  @override
  final String content;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? postCommentsId;

  @override
  final String? postCommentsTitle;
}

abstract class Comment extends PartialComment
    implements Model<CommentIdentifier, Comment> {
  factory Comment({
    String? id,
    required String content,
    String? postCommentsId,
    String? postCommentsTitle,
  }) = _Comment;

  const Comment._() : super._();

  factory Comment.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment',
            'id',
          ))
        : (json['id'] as String);
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
    final postCommentsId = json['postCommentsId'] == null
        ? null
        : (json['postCommentsId'] as String);
    final postCommentsTitle = json['postCommentsTitle'] == null
        ? null
        : (json['postCommentsTitle'] as String);
    return _Comment._(
      id: id,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      postCommentsId: postCommentsId,
      postCommentsTitle: postCommentsTitle,
    );
  }

  static const CommentType classType = CommentType();

  static const CommentQueryFields<CommentIdentifier, Comment> _queryFields =
      CommentQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<CommentIdentifier, Comment, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<CommentIdentifier, Comment, String> get ID => $id;
  @override
  String get content;

  /// Query field for the [content] field.
  QueryField<CommentIdentifier, Comment, String> get $content =>
      _queryFields.$content;

  /// Query field for the [content] field.
  @Deprecated(r'Use $content instead')
  QueryField<CommentIdentifier, Comment, String> get CONTENT => $content;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get postCommentsId;

  /// Query field for the [postCommentsId] field.
  QueryField<CommentIdentifier, Comment, String?> get $postCommentsId =>
      _queryFields.$postCommentsId;

  /// Query field for the [postCommentsId] field.
  @Deprecated(r'Use $postCommentsId instead')
  QueryField<CommentIdentifier, Comment, String?> get POST_COMMENTS_ID =>
      $postCommentsId;
  @override
  String? get postCommentsTitle;

  /// Query field for the [postCommentsTitle] field.
  QueryField<CommentIdentifier, Comment, String?> get $postCommentsTitle =>
      _queryFields.$postCommentsTitle;

  /// Query field for the [postCommentsTitle] field.
  @Deprecated(r'Use $postCommentsTitle instead')
  QueryField<CommentIdentifier, Comment, String?> get POST_COMMENTS_TITLE =>
      $postCommentsTitle;

  /// Query field for the [modelIdentifier] field.
  QueryField<CommentIdentifier, Comment, CommentIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<CommentIdentifier, Comment, CommentIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  Comment copyWith({
    String? id,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? postCommentsId,
    String? postCommentsTitle,
  }) {
    return _Comment._(
      id: id ?? this.id,
      content: content ?? this.content,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      postCommentsId: postCommentsId ?? this.postCommentsId,
      postCommentsTitle: postCommentsTitle ?? this.postCommentsTitle,
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<CommentIdentifier, Comment, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'content':
        value = content;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'postCommentsId':
        value = postCommentsId;
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
    String? id,
    required this.content,
    this.postCommentsId,
    this.postCommentsTitle,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Comment._({
    required this.id,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    this.postCommentsId,
    this.postCommentsTitle,
  }) : super._();

  @override
  final String id;

  @override
  final String content;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? postCommentsId;

  @override
  final String? postCommentsTitle;
}

abstract class RemoteComment extends Comment
    implements RemoteModel<CommentIdentifier, Comment> {
  const RemoteComment._() : super._();
}

class _RemoteComment extends RemoteComment {
  const _RemoteComment({
    required this.id,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    this.postCommentsId,
    this.postCommentsTitle,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteComment.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment',
            'id',
          ))
        : (json['id'] as String);
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
    final postCommentsId = json['postCommentsId'] == null
        ? null
        : (json['postCommentsId'] as String);
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
    return _RemoteComment(
      id: id,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      postCommentsId: postCommentsId,
      postCommentsTitle: postCommentsTitle,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String content;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? postCommentsId;

  @override
  final String? postCommentsTitle;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
