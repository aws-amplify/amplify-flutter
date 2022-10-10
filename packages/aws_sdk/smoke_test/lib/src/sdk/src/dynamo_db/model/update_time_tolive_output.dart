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

library smoke_test.dynamo_db.model.update_time_tolive_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_tolive_specification.dart'
    as _i2;

part 'update_time_tolive_output.g.dart';

abstract class UpdateTimeToliveOutput
    with _i1.AWSEquatable<UpdateTimeToliveOutput>
    implements Built<UpdateTimeToliveOutput, UpdateTimeToliveOutputBuilder> {
  factory UpdateTimeToliveOutput(
      {_i2.TimeToliveSpecification? timeToliveSpecification}) {
    return _$UpdateTimeToliveOutput._(
        timeToliveSpecification: timeToliveSpecification);
  }

  factory UpdateTimeToliveOutput.build(
          [void Function(UpdateTimeToliveOutputBuilder) updates]) =
      _$UpdateTimeToliveOutput;

  const UpdateTimeToliveOutput._();

  /// Constructs a [UpdateTimeToliveOutput] from a [payload] and [response].
  factory UpdateTimeToliveOutput.fromResponse(
    UpdateTimeToliveOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    UpdateTimeToliveOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTimeToliveOutputBuilder b) {}

  /// Represents the output of an `UpdateTimeToLive` operation.
  _i2.TimeToliveSpecification? get timeToliveSpecification;
  @override
  List<Object?> get props => [timeToliveSpecification];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTimeToliveOutput');
    helper.add(
      'timeToliveSpecification',
      timeToliveSpecification,
    );
    return helper.toString();
  }
}

class UpdateTimeToliveOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateTimeToliveOutput> {
  const UpdateTimeToliveOutputAwsJson10Serializer()
      : super('UpdateTimeToliveOutput');

  @override
  Iterable<Type> get types => const [
        UpdateTimeToliveOutput,
        _$UpdateTimeToliveOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTimeToliveOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTimeToliveOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TimeToLiveSpecification':
          if (value != null) {
            result.timeToliveSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TimeToliveSpecification),
            ) as _i2.TimeToliveSpecification));
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
    final payload = (object as UpdateTimeToliveOutput);
    final result = <Object?>[];
    if (payload.timeToliveSpecification != null) {
      result
        ..add('TimeToLiveSpecification')
        ..add(serializers.serialize(
          payload.timeToliveSpecification!,
          specifiedType: const FullType(_i2.TimeToliveSpecification),
        ));
    }
    return result;
  }
}
