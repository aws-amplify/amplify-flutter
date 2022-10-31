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

library smoke_test.dynamo_db.model.describe_time_tolive_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_tolive_description.dart'
    as _i2;

part 'describe_time_tolive_output.g.dart';

abstract class DescribeTimeToliveOutput
    with _i1.AWSEquatable<DescribeTimeToliveOutput>
    implements
        Built<DescribeTimeToliveOutput, DescribeTimeToliveOutputBuilder> {
  factory DescribeTimeToliveOutput(
      {_i2.TimeToliveDescription? timeToliveDescription}) {
    return _$DescribeTimeToliveOutput._(
        timeToliveDescription: timeToliveDescription);
  }

  factory DescribeTimeToliveOutput.build(
          [void Function(DescribeTimeToliveOutputBuilder) updates]) =
      _$DescribeTimeToliveOutput;

  const DescribeTimeToliveOutput._();

  /// Constructs a [DescribeTimeToliveOutput] from a [payload] and [response].
  factory DescribeTimeToliveOutput.fromResponse(
    DescribeTimeToliveOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DescribeTimeToliveOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTimeToliveOutputBuilder b) {}

  _i2.TimeToliveDescription? get timeToliveDescription;
  @override
  List<Object?> get props => [timeToliveDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTimeToliveOutput');
    helper.add(
      'timeToliveDescription',
      timeToliveDescription,
    );
    return helper.toString();
  }
}

class DescribeTimeToliveOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeTimeToliveOutput> {
  const DescribeTimeToliveOutputAwsJson10Serializer()
      : super('DescribeTimeToliveOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTimeToliveOutput,
        _$DescribeTimeToliveOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTimeToliveOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTimeToliveOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TimeToLiveDescription':
          if (value != null) {
            result.timeToliveDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TimeToliveDescription),
            ) as _i2.TimeToliveDescription));
          }
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
    final payload = (object as DescribeTimeToliveOutput);
    final result = <Object?>[];
    if (payload.timeToliveDescription != null) {
      result
        ..add('TimeToLiveDescription')
        ..add(serializers.serialize(
          payload.timeToliveDescription!,
          specifiedType: const FullType(_i2.TimeToliveDescription),
        ));
    }
    return result;
  }
}
