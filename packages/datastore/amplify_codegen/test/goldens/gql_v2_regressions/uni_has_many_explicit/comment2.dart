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

library models.comment2;

import 'package:amplify_core/amplify_core.dart';

class Comment2Type extends ModelType<String, Comment2, PartialComment2> {
  const Comment2Type();

  @override
  T fromJson<T extends PartialModel<String, Comment2>>(
    Map<String, Object?> json,
  ) {
    if (T == Comment2 || T == Model<String, Comment2>) {
      return Comment2.fromJson(json) as T;
    }
    if (T == RemoteComment2 || T == RemoteModel<String, Comment2>) {
      return _RemoteComment2.fromJson(json) as T;
    }
    return _PartialComment2.fromJson(json) as T;
  }

  @override
  String get modelName => 'Comment2';
}

class Comment2QueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const Comment2QueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Comment2>? _root;

  /// Query field for the [Comment2.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Comment2, String>(
        const QueryField<String, Comment2, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Comment2.postId] field.
  QueryField<ModelIdentifier, M, String> get $postId =>
      NestedQueryField<ModelIdentifier, M, String, Comment2, String>(
        const QueryField<String, Comment2, String>(fieldName: 'postID'),
        root: _root,
      );

  /// Query field for the [Comment2.content] field.
  QueryField<ModelIdentifier, M, String> get $content =>
      NestedQueryField<ModelIdentifier, M, String, Comment2, String>(
        const QueryField<String, Comment2, String>(fieldName: 'content'),
        root: _root,
      );

  /// Query field for the [Comment2.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Comment2, TemporalDateTime>(
        const QueryField<String, Comment2, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Comment2.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Comment2, TemporalDateTime>(
        const QueryField<String, Comment2, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Comment2] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Comment2, String>(
        const QueryField<String, Comment2, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialComment2 extends PartialModel<String, Comment2>
    with AWSEquatable<PartialComment2> {
  const PartialComment2._();

  String get id;
  String? get postId;
  String? get content;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  Comment2Type get modelType => Comment2.classType;
  @override
  List<Object?> get props => [
        id,
        postId,
        content,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'postID': postId,
        'content': content,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Comment2';
}

class _PartialComment2 extends PartialComment2 {
  const _PartialComment2({
    required this.id,
    this.postId,
    this.content,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialComment2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'id',
          ))
        : (json['id'] as String);
    final postId = json['postID'] == null ? null : (json['postID'] as String);
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialComment2(
      id: id,
      postId: postId,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? postId;

  @override
  final String? content;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Comment2 extends PartialComment2
    implements Model<String, Comment2> {
  factory Comment2({
    String? id,
    required String postId,
    required String content,
  }) = _Comment2;

  const Comment2._() : super._();

  factory Comment2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'id',
          ))
        : (json['id'] as String);
    final postId = json['postID'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'postId',
          ))
        : (json['postID'] as String);
    final content = json['content'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'content',
          ))
        : (json['content'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _Comment2._(
      id: id,
      postId: postId,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const Comment2Type classType = Comment2Type();

  static const Comment2QueryFields<String, Comment2> _queryFields =
      Comment2QueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Comment2, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Comment2, String> get ID => $id;
  @override
  String get postId;

  /// Query field for the [postId] field.
  QueryField<String, Comment2, String> get $postId => _queryFields.$postId;

  /// Query field for the [postId] field.
  @Deprecated(r'Use $postId instead')
  QueryField<String, Comment2, String> get POST_ID => $postId;
  @override
  String get content;

  /// Query field for the [content] field.
  QueryField<String, Comment2, String> get $content => _queryFields.$content;

  /// Query field for the [content] field.
  @Deprecated(r'Use $content instead')
  QueryField<String, Comment2, String> get CONTENT => $content;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Comment2, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Comment2, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Comment2 copyWith({
    String? id,
    String? postId,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _Comment2._(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      content: content ?? this.content,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Comment2, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'postID':
        value = postId;
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
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Comment2 extends Comment2 {
  _Comment2({
    String? id,
    required this.postId,
    required this.content,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Comment2._({
    required this.id,
    required this.postId,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String postId;

  @override
  final String content;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteComment2 extends Comment2
    implements RemoteModel<String, Comment2> {
  const RemoteComment2._() : super._();
}

class _RemoteComment2 extends RemoteComment2 {
  const _RemoteComment2({
    required this.id,
    required this.postId,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteComment2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'id',
          ))
        : (json['id'] as String);
    final postId = json['postID'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'postId',
          ))
        : (json['postID'] as String);
    final content = json['content'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'content',
          ))
        : (json['content'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Comment2',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteComment2(
      id: id,
      postId: postId,
      content: content,
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
  final String postId;

  @override
  final String content;

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
