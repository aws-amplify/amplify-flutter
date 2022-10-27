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

library smoke_test.dynamo_db.model.export_table_topoint_intime_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_description.dart'
    as _i2;

part 'export_table_topoint_intime_output.g.dart';

abstract class ExportTableTopointIntimeOutput
    with
        _i1.AWSEquatable<ExportTableTopointIntimeOutput>
    implements
        Built<ExportTableTopointIntimeOutput,
            ExportTableTopointIntimeOutputBuilder> {
  factory ExportTableTopointIntimeOutput(
      {_i2.ExportDescription? exportDescription}) {
    return _$ExportTableTopointIntimeOutput._(
        exportDescription: exportDescription);
  }

  factory ExportTableTopointIntimeOutput.build(
          [void Function(ExportTableTopointIntimeOutputBuilder) updates]) =
      _$ExportTableTopointIntimeOutput;

  const ExportTableTopointIntimeOutput._();

  /// Constructs a [ExportTableTopointIntimeOutput] from a [payload] and [response].
  factory ExportTableTopointIntimeOutput.fromResponse(
    ExportTableTopointIntimeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ExportTableTopointIntimeOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTableTopointIntimeOutputBuilder b) {}

  /// Contains a description of the table export.
  _i2.ExportDescription? get exportDescription;
  @override
  List<Object?> get props => [exportDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ExportTableTopointIntimeOutput');
    helper.add(
      'exportDescription',
      exportDescription,
    );
    return helper.toString();
  }
}

class ExportTableTopointIntimeOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ExportTableTopointIntimeOutput> {
  const ExportTableTopointIntimeOutputAwsJson10Serializer()
      : super('ExportTableTopointIntimeOutput');

  @override
  Iterable<Type> get types => const [
        ExportTableTopointIntimeOutput,
        _$ExportTableTopointIntimeOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportTableTopointIntimeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTableTopointIntimeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExportDescription':
          if (value != null) {
            result.exportDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportDescription),
            ) as _i2.ExportDescription));
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
    final payload = (object as ExportTableTopointIntimeOutput);
    final result = <Object?>[];
    if (payload.exportDescription != null) {
      result
        ..add('ExportDescription')
        ..add(serializers.serialize(
          payload.exportDescription!,
          specifiedType: const FullType(_i2.ExportDescription),
        ));
    }
    return result;
  }
}
