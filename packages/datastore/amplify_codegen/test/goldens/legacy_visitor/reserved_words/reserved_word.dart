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

library models.reserved_word;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class ReservedWordType
    extends ModelType<String, ReservedWord, PartialReservedWord> {
  const ReservedWordType();

  @override
  T fromJson<T extends PartialModel<String, ReservedWord>>(
    Map<String, Object?> json,
  ) {
    if (T == ReservedWord || T == Model<String, ReservedWord>) {
      return ReservedWord.fromJson(json) as T;
    }
    if (T == RemoteReservedWord || T == RemoteModel<String, ReservedWord>) {
      return _RemoteReservedWord.fromJson(json) as T;
    }
    return _PartialReservedWord.fromJson(json) as T;
  }

  @override
  String get modelName => 'ReservedWord';
}

class ReservedWordQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ReservedWordQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ReservedWord>? _root;

  /// Query field for the [ReservedWord.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, ReservedWord, String>(
        const QueryField<String, ReservedWord, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [ReservedWord.class_] field.
  QueryField<ModelIdentifier, M, String> get $class_ =>
      NestedQueryField<ModelIdentifier, M, String, ReservedWord, String>(
        const QueryField<String, ReservedWord, String>(fieldName: 'class'),
        root: _root,
      );

  /// Query field for the [ReservedWord.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ReservedWord,
          TemporalDateTime>(
        const QueryField<String, ReservedWord, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [ReservedWord.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ReservedWord,
          TemporalDateTime>(
        const QueryField<String, ReservedWord, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [ReservedWord] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ReservedWord, String>(
        const QueryField<String, ReservedWord, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialReservedWord extends PartialModel<String, ReservedWord>
    with AWSEquatable<PartialReservedWord> {
  const PartialReservedWord._();

  String get id;
  String? get class_;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  ReservedWordType get modelType => ReservedWord.classType;
  @override
  List<Object?> get props => [
        id,
        class_,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'class': class_,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ReservedWord';
}

class _PartialReservedWord extends PartialReservedWord {
  const _PartialReservedWord({
    required this.id,
    this.class_,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialReservedWord.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'id',
          ))
        : (json['id'] as String);
    final class_ = json['class'] == null ? null : (json['class'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialReservedWord(
      id: id,
      class_: class_,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? class_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ReservedWord extends PartialReservedWord
    implements Model<String, ReservedWord> {
  factory ReservedWord({
    String? id,
    required String class_,
  }) = _ReservedWord;

  const ReservedWord._() : super._();

  factory ReservedWord.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'id',
          ))
        : (json['id'] as String);
    final class_ = json['class'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'class_',
          ))
        : (json['class'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ReservedWord._(
      id: id,
      class_: class_,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ReservedWordType classType = ReservedWordType();

  static const ReservedWordQueryFields<String, ReservedWord> _queryFields =
      ReservedWordQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'ReservedWord',
      'pluralName': 'ReservedWords',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'class': {
          'name': 'class',
          'type': {'scalar': 'String'},
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
  QueryField<String, ReservedWord, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, ReservedWord, String> get ID => $id;
  @override
  String get class_;

  /// Query field for the [class_] field.
  QueryField<String, ReservedWord, String> get $class_ => _queryFields.$class_;

  /// Query field for the [class_] field.
  @Deprecated(r'Use $class_ instead')
  QueryField<String, ReservedWord, String> get CLASS => $class_;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ReservedWord, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ReservedWord, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  ReservedWord copyWith({
    String? id,
    String? class_,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _ReservedWord._(
      id: id ?? this.id,
      class_: class_ ?? this.class_,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, ReservedWord, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'class':
        value = class_;
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

class _ReservedWord extends ReservedWord {
  _ReservedWord({
    String? id,
    required this.class_,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ReservedWord._({
    required this.id,
    required this.class_,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String class_;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteReservedWord extends ReservedWord
    implements RemoteModel<String, ReservedWord> {
  const RemoteReservedWord._() : super._();
}

class _RemoteReservedWord extends RemoteReservedWord {
  const _RemoteReservedWord({
    required this.id,
    required this.class_,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteReservedWord.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'id',
          ))
        : (json['id'] as String);
    final class_ = json['class'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'class_',
          ))
        : (json['class'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ReservedWord',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteReservedWord(
      id: id,
      class_: class_,
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
  final String class_;

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
