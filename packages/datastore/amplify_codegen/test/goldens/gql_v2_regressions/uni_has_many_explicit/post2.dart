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

library models.post2;

import 'package:amplify_core/amplify_core.dart';

import 'comment2.dart';

class Post2Type extends ModelType<String, Post2, PartialPost2> {
  const Post2Type();

  @override
  T fromJson<T extends PartialModel<String, Post2>>(Map<String, Object?> json) {
    if (T == Post2 || T == Model<String, Post2>) {
      return Post2.fromJson(json) as T;
    }
    if (T == RemotePost2 || T == RemoteModel<String, Post2>) {
      return _RemotePost2.fromJson(json) as T;
    }
    return _PartialPost2.fromJson(json) as T;
  }

  @override
  String get modelName => 'Post2';
}

class Post2QueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const Post2QueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Post2>? _root;

  /// Query field for the [Post2.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Post2, String>(
        const QueryField<String, Post2, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Post2.title] field.
  QueryField<ModelIdentifier, M, String> get $title =>
      NestedQueryField<ModelIdentifier, M, String, Post2, String>(
        const QueryField<String, Post2, String>(fieldName: 'title'),
        root: _root,
      );

  /// Query field for the [Post2.comments] field.
  Comment2QueryFields<ModelIdentifier, M> get $comments => Comment2QueryFields(
        NestedQueryField<ModelIdentifier, M, String, Post2, Comment2>(
          const QueryField<String, Post2, Comment2>(fieldName: 'comments'),
          root: _root,
        ),
      );

  /// Query field for the [Post2.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Post2, TemporalDateTime>(
        const QueryField<String, Post2, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Post2.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Post2, TemporalDateTime>(
        const QueryField<String, Post2, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Post2] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Post2, String>(
        const QueryField<String, Post2, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialPost2 extends PartialModel<String, Post2>
    with AWSEquatable<PartialPost2> {
  const PartialPost2._();

  String get id;
  String? get title;
  AsyncModelCollection<String, Comment2, PartialComment2, PartialComment2>?
      get comments;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  Post2Type get modelType => Post2.classType;
  @override
  List<Object?> get props => [
        id,
        title,
        comments,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'comments': comments?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Post2';
}

class _PartialPost2 extends PartialPost2 {
  const _PartialPost2({
    required this.id,
    this.title,
    this.comments,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialPost2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post2',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null ? null : (json['title'] as String);
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment2, PartialComment2,
            PartialComment2>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment2.classType.fromJson<PartialComment2>(el),
                )
                .whereType<PartialComment2>()
                .toList(),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialPost2(
      id: id,
      title: title,
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
  final AsyncModelCollection<String, Comment2, PartialComment2,
      PartialComment2>? comments;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Post2 extends PartialPost2 implements Model<String, Post2> {
  factory Post2({
    String? id,
    required String title,
    List<Comment2>? comments,
  }) = _Post2;

  const Post2._() : super._();

  factory Post2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post2',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post2',
            'title',
          ))
        : (json['title'] as String);
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment2, PartialComment2,
            Comment2>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment2.classType.fromJson<Comment2>(el),
                )
                .whereType<Comment2>()
                .toList(),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _Post2._(
      id: id,
      title: title,
      comments: comments,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const Post2Type classType = Post2Type();

  static const Post2QueryFields<String, Post2> _queryFields =
      Post2QueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Post2, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Post2, String> get ID => $id;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, Post2, String> get $title => _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, Post2, String> get TITLE => $title;
  @override
  AsyncModelCollection<String, Comment2, PartialComment2, Comment2>?
      get comments;

  /// Query field for the [comments] field.
  Comment2QueryFields<String, Post2> get $comments => _queryFields.$comments;

  /// Query field for the [comments] field.
  @Deprecated(r'Use $comments instead')
  Comment2QueryFields<String, Post2> get COMMENTS => $comments;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Post2, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Post2, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Post2 copyWith({
    String? id,
    String? title,
    List<Comment2>? comments,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _Post2._(
      id: id ?? this.id,
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
  T valueFor<T extends Object?>(QueryField<String, Post2, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
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

class _Post2 extends Post2 {
  _Post2({
    String? id,
    required this.title,
    List<Comment2>? comments,
  })  : id = id ?? uuid(),
        comments =
            comments == null ? null : AsyncModelCollection.fromList(comments),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Post2._({
    required this.id,
    required this.title,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String title;

  @override
  final AsyncModelCollection<String, Comment2, PartialComment2, Comment2>?
      comments;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemotePost2 extends Post2 implements RemoteModel<String, Post2> {
  const RemotePost2._() : super._();
}

class _RemotePost2 extends RemotePost2 {
  const _RemotePost2({
    required this.id,
    required this.title,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePost2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Post2',
            'id',
          ))
        : (json['id'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'Post2',
            'title',
          ))
        : (json['title'] as String);
    final comments = json['comments'] == null
        ? null
        : AsyncModelCollection<String, Comment2, PartialComment2,
            RemoteComment2>.fromList(
            (json['comments'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Comment2.classType.fromJson<RemoteComment2>(el),
                )
                .whereType<RemoteComment2>()
                .toList(),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Post2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Post2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Post2',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Post2',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Post2',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemotePost2(
      id: id,
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
  final String id;

  @override
  final String title;

  @override
  final AsyncModelCollection<String, Comment2, PartialComment2, RemoteComment2>?
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
