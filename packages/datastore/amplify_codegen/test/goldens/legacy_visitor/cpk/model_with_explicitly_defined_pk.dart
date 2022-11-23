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

library models.model_with_explicitly_defined_pk;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

class ModelWithExplicitlyDefinedPkType extends ModelType<String,
    ModelWithExplicitlyDefinedPk, PartialModelWithExplicitlyDefinedPk> {
  const ModelWithExplicitlyDefinedPkType();

  @override
  T fromJson<T extends PartialModel<String, ModelWithExplicitlyDefinedPk>>(
    Map<String, Object?> json,
  ) {
    if (T == ModelWithExplicitlyDefinedPk ||
        T == Model<String, ModelWithExplicitlyDefinedPk>) {
      return ModelWithExplicitlyDefinedPk.fromJson(json) as T;
    }
    if (T == RemoteModelWithExplicitlyDefinedPk ||
        T == RemoteModel<String, ModelWithExplicitlyDefinedPk>) {
      return _RemoteModelWithExplicitlyDefinedPk.fromJson(json) as T;
    }
    return _PartialModelWithExplicitlyDefinedPk.fromJson(json) as T;
  }

  @override
  String get modelName => 'ModelWithExplicitlyDefinedPK';
}

class ModelWithExplicitlyDefinedPkQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ModelWithExplicitlyDefinedPkQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, ModelWithExplicitlyDefinedPk>? _root;

  /// Query field for the [ModelWithExplicitlyDefinedPk.modelId] field.
  QueryField<ModelIdentifier, M, String> get $modelId => NestedQueryField<
          ModelIdentifier, M, String, ModelWithExplicitlyDefinedPk, String>(
        const QueryField<String, ModelWithExplicitlyDefinedPk, String>(
          fieldName: 'modelID',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPk.title] field.
  QueryField<ModelIdentifier, M, String> get $title => NestedQueryField<
          ModelIdentifier, M, String, ModelWithExplicitlyDefinedPk, String>(
        const QueryField<String, ModelWithExplicitlyDefinedPk, String>(
          fieldName: 'title',
        ),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPk.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitlyDefinedPk,
          TemporalDateTime>(
        const QueryField<String, ModelWithExplicitlyDefinedPk,
            TemporalDateTime>(fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPk.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitlyDefinedPk,
          TemporalDateTime>(
        const QueryField<String, ModelWithExplicitlyDefinedPk,
            TemporalDateTime>(fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [ModelWithExplicitlyDefinedPk] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, ModelWithExplicitlyDefinedPk,
          String>(
        const QueryField<String, ModelWithExplicitlyDefinedPk, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialModelWithExplicitlyDefinedPk
    extends PartialModel<String, ModelWithExplicitlyDefinedPk>
    with AWSEquatable<PartialModelWithExplicitlyDefinedPk> {
  const PartialModelWithExplicitlyDefinedPk._();

  String get modelId;
  String? get title;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => modelId;
  @override
  ModelWithExplicitlyDefinedPkType get modelType =>
      ModelWithExplicitlyDefinedPk.classType;
  @override
  List<Object?> get props => [
        modelId,
        title,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'modelID': modelId,
        'title': title,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'ModelWithExplicitlyDefinedPk';
}

class _PartialModelWithExplicitlyDefinedPk
    extends PartialModelWithExplicitlyDefinedPk {
  const _PartialModelWithExplicitlyDefinedPk({
    required this.modelId,
    this.title,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialModelWithExplicitlyDefinedPk.fromJson(
    Map<String, Object?> json,
  ) {
    final modelId = json['modelID'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'modelId',
          ))
        : (json['modelID'] as String);
    final title = json['title'] == null ? null : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialModelWithExplicitlyDefinedPk(
      modelId: modelId,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String modelId;

  @override
  final String? title;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class ModelWithExplicitlyDefinedPk
    extends PartialModelWithExplicitlyDefinedPk
    implements Model<String, ModelWithExplicitlyDefinedPk> {
  factory ModelWithExplicitlyDefinedPk({
    String? modelId,
    required String title,
  }) = _ModelWithExplicitlyDefinedPk;

  const ModelWithExplicitlyDefinedPk._() : super._();

  factory ModelWithExplicitlyDefinedPk.fromJson(Map<String, Object?> json) {
    final modelId = json['modelID'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'modelId',
          ))
        : (json['modelID'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _ModelWithExplicitlyDefinedPk._(
      modelId: modelId,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const ModelWithExplicitlyDefinedPkType classType =
      ModelWithExplicitlyDefinedPkType();

  static const ModelWithExplicitlyDefinedPkQueryFields<String,
          ModelWithExplicitlyDefinedPk> _queryFields =
      ModelWithExplicitlyDefinedPkQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'ModelWithExplicitlyDefinedPK',
      'pluralName': 'ModelWithExplicitlyDefinedPKs',
      'fields': {
        'modelID': {
          'name': 'modelID',
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
          'primaryField': 'modelID',
          'sortKeyFields': [],
        }
      ],
    },
  )!;

  @override
  String get modelId;

  /// Query field for the [modelId] field.
  QueryField<String, ModelWithExplicitlyDefinedPk, String> get $modelId =>
      _queryFields.$modelId;

  /// Query field for the [modelId] field.
  @Deprecated(r'Use $modelId instead')
  QueryField<String, ModelWithExplicitlyDefinedPk, String> get MODEL_ID =>
      $modelId;
  @override
  String get title;

  /// Query field for the [title] field.
  QueryField<String, ModelWithExplicitlyDefinedPk, String> get $title =>
      _queryFields.$title;

  /// Query field for the [title] field.
  @Deprecated(r'Use $title instead')
  QueryField<String, ModelWithExplicitlyDefinedPk, String> get TITLE => $title;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, ModelWithExplicitlyDefinedPk, String>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, ModelWithExplicitlyDefinedPk, String>
      get MODEL_IDENTIFIER => $modelIdentifier;
  ModelWithExplicitlyDefinedPk copyWith({
    String? modelId,
    String? title,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _ModelWithExplicitlyDefinedPk._(
      modelId: modelId ?? this.modelId,
      title: title ?? this.title,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(
    QueryField<String, ModelWithExplicitlyDefinedPk, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'modelID':
        value = modelId;
        break;
      case r'title':
        value = title;
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

class _ModelWithExplicitlyDefinedPk extends ModelWithExplicitlyDefinedPk {
  _ModelWithExplicitlyDefinedPk({
    String? modelId,
    required this.title,
  })  : modelId = modelId ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _ModelWithExplicitlyDefinedPk._({
    required this.modelId,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String modelId;

  @override
  final String title;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteModelWithExplicitlyDefinedPk
    extends ModelWithExplicitlyDefinedPk
    implements RemoteModel<String, ModelWithExplicitlyDefinedPk> {
  const RemoteModelWithExplicitlyDefinedPk._() : super._();
}

class _RemoteModelWithExplicitlyDefinedPk
    extends RemoteModelWithExplicitlyDefinedPk {
  const _RemoteModelWithExplicitlyDefinedPk({
    required this.modelId,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteModelWithExplicitlyDefinedPk.fromJson(
    Map<String, Object?> json,
  ) {
    final modelId = json['modelID'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'modelId',
          ))
        : (json['modelID'] as String);
    final title = json['title'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'title',
          ))
        : (json['title'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'ModelWithExplicitlyDefinedPk',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteModelWithExplicitlyDefinedPk(
      modelId: modelId,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String modelId;

  @override
  final String title;

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
