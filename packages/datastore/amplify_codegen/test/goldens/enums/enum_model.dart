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

library models.enum_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';

import 'my_enum.dart';

class EnumModelType extends ModelType<String, EnumModel, PartialEnumModel> {
  const EnumModelType();

  @override
  T fromJson<T extends PartialModel<String, EnumModel>>(
      Map<String, Object?> json) {
    if (T == EnumModel || T == Model<String, EnumModel>) {
      return EnumModel.fromJson(json) as T;
    }
    if (T == RemoteEnumModel || T == RemoteModel<String, EnumModel>) {
      return _RemoteEnumModel.fromJson(json) as T;
    }
    return _PartialEnumModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'EnumModel';
}

abstract class PartialEnumModel extends PartialModel<String, EnumModel>
    with AWSEquatable<PartialEnumModel> {
  const PartialEnumModel._();

  String get id;
  MyEnum? get enum_;
  MyEnum? get requiredEnum;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  EnumModelType get modelType => EnumModel.classType;
  @override
  List<Object?> get props => [
        id,
        enum_,
        requiredEnum,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'enum': enum_?.value,
        'requiredEnum': requiredEnum?.value,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'EnumModel';
  @override
  T valueFor<T extends Object?>(QueryField<String, EnumModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'enum':
        value = enum_;
        break;
      case r'requiredEnum':
        value = requiredEnum;
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

class _PartialEnumModel extends PartialEnumModel {
  _PartialEnumModel({
    required this.id,
    this.enum_,
    this.requiredEnum,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialEnumModel.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? throw ModelFieldError(
            'EnumModel',
            'id',
          )
        : (json['id'] as String);
    final enum_ =
        json['enum'] == null ? null : MyEnum.fromJson((json['enum'] as String));
    final requiredEnum = json['requiredEnum'] == null
        ? null
        : MyEnum.fromJson((json['requiredEnum'] as String));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialEnumModel(
      id: id,
      enum_: enum_,
      requiredEnum: requiredEnum,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final MyEnum? enum_;

  @override
  final MyEnum? requiredEnum;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class EnumModel extends PartialEnumModel
    implements Model<String, EnumModel> {
  factory EnumModel({
    String? id,
    MyEnum? enum_,
    required MyEnum requiredEnum,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
  }) = _EnumModel;

  const EnumModel._() : super._();

  factory EnumModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  static const EnumModelType classType = EnumModelType();

  String get id;
  MyEnum? get enum_;
  MyEnum get requiredEnum;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
}

class _EnumModel extends EnumModel {
  _EnumModel({
    String? id,
    this.enum_,
    required this.requiredEnum,
    this.createdAt,
    this.updatedAt,
  })  : id = id ?? uuid(),
        super._();

  @override
  final String id;

  @override
  final MyEnum? enum_;

  @override
  final MyEnum requiredEnum;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemoteEnumModel extends EnumModel
    implements RemoteModel<String, EnumModel> {
  const RemoteEnumModel._() : super._();
}

class _RemoteEnumModel extends RemoteEnumModel {
  _RemoteEnumModel({
    required this.id,
    this.enum_,
    required this.requiredEnum,
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteEnumModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String id;

  @override
  final MyEnum? enum_;

  @override
  final MyEnum requiredEnum;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
