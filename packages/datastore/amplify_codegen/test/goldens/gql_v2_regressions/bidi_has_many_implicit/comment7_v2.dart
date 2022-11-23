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

library models.comment7_v2;

import 'package:amplify_core/amplify_core.dart';

import 'post7_v2.dart';

class Comment7V2Type extends ModelType<String, Comment7V2, PartialComment7V2> {
  const Comment7V2Type();

  @override
  T fromJson<T extends PartialModel<String, Comment7V2>>(
    Map<String, Object?> json,
  ) {
    if (T == Comment7V2 || T == Model<String, Comment7V2>) {
      return Comment7V2.fromJson(json) as T;
    }
    if (T == RemoteComment7V2 || T == RemoteModel<String, Comment7V2>) {
      return _RemoteComment7V2.fromJson(json) as T;
    }
    return _PartialComment7V2.fromJson(json) as T;
  }

  @override
  String get modelName => 'Comment7V2';
}

class Comment7V2QueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const Comment7V2QueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Comment7V2>? _root;

  /// Query field for the [Comment7V2.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Comment7V2, String>(
        const QueryField<String, Comment7V2, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Comment7V2.content] field.
  QueryField<ModelIdentifier, M, String?> get $content =>
      NestedQueryField<ModelIdentifier, M, String, Comment7V2, String?>(
        const QueryField<String, Comment7V2, String?>(fieldName: 'content'),
        root: _root,
      );

  /// Query field for the [Comment7V2.post] field.
  Post7V2QueryFields<ModelIdentifier, M> get $post => Post7V2QueryFields(
        NestedQueryField<ModelIdentifier, M, String, Comment7V2, Post7V2>(
          const QueryField<String, Comment7V2, Post7V2>(fieldName: 'post'),
          root: _root,
        ),
      );

  /// Query field for the [Comment7V2.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Comment7V2,
          TemporalDateTime>(
        const QueryField<String, Comment7V2, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Comment7V2.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Comment7V2,
          TemporalDateTime>(
        const QueryField<String, Comment7V2, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Comment7V2.post7V2CommentsId] field.
  QueryField<ModelIdentifier, M, String?> get $post7V2CommentsId =>
      NestedQueryField<ModelIdentifier, M, String, Comment7V2, String?>(
        const QueryField<String, Comment7V2, String?>(
          fieldName: 'post7V2CommentsId',
        ),
        root: _root,
      );

  /// Query field for the [Comment7V2] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Comment7V2, String>(
        const QueryField<String, Comment7V2, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialComment7V2 extends PartialModel<String, Comment7V2>
    with AWSEquatable<PartialComment7V2> {
  const PartialComment7V2._();

  String get id;
  String? get content;
  AsyncModel<String, Post7V2, PartialPost7V2, PartialPost7V2>? get post;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get post7V2CommentsId;
  @override
  String get modelIdentifier => id;
  @override
  Comment7V2Type get modelType => Comment7V2.classType;
  @override
  List<Object?> get props => [
        id,
        content,
        post,
        createdAt,
        updatedAt,
        post7V2CommentsId,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'content': content,
        'post': post?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'post7V2CommentsId': post7V2CommentsId,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Comment7V2';
}

class _PartialComment7V2 extends PartialComment7V2 {
  const _PartialComment7V2({
    required this.id,
    this.content,
    this.post,
    this.createdAt,
    this.updatedAt,
    this.post7V2CommentsId,
  }) : super._();

  factory _PartialComment7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'id',
          ))
        : (json['id'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final post = json['post'] == null
        ? null
        : AsyncModel<String, Post7V2, PartialPost7V2, PartialPost7V2>.fromModel(
            Post7V2.classType.fromJson<PartialPost7V2>(
              (json['post'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final post7V2CommentsId = json['post7V2CommentsId'] == null
        ? null
        : (json['post7V2CommentsId'] as String);
    return _PartialComment7V2(
      id: id,
      content: content,
      post: post,
      createdAt: createdAt,
      updatedAt: updatedAt,
      post7V2CommentsId: post7V2CommentsId,
    );
  }

  @override
  final String id;

  @override
  final String? content;

  @override
  final AsyncModel<String, Post7V2, PartialPost7V2, PartialPost7V2>? post;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? post7V2CommentsId;
}

abstract class Comment7V2 extends PartialComment7V2
    implements Model<String, Comment7V2> {
  factory Comment7V2({
    String? id,
    String? content,
    Post7V2? post,
    String? post7V2CommentsId,
  }) = _Comment7V2;

  const Comment7V2._() : super._();

  factory Comment7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'id',
          ))
        : (json['id'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final post = json['post'] == null
        ? null
        : AsyncModel<String, Post7V2, PartialPost7V2, Post7V2>.fromModel(
            Post7V2.classType
                .fromJson<Post7V2>((json['post'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final post7V2CommentsId = json['post7V2CommentsId'] == null
        ? null
        : (json['post7V2CommentsId'] as String);
    return _Comment7V2._(
      id: id,
      content: content,
      post: post,
      createdAt: createdAt,
      updatedAt: updatedAt,
      post7V2CommentsId: post7V2CommentsId,
    );
  }

  static const Comment7V2Type classType = Comment7V2Type();

  static const Comment7V2QueryFields<String, Comment7V2> _queryFields =
      Comment7V2QueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Comment7V2, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Comment7V2, String> get ID => $id;
  @override
  String? get content;

  /// Query field for the [content] field.
  QueryField<String, Comment7V2, String?> get $content => _queryFields.$content;

  /// Query field for the [content] field.
  @Deprecated(r'Use $content instead')
  QueryField<String, Comment7V2, String?> get CONTENT => $content;
  @override
  AsyncModel<String, Post7V2, PartialPost7V2, Post7V2>? get post;

  /// Query field for the [post] field.
  Post7V2QueryFields<String, Comment7V2> get $post => _queryFields.$post;

  /// Query field for the [post] field.
  @Deprecated(r'Use $post instead')
  Post7V2QueryFields<String, Comment7V2> get POST => $post;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get post7V2CommentsId;

  /// Query field for the [post7V2CommentsId] field.
  QueryField<String, Comment7V2, String?> get $post7V2CommentsId =>
      _queryFields.$post7V2CommentsId;

  /// Query field for the [post7V2CommentsId] field.
  @Deprecated(r'Use $post7V2CommentsId instead')
  QueryField<String, Comment7V2, String?> get POST7_V2_COMMENTS_ID =>
      $post7V2CommentsId;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Comment7V2, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Comment7V2, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  Comment7V2 copyWith({
    String? id,
    String? content,
    Post7V2? post,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? post7V2CommentsId,
  }) {
    return _Comment7V2._(
      id: id ?? this.id,
      content: content ?? this.content,
      post: post == null ? this.post : AsyncModel.fromModel(post),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      post7V2CommentsId: post7V2CommentsId ?? this.post7V2CommentsId,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Comment7V2, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
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
      case r'post7V2CommentsId':
        value = post7V2CommentsId;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Comment7V2 extends Comment7V2 {
  _Comment7V2({
    String? id,
    this.content,
    Post7V2? post,
    this.post7V2CommentsId,
  })  : id = id ?? uuid(),
        post = post == null ? null : AsyncModel.fromModel(post),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Comment7V2._({
    required this.id,
    this.content,
    this.post,
    required this.createdAt,
    required this.updatedAt,
    this.post7V2CommentsId,
  }) : super._();

  @override
  final String id;

  @override
  final String? content;

  @override
  final AsyncModel<String, Post7V2, PartialPost7V2, Post7V2>? post;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? post7V2CommentsId;
}

abstract class RemoteComment7V2 extends Comment7V2
    implements RemoteModel<String, Comment7V2> {
  const RemoteComment7V2._() : super._();
}

class _RemoteComment7V2 extends RemoteComment7V2 {
  const _RemoteComment7V2({
    required this.id,
    this.content,
    this.post,
    required this.createdAt,
    required this.updatedAt,
    this.post7V2CommentsId,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteComment7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'id',
          ))
        : (json['id'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final post = json['post'] == null
        ? null
        : AsyncModel<String, Post7V2, PartialPost7V2, RemotePost7V2>.fromModel(
            Post7V2.classType.fromJson<RemotePost7V2>(
              (json['post'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final post7V2CommentsId = json['post7V2CommentsId'] == null
        ? null
        : (json['post7V2CommentsId'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Comment7V2',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteComment7V2(
      id: id,
      content: content,
      post: post,
      createdAt: createdAt,
      updatedAt: updatedAt,
      post7V2CommentsId: post7V2CommentsId,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String? content;

  @override
  final AsyncModel<String, Post7V2, PartialPost7V2, RemotePost7V2>? post;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? post7V2CommentsId;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
