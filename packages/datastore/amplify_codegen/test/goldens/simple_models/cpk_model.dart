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

library models.cpk_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

@immutable
class CpkModelIdentifier
    with
        AWSEquatable<CpkModelIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const CpkModelIdentifier({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;

  final String lastName;

  @override
  List<Object?> get props => [
        firstName,
        lastName,
      ];
  @override
  Map<String, Object?> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
      };
  @override
  String get runtimeTypeName => 'CpkModelIdentifier';
}

class CpkModelType
    extends ModelType<CpkModelIdentifier, CpkModel, PartialCpkModel> {
  const CpkModelType();

  @override
  T fromJson<T extends PartialModel<CpkModelIdentifier, CpkModel>>(
      Map<String, Object?> json) {
    if (T == CpkModel || T == Model<CpkModelIdentifier, CpkModel>) {
      return CpkModel.fromJson(json) as T;
    }
    if (T == RemoteCpkModel || T == RemoteModel<CpkModelIdentifier, CpkModel>) {
      return _RemoteCpkModel.fromJson(json) as T;
    }
    return _PartialCpkModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'CPKModel';
}

abstract class PartialCpkModel
    extends PartialModel<CpkModelIdentifier, CpkModel>
    with AWSEquatable<PartialCpkModel> {
  const PartialCpkModel._();

  String get firstName;
  String get lastName;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  CpkModelIdentifier get modelIdentifier => CpkModelIdentifier(
        firstName: firstName,
        lastName: lastName,
      );
  @override
  CpkModelType get modelType => CpkModel.classType;
  @override
  List<Object?> get props => [
        firstName,
        lastName,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
  @override
  String get runtimeTypeName => 'CpkModel';
  @override
  T valueFor<T extends Object?>(
      QueryField<CpkModelIdentifier, CpkModel, T> field) {
    throw UnimplementedError();
  }
}

class _PartialCpkModel extends PartialCpkModel {
  _PartialCpkModel({
    required this.firstName,
    required this.lastName,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialCpkModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String firstName;

  @override
  final String lastName;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class CpkModel extends PartialCpkModel
    implements Model<CpkModelIdentifier, CpkModel> {
  factory CpkModel({
    required String firstName,
    required String lastName,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
  }) = _CpkModel;

  const CpkModel._() : super._();

  factory CpkModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  static const CpkModelType classType = CpkModelType();

  String get firstName;
  String get lastName;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
}

class _CpkModel extends CpkModel {
  _CpkModel({
    required this.firstName,
    required this.lastName,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  @override
  final String firstName;

  @override
  final String lastName;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemoteCpkModel extends CpkModel
    implements RemoteModel<CpkModelIdentifier, CpkModel> {
  const RemoteCpkModel._() : super._();
}

class _RemoteCpkModel extends RemoteCpkModel {
  _RemoteCpkModel({
    required this.firstName,
    required this.lastName,
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteCpkModel.fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  final String firstName;

  @override
  final String lastName;

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
