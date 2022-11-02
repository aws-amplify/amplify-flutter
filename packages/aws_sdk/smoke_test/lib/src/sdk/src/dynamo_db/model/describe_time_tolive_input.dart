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

library smoke_test.dynamo_db.model.describe_time_tolive_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_time_tolive_input.g.dart';

abstract class DescribeTimeToliveInput
    with
        _i1.HttpInput<DescribeTimeToliveInput>,
        _i2.AWSEquatable<DescribeTimeToliveInput>
    implements Built<DescribeTimeToliveInput, DescribeTimeToliveInputBuilder> {
  factory DescribeTimeToliveInput({required String tableName}) {
    return _$DescribeTimeToliveInput._(tableName: tableName);
  }

  factory DescribeTimeToliveInput.build(
          [void Function(DescribeTimeToliveInputBuilder) updates]) =
      _$DescribeTimeToliveInput;

  const DescribeTimeToliveInput._();

  factory DescribeTimeToliveInput.fromRequest(
    DescribeTimeToliveInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeTimeToliveInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTimeToliveInputBuilder b) {}

  /// The name of the table to be described.
  String get tableName;
  @override
  DescribeTimeToliveInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTimeToliveInput');
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class DescribeTimeToliveInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeTimeToliveInput> {
  const DescribeTimeToliveInputAwsJson10Serializer()
      : super('DescribeTimeToliveInput');

  @override
  Iterable<Type> get types => const [
        DescribeTimeToliveInput,
        _$DescribeTimeToliveInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTimeToliveInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTimeToliveInputBuilder();
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
    final payload = (object as DescribeTimeToliveInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
