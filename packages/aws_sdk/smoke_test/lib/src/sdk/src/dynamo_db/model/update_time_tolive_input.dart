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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_time_tolive_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_tolive_specification.dart'
    as _i3;

part 'update_time_tolive_input.g.dart';

/// Represents the input of an `UpdateTimeToLive` operation.
abstract class UpdateTimeToliveInput
    with
        _i1.HttpInput<UpdateTimeToliveInput>,
        _i2.AWSEquatable<UpdateTimeToliveInput>
    implements Built<UpdateTimeToliveInput, UpdateTimeToliveInputBuilder> {
  /// Represents the input of an `UpdateTimeToLive` operation.
  factory UpdateTimeToliveInput({
    required String tableName,
    required _i3.TimeToliveSpecification timeToliveSpecification,
  }) {
    return _$UpdateTimeToliveInput._(
      tableName: tableName,
      timeToliveSpecification: timeToliveSpecification,
    );
  }

  /// Represents the input of an `UpdateTimeToLive` operation.
  factory UpdateTimeToliveInput.build(
          [void Function(UpdateTimeToliveInputBuilder) updates]) =
      _$UpdateTimeToliveInput;

  const UpdateTimeToliveInput._();

  factory UpdateTimeToliveInput.fromRequest(
    UpdateTimeToliveInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UpdateTimeToliveInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTimeToliveInputBuilder b) {}

  /// The name of the table to be configured.
  String get tableName;

  /// Represents the settings used to enable or disable Time to Live for the specified table.
  _i3.TimeToliveSpecification get timeToliveSpecification;
  @override
  UpdateTimeToliveInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        timeToliveSpecification,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTimeToliveInput');
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'timeToliveSpecification',
      timeToliveSpecification,
    );
    return helper.toString();
  }
}

class UpdateTimeToliveInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateTimeToliveInput> {
  const UpdateTimeToliveInputAwsJson10Serializer()
      : super('UpdateTimeToliveInput');

  @override
  Iterable<Type> get types => const [
        UpdateTimeToliveInput,
        _$UpdateTimeToliveInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTimeToliveInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTimeToliveInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TimeToLiveSpecification':
          result.timeToliveSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TimeToliveSpecification),
          ) as _i3.TimeToliveSpecification));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as UpdateTimeToliveInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
      'TimeToLiveSpecification',
      serializers.serialize(
        payload.timeToliveSpecification,
        specifiedType: const FullType(_i3.TimeToliveSpecification),
      ),
    ];
    return result;
  }
}
