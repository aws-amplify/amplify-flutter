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

library smoke_test.dynamo_db.model.restore_table_topoint_intime_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_description.dart'
    as _i2;

part 'restore_table_topoint_intime_output.g.dart';

abstract class RestoreTableTopointIntimeOutput
    with
        _i1.AWSEquatable<RestoreTableTopointIntimeOutput>
    implements
        Built<RestoreTableTopointIntimeOutput,
            RestoreTableTopointIntimeOutputBuilder> {
  factory RestoreTableTopointIntimeOutput(
      {_i2.TableDescription? tableDescription}) {
    return _$RestoreTableTopointIntimeOutput._(
        tableDescription: tableDescription);
  }

  factory RestoreTableTopointIntimeOutput.build(
          [void Function(RestoreTableTopointIntimeOutputBuilder) updates]) =
      _$RestoreTableTopointIntimeOutput;

  const RestoreTableTopointIntimeOutput._();

  /// Constructs a [RestoreTableTopointIntimeOutput] from a [payload] and [response].
  factory RestoreTableTopointIntimeOutput.fromResponse(
    RestoreTableTopointIntimeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RestoreTableTopointIntimeOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableTopointIntimeOutputBuilder b) {}

  /// Represents the properties of a table.
  _i2.TableDescription? get tableDescription;
  @override
  List<Object?> get props => [tableDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreTableTopointIntimeOutput');
    helper.add(
      'tableDescription',
      tableDescription,
    );
    return helper.toString();
  }
}

class RestoreTableTopointIntimeOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<RestoreTableTopointIntimeOutput> {
  const RestoreTableTopointIntimeOutputAwsJson10Serializer()
      : super('RestoreTableTopointIntimeOutput');

  @override
  Iterable<Type> get types => const [
        RestoreTableTopointIntimeOutput,
        _$RestoreTableTopointIntimeOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreTableTopointIntimeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreTableTopointIntimeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TableDescription':
          if (value != null) {
            result.tableDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TableDescription),
            ) as _i2.TableDescription));
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
    final payload = (object as RestoreTableTopointIntimeOutput);
    final result = <Object?>[];
    if (payload.tableDescription != null) {
      result
        ..add('TableDescription')
        ..add(serializers.serialize(
          payload.tableDescription!,
          specifiedType: const FullType(_i2.TableDescription),
        ));
    }
    return result;
  }
}
