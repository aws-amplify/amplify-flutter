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

library models.my_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';

class MyModelType extends ModelType<String, MyModel, PartialMyModel> {
  const MyModelType();

  @override
  T fromJson<T extends PartialModel<String, MyModel>>(
      Map<String, Object?> json) {
    if (T == MyModel || T == Model<String, MyModel>) {
      return MyModel.fromJson(json) as T;
    }
    if (T == RemoteMyModel || T == RemoteModel<String, MyModel>) {
      return _RemoteMyModel.fromJson(json) as T;
    }
    return _PartialMyModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'MyModel';
}

abstract class PartialMyModel extends PartialModel<String, MyModel>
    with AWSEquatable<PartialMyModel> {
  const PartialMyModel._();

  String? get enum_;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  MyModelType get modelType => MyModel.classType;
  @override
  List<Object?> get props => [
        enum_,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'enum': enum_,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'id': id,
      };
  @override
  String get runtimeTypeName => 'MyModel';
  @override
  T valueFor<T extends Object?>(QueryField<String, MyModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'enum':
        value = enum_;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'id':
        value = id;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _PartialMyModel extends PartialMyModel {
  _PartialMyModel({
    this.enum_,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialMyModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String? enum_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class MyModel extends PartialMyModel
    implements Model<String, MyModel> {
  factory MyModel({
    required String enum_,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
    String? id,
  }) = _MyModel;

  const MyModel._() : super._();

  factory MyModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  static const MyModelType classType = MyModelType();

  String get enum_;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
}

class _MyModel extends MyModel {
  _MyModel({
    required this.enum_,
    this.createdAt,
    this.updatedAt,
    String? id,
  })  : id = id ?? uuid(),
        super._();

  @override
  final String enum_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class RemoteMyModel extends MyModel
    implements RemoteModel<String, MyModel> {
  const RemoteMyModel._() : super._();
}

class _RemoteMyModel extends RemoteMyModel {
  _RemoteMyModel({
    required this.enum_,
    this.createdAt,
    this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteMyModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String enum_;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
