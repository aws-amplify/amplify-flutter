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

library smoke_test.config_service.model.describe_compliance_byresource_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_byresource.dart'
    as _i3;

part 'describe_compliance_byresource_response.g.dart';

abstract class DescribeComplianceByresourceResponse
    with
        _i1.AWSEquatable<DescribeComplianceByresourceResponse>
    implements
        Built<DescribeComplianceByresourceResponse,
            DescribeComplianceByresourceResponseBuilder> {
  factory DescribeComplianceByresourceResponse({
    _i2.BuiltList<_i3.ComplianceByresource>? complianceByresources,
    String? nextToken,
  }) {
    return _$DescribeComplianceByresourceResponse._(
      complianceByresources: complianceByresources,
      nextToken: nextToken,
    );
  }

  factory DescribeComplianceByresourceResponse.build(
      [void Function(DescribeComplianceByresourceResponseBuilder)
          updates]) = _$DescribeComplianceByresourceResponse;

  const DescribeComplianceByresourceResponse._();

  /// Constructs a [DescribeComplianceByresourceResponse] from a [payload] and [response].
  factory DescribeComplianceByresourceResponse.fromResponse(
    DescribeComplianceByresourceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeComplianceByresourceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByresourceResponseBuilder b) {}

  /// Indicates whether the specified Amazon Web Services resource complies with all of the Config rules that evaluate it.
  _i2.BuiltList<_i3.ComplianceByresource>? get complianceByresources;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        complianceByresources,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByresourceResponse');
    helper.add(
      'complianceByresources',
      complianceByresources,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeComplianceByresourceResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeComplianceByresourceResponse> {
  const DescribeComplianceByresourceResponseAwsJson11Serializer()
      : super('DescribeComplianceByresourceResponse');

  @override
  Iterable<Type> get types => const [
        DescribeComplianceByresourceResponse,
        _$DescribeComplianceByresourceResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeComplianceByresourceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeComplianceByresourceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceByResources':
          if (value != null) {
            result.complianceByresources.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.ComplianceByresource)],
              ),
            ) as _i2.BuiltList<_i3.ComplianceByresource>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeComplianceByresourceResponse);
    final result = <Object?>[];
    if (payload.complianceByresources != null) {
      result
        ..add('ComplianceByResources')
        ..add(serializers.serialize(
          payload.complianceByresources!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.ComplianceByresource)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
