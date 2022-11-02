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

library smoke_test.config_service.model.get_compliance_summary_byresource_type_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary_byresource_type.dart'
    as _i3;

part 'get_compliance_summary_byresource_type_response.g.dart';

abstract class GetComplianceSummaryByresourceTypeResponse
    with
        _i1.AWSEquatable<GetComplianceSummaryByresourceTypeResponse>
    implements
        Built<GetComplianceSummaryByresourceTypeResponse,
            GetComplianceSummaryByresourceTypeResponseBuilder> {
  factory GetComplianceSummaryByresourceTypeResponse(
      {_i2.BuiltList<_i3.ComplianceSummaryByresourceType>?
          complianceSummariesByresourceType}) {
    return _$GetComplianceSummaryByresourceTypeResponse._(
        complianceSummariesByresourceType: complianceSummariesByresourceType);
  }

  factory GetComplianceSummaryByresourceTypeResponse.build(
      [void Function(GetComplianceSummaryByresourceTypeResponseBuilder)
          updates]) = _$GetComplianceSummaryByresourceTypeResponse;

  const GetComplianceSummaryByresourceTypeResponse._();

  /// Constructs a [GetComplianceSummaryByresourceTypeResponse] from a [payload] and [response].
  factory GetComplianceSummaryByresourceTypeResponse.fromResponse(
    GetComplianceSummaryByresourceTypeResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetComplianceSummaryByresourceTypeResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceSummaryByresourceTypeResponseBuilder b) {}

  /// The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.
  _i2.BuiltList<_i3.ComplianceSummaryByresourceType>?
      get complianceSummariesByresourceType;
  @override
  List<Object?> get props => [complianceSummariesByresourceType];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetComplianceSummaryByresourceTypeResponse');
    helper.add(
      'complianceSummariesByresourceType',
      complianceSummariesByresourceType,
    );
    return helper.toString();
  }
}

class GetComplianceSummaryByresourceTypeResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<GetComplianceSummaryByresourceTypeResponse> {
  const GetComplianceSummaryByresourceTypeResponseAwsJson11Serializer()
      : super('GetComplianceSummaryByresourceTypeResponse');

  @override
  Iterable<Type> get types => const [
        GetComplianceSummaryByresourceTypeResponse,
        _$GetComplianceSummaryByresourceTypeResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceSummaryByresourceTypeResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceSummaryByresourceTypeResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceSummariesByResourceType':
          if (value != null) {
            result.complianceSummariesByresourceType
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.ComplianceSummaryByresourceType)],
              ),
            ) as _i2.BuiltList<_i3.ComplianceSummaryByresourceType>));
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
    final payload = (object as GetComplianceSummaryByresourceTypeResponse);
    final result = <Object?>[];
    if (payload.complianceSummariesByresourceType != null) {
      result
        ..add('ComplianceSummariesByResourceType')
        ..add(serializers.serialize(
          payload.complianceSummariesByresourceType!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.ComplianceSummaryByresourceType)],
          ),
        ));
    }
    return result;
  }
}
