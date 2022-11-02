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

library smoke_test.dynamo_db.model.time_tolive_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_tolive_status.dart'
    as _i2;

part 'time_tolive_description.g.dart';

/// The description of the Time to Live (TTL) status on the specified table.
abstract class TimeToliveDescription
    with _i1.AWSEquatable<TimeToliveDescription>
    implements Built<TimeToliveDescription, TimeToliveDescriptionBuilder> {
  /// The description of the Time to Live (TTL) status on the specified table.
  factory TimeToliveDescription({
    String? attributeName,
    _i2.TimeToliveStatus? timeToliveStatus,
  }) {
    return _$TimeToliveDescription._(
      attributeName: attributeName,
      timeToliveStatus: timeToliveStatus,
    );
  }

  /// The description of the Time to Live (TTL) status on the specified table.
  factory TimeToliveDescription.build(
          [void Function(TimeToliveDescriptionBuilder) updates]) =
      _$TimeToliveDescription;

  const TimeToliveDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    TimeToliveDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimeToliveDescriptionBuilder b) {}

  /// The name of the TTL attribute for items in the table.
  String? get attributeName;

  /// The TTL status for the table.
  _i2.TimeToliveStatus? get timeToliveStatus;
  @override
  List<Object?> get props => [
        attributeName,
        timeToliveStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TimeToliveDescription');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'timeToliveStatus',
      timeToliveStatus,
    );
    return helper.toString();
  }
}

class TimeToliveDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<TimeToliveDescription> {
  const TimeToliveDescriptionAwsJson10Serializer()
      : super('TimeToliveDescription');

  @override
  Iterable<Type> get types => const [
        TimeToliveDescription,
        _$TimeToliveDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TimeToliveDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeToliveDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeName':
          if (value != null) {
            result.attributeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TimeToLiveStatus':
          if (value != null) {
            result.timeToliveStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TimeToliveStatus),
            ) as _i2.TimeToliveStatus);
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
    final payload = (object as TimeToliveDescription);
    final result = <Object?>[];
    if (payload.attributeName != null) {
      result
        ..add('AttributeName')
        ..add(serializers.serialize(
          payload.attributeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timeToliveStatus != null) {
      result
        ..add('TimeToLiveStatus')
        ..add(serializers.serialize(
          payload.timeToliveStatus!,
          specifiedType: const FullType(_i2.TimeToliveStatus),
        ));
    }
    return result;
  }
}
