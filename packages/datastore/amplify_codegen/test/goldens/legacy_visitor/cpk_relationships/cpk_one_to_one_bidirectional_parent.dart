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

library models.cpk_one_to_one_bidirectional_parent;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'cpk_one_to_one_bidirectional_child_explicit.dart';

@immutable
class CpkOneToOneBidirectionalParentIdentifier
    with
        AWSEquatable<CpkOneToOneBidirectionalParentIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const CpkOneToOneBidirectionalParentIdentifier({
    required this.id,
    required this.name,
  });

  final String id;

  final String name;

  @override
  List<Object?> get props => [
        id,
        name,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
      };
  @override
  String get runtimeTypeName => 'CpkOneToOneBidirectionalParentIdentifier';
}

class CpkOneToOneBidirectionalParentType extends ModelType<
    CpkOneToOneBidirectionalParentIdentifier,
    CpkOneToOneBidirectionalParent,
    PartialCpkOneToOneBidirectionalParent> {
  const CpkOneToOneBidirectionalParentType();

  @override
  T fromJson<
      T extends PartialModel<CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent>>(Map<String, Object?> json) {
    if (T == CpkOneToOneBidirectionalParent ||
        T ==
            Model<CpkOneToOneBidirectionalParentIdentifier,
                CpkOneToOneBidirectionalParent>) {
      return CpkOneToOneBidirectionalParent.fromJson(json) as T;
    }
    if (T == RemoteCpkOneToOneBidirectionalParent ||
        T ==
            RemoteModel<CpkOneToOneBidirectionalParentIdentifier,
                CpkOneToOneBidirectionalParent>) {
      return _RemoteCpkOneToOneBidirectionalParent.fromJson(json) as T;
    }
    return _PartialCpkOneToOneBidirectionalParent.fromJson(json) as T;
  }

  @override
  String get modelName => 'CpkOneToOneBidirectionalParent';
}

class CpkOneToOneBidirectionalParentQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const CpkOneToOneBidirectionalParentQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, CpkOneToOneBidirectionalParent>? _root;

  /// Query field for the [CpkOneToOneBidirectionalParent.id] field.
  QueryField<ModelIdentifier, M, String> get $id => NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent,
          String>(
        const QueryField<CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalParent.name] field.
  QueryField<ModelIdentifier, M, String> get $name => NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent,
          String>(
        const QueryField<CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalParent.explicitChild] field.
  CpkOneToOneBidirectionalChildExplicitQueryFields<ModelIdentifier, M>
      get $explicitChild => CpkOneToOneBidirectionalChildExplicitQueryFields(
            NestedQueryField<
                ModelIdentifier,
                M,
                CpkOneToOneBidirectionalParentIdentifier,
                CpkOneToOneBidirectionalParent,
                CpkOneToOneBidirectionalChildExplicit>(
              const QueryField<
                  CpkOneToOneBidirectionalParentIdentifier,
                  CpkOneToOneBidirectionalParent,
                  CpkOneToOneBidirectionalChildExplicit>(
                fieldName: 'explicitChild',
              ),
              root: _root,
            ),
          );

  /// Query field for the [CpkOneToOneBidirectionalParent.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent,
          TemporalDateTime>(
        const QueryField<
            CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent,
            TemporalDateTime>(fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalParent.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<
          ModelIdentifier,
          M,
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent,
          TemporalDateTime>(
        const QueryField<
            CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent,
            TemporalDateTime>(fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [CpkOneToOneBidirectionalParent.cpkOneToOneBidirectionalParentExplicitChildId] field.
  QueryField<ModelIdentifier, M, String?>
      get $cpkOneToOneBidirectionalParentExplicitChildId => NestedQueryField<
              ModelIdentifier,
              M,
              CpkOneToOneBidirectionalParentIdentifier,
              CpkOneToOneBidirectionalParent,
              String?>(
            const QueryField<CpkOneToOneBidirectionalParentIdentifier,
                CpkOneToOneBidirectionalParent, String?>(
              fieldName: 'cpkOneToOneBidirectionalParentExplicitChildId',
            ),
            root: _root,
          );

  /// Query field for the [CpkOneToOneBidirectionalParent.cpkOneToOneBidirectionalParentExplicitChildName] field.
  QueryField<ModelIdentifier, M, String?>
      get $cpkOneToOneBidirectionalParentExplicitChildName => NestedQueryField<
              ModelIdentifier,
              M,
              CpkOneToOneBidirectionalParentIdentifier,
              CpkOneToOneBidirectionalParent,
              String?>(
            const QueryField<CpkOneToOneBidirectionalParentIdentifier,
                CpkOneToOneBidirectionalParent, String?>(
              fieldName: 'cpkOneToOneBidirectionalParentExplicitChildName',
            ),
            root: _root,
          );

  /// Query field for the [CpkOneToOneBidirectionalParent] model identifier.
  QueryField<ModelIdentifier, M, CpkOneToOneBidirectionalParentIdentifier>
      get $modelIdentifier => NestedQueryField<
              ModelIdentifier,
              M,
              CpkOneToOneBidirectionalParentIdentifier,
              CpkOneToOneBidirectionalParent,
              CpkOneToOneBidirectionalParentIdentifier>(
            const QueryField<
                CpkOneToOneBidirectionalParentIdentifier,
                CpkOneToOneBidirectionalParent,
                CpkOneToOneBidirectionalParentIdentifier>(
              fieldName: 'modelIdentifier',
            ),
            root: _root,
          );
}

abstract class PartialCpkOneToOneBidirectionalParent extends PartialModel<
        CpkOneToOneBidirectionalParentIdentifier,
        CpkOneToOneBidirectionalParent>
    with AWSEquatable<PartialCpkOneToOneBidirectionalParent> {
  const PartialCpkOneToOneBidirectionalParent._();

  String get id;
  String get name;
  AsyncModel<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit>? get explicitChild;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get cpkOneToOneBidirectionalParentExplicitChildId;
  String? get cpkOneToOneBidirectionalParentExplicitChildName;
  @override
  CpkOneToOneBidirectionalParentIdentifier get modelIdentifier =>
      CpkOneToOneBidirectionalParentIdentifier(
        id: id,
        name: name,
      );
  @override
  CpkOneToOneBidirectionalParentType get modelType =>
      CpkOneToOneBidirectionalParent.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        explicitChild,
        createdAt,
        updatedAt,
        cpkOneToOneBidirectionalParentExplicitChildId,
        cpkOneToOneBidirectionalParentExplicitChildName,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'explicitChild': explicitChild?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'cpkOneToOneBidirectionalParentExplicitChildId':
            cpkOneToOneBidirectionalParentExplicitChildId,
        'cpkOneToOneBidirectionalParentExplicitChildName':
            cpkOneToOneBidirectionalParentExplicitChildName,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'CpkOneToOneBidirectionalParent';
}

class _PartialCpkOneToOneBidirectionalParent
    extends PartialCpkOneToOneBidirectionalParent {
  const _PartialCpkOneToOneBidirectionalParent({
    required this.id,
    required this.name,
    this.explicitChild,
    this.createdAt,
    this.updatedAt,
    this.cpkOneToOneBidirectionalParentExplicitChildId,
    this.cpkOneToOneBidirectionalParentExplicitChildName,
  }) : super._();

  factory _PartialCpkOneToOneBidirectionalParent.fromJson(
    Map<String, Object?> json,
  ) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'name',
          ))
        : (json['name'] as String);
    final explicitChild = json['explicitChild'] == null
        ? null
        : AsyncModel<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            PartialCpkOneToOneBidirectionalChildExplicit,
            PartialCpkOneToOneBidirectionalChildExplicit>.fromModel(
            CpkOneToOneBidirectionalChildExplicit.classType
                .fromJson<PartialCpkOneToOneBidirectionalChildExplicit>(
              (json['explicitChild'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final cpkOneToOneBidirectionalParentExplicitChildId =
        json['cpkOneToOneBidirectionalParentExplicitChildId'] == null
            ? null
            : (json['cpkOneToOneBidirectionalParentExplicitChildId'] as String);
    final cpkOneToOneBidirectionalParentExplicitChildName =
        json['cpkOneToOneBidirectionalParentExplicitChildName'] == null
            ? null
            : (json['cpkOneToOneBidirectionalParentExplicitChildName']
                as String);
    return _PartialCpkOneToOneBidirectionalParent(
      id: id,
      name: name,
      explicitChild: explicitChild,
      createdAt: createdAt,
      updatedAt: updatedAt,
      cpkOneToOneBidirectionalParentExplicitChildId:
          cpkOneToOneBidirectionalParentExplicitChildId,
      cpkOneToOneBidirectionalParentExplicitChildName:
          cpkOneToOneBidirectionalParentExplicitChildName,
    );
  }

  @override
  final String id;

  @override
  final String name;

  @override
  final AsyncModel<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit>? explicitChild;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? cpkOneToOneBidirectionalParentExplicitChildId;

  @override
  final String? cpkOneToOneBidirectionalParentExplicitChildName;
}

abstract class CpkOneToOneBidirectionalParent
    extends PartialCpkOneToOneBidirectionalParent
    implements
        Model<CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent> {
  factory CpkOneToOneBidirectionalParent({
    String? id,
    required String name,
    CpkOneToOneBidirectionalChildExplicit? explicitChild,
    String? cpkOneToOneBidirectionalParentExplicitChildId,
    String? cpkOneToOneBidirectionalParentExplicitChildName,
  }) = _CpkOneToOneBidirectionalParent;

  const CpkOneToOneBidirectionalParent._() : super._();

  factory CpkOneToOneBidirectionalParent.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'name',
          ))
        : (json['name'] as String);
    final explicitChild = json['explicitChild'] == null
        ? null
        : AsyncModel<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            PartialCpkOneToOneBidirectionalChildExplicit,
            CpkOneToOneBidirectionalChildExplicit>.fromModel(
            CpkOneToOneBidirectionalChildExplicit.classType
                .fromJson<CpkOneToOneBidirectionalChildExplicit>(
              (json['explicitChild'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final cpkOneToOneBidirectionalParentExplicitChildId =
        json['cpkOneToOneBidirectionalParentExplicitChildId'] == null
            ? null
            : (json['cpkOneToOneBidirectionalParentExplicitChildId'] as String);
    final cpkOneToOneBidirectionalParentExplicitChildName =
        json['cpkOneToOneBidirectionalParentExplicitChildName'] == null
            ? null
            : (json['cpkOneToOneBidirectionalParentExplicitChildName']
                as String);
    return _CpkOneToOneBidirectionalParent._(
      id: id,
      name: name,
      explicitChild: explicitChild,
      createdAt: createdAt,
      updatedAt: updatedAt,
      cpkOneToOneBidirectionalParentExplicitChildId:
          cpkOneToOneBidirectionalParentExplicitChildId,
      cpkOneToOneBidirectionalParentExplicitChildName:
          cpkOneToOneBidirectionalParentExplicitChildName,
    );
  }

  static const CpkOneToOneBidirectionalParentType classType =
      CpkOneToOneBidirectionalParentType();

  static const CpkOneToOneBidirectionalParentQueryFields<
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent> _queryFields =
      CpkOneToOneBidirectionalParentQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
      CpkOneToOneBidirectionalParent, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
      CpkOneToOneBidirectionalParent, String> get ID => $id;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
      CpkOneToOneBidirectionalParent, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
      CpkOneToOneBidirectionalParent, String> get NAME => $name;
  @override
  AsyncModel<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit,
      CpkOneToOneBidirectionalChildExplicit>? get explicitChild;

  /// Query field for the [explicitChild] field.
  CpkOneToOneBidirectionalChildExplicitQueryFields<
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent>
      get $explicitChild => _queryFields.$explicitChild;

  /// Query field for the [explicitChild] field.
  @Deprecated(r'Use $explicitChild instead')
  CpkOneToOneBidirectionalChildExplicitQueryFields<
      CpkOneToOneBidirectionalParentIdentifier,
      CpkOneToOneBidirectionalParent> get EXPLICIT_CHILD => $explicitChild;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get cpkOneToOneBidirectionalParentExplicitChildId;

  /// Query field for the [cpkOneToOneBidirectionalParentExplicitChildId] field.
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent, String?>
      get $cpkOneToOneBidirectionalParentExplicitChildId =>
          _queryFields.$cpkOneToOneBidirectionalParentExplicitChildId;

  /// Query field for the [cpkOneToOneBidirectionalParentExplicitChildId] field.
  @Deprecated(r'Use $cpkOneToOneBidirectionalParentExplicitChildId instead')
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent, String?>
      get CPK_ONE_TO_ONE_BIDIRECTIONAL_PARENT_EXPLICIT_CHILD_ID =>
          $cpkOneToOneBidirectionalParentExplicitChildId;
  @override
  String? get cpkOneToOneBidirectionalParentExplicitChildName;

  /// Query field for the [cpkOneToOneBidirectionalParentExplicitChildName] field.
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent, String?>
      get $cpkOneToOneBidirectionalParentExplicitChildName =>
          _queryFields.$cpkOneToOneBidirectionalParentExplicitChildName;

  /// Query field for the [cpkOneToOneBidirectionalParentExplicitChildName] field.
  @Deprecated(r'Use $cpkOneToOneBidirectionalParentExplicitChildName instead')
  QueryField<CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent, String?>
      get CPK_ONE_TO_ONE_BIDIRECTIONAL_PARENT_EXPLICIT_CHILD_NAME =>
          $cpkOneToOneBidirectionalParentExplicitChildName;

  /// Query field for the [modelIdentifier] field.
  QueryField<
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent,
          CpkOneToOneBidirectionalParentIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<
          CpkOneToOneBidirectionalParentIdentifier,
          CpkOneToOneBidirectionalParent,
          CpkOneToOneBidirectionalParentIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
  @override
  T valueFor<T extends Object?>(
    QueryField<CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent, T>
        field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'explicitChild':
        value = explicitChild;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'cpkOneToOneBidirectionalParentExplicitChildId':
        value = cpkOneToOneBidirectionalParentExplicitChildId;
        break;
      case r'cpkOneToOneBidirectionalParentExplicitChildName':
        value = cpkOneToOneBidirectionalParentExplicitChildName;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _CpkOneToOneBidirectionalParent extends CpkOneToOneBidirectionalParent {
  _CpkOneToOneBidirectionalParent({
    String? id,
    required this.name,
    CpkOneToOneBidirectionalChildExplicit? explicitChild,
    this.cpkOneToOneBidirectionalParentExplicitChildId,
    this.cpkOneToOneBidirectionalParentExplicitChildName,
  })  : id = id ?? uuid(),
        explicitChild =
            explicitChild == null ? null : AsyncModel.fromModel(explicitChild),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _CpkOneToOneBidirectionalParent._({
    required this.id,
    required this.name,
    this.explicitChild,
    required this.createdAt,
    required this.updatedAt,
    this.cpkOneToOneBidirectionalParentExplicitChildId,
    this.cpkOneToOneBidirectionalParentExplicitChildName,
  }) : super._();

  @override
  final String id;

  @override
  final String name;

  @override
  final AsyncModel<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit,
      CpkOneToOneBidirectionalChildExplicit>? explicitChild;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? cpkOneToOneBidirectionalParentExplicitChildId;

  @override
  final String? cpkOneToOneBidirectionalParentExplicitChildName;
}

abstract class RemoteCpkOneToOneBidirectionalParent
    extends CpkOneToOneBidirectionalParent
    implements
        RemoteModel<CpkOneToOneBidirectionalParentIdentifier,
            CpkOneToOneBidirectionalParent> {
  const RemoteCpkOneToOneBidirectionalParent._() : super._();
}

class _RemoteCpkOneToOneBidirectionalParent
    extends RemoteCpkOneToOneBidirectionalParent {
  const _RemoteCpkOneToOneBidirectionalParent({
    required this.id,
    required this.name,
    this.explicitChild,
    required this.createdAt,
    required this.updatedAt,
    this.cpkOneToOneBidirectionalParentExplicitChildId,
    this.cpkOneToOneBidirectionalParentExplicitChildName,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteCpkOneToOneBidirectionalParent.fromJson(
    Map<String, Object?> json,
  ) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'name',
          ))
        : (json['name'] as String);
    final explicitChild = json['explicitChild'] == null
        ? null
        : AsyncModel<
            CpkOneToOneBidirectionalChildExplicitIdentifier,
            CpkOneToOneBidirectionalChildExplicit,
            PartialCpkOneToOneBidirectionalChildExplicit,
            RemoteCpkOneToOneBidirectionalChildExplicit>.fromModel(
            CpkOneToOneBidirectionalChildExplicit.classType
                .fromJson<RemoteCpkOneToOneBidirectionalChildExplicit>(
              (json['explicitChild'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final cpkOneToOneBidirectionalParentExplicitChildId =
        json['cpkOneToOneBidirectionalParentExplicitChildId'] == null
            ? null
            : (json['cpkOneToOneBidirectionalParentExplicitChildId'] as String);
    final cpkOneToOneBidirectionalParentExplicitChildName =
        json['cpkOneToOneBidirectionalParentExplicitChildName'] == null
            ? null
            : (json['cpkOneToOneBidirectionalParentExplicitChildName']
                as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'CpkOneToOneBidirectionalParent',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteCpkOneToOneBidirectionalParent(
      id: id,
      name: name,
      explicitChild: explicitChild,
      createdAt: createdAt,
      updatedAt: updatedAt,
      cpkOneToOneBidirectionalParentExplicitChildId:
          cpkOneToOneBidirectionalParentExplicitChildId,
      cpkOneToOneBidirectionalParentExplicitChildName:
          cpkOneToOneBidirectionalParentExplicitChildName,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String name;

  @override
  final AsyncModel<
      CpkOneToOneBidirectionalChildExplicitIdentifier,
      CpkOneToOneBidirectionalChildExplicit,
      PartialCpkOneToOneBidirectionalChildExplicit,
      RemoteCpkOneToOneBidirectionalChildExplicit>? explicitChild;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? cpkOneToOneBidirectionalParentExplicitChildId;

  @override
  final String? cpkOneToOneBidirectionalParentExplicitChildName;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
