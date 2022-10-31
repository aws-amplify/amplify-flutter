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

library smoke_test.config_service.model.get_compliance_details_byresource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i4;

part 'get_compliance_details_byresource_request.g.dart';

abstract class GetComplianceDetailsByresourceRequest
    with
        _i1.HttpInput<GetComplianceDetailsByresourceRequest>,
        _i2.AWSEquatable<GetComplianceDetailsByresourceRequest>
    implements
        Built<GetComplianceDetailsByresourceRequest,
            GetComplianceDetailsByresourceRequestBuilder> {
  factory GetComplianceDetailsByresourceRequest({
    _i3.BuiltList<_i4.ComplianceType>? complianceTypes,
    String? nextToken,
    required String resourceId,
    required String resourceType,
  }) {
    return _$GetComplianceDetailsByresourceRequest._(
      complianceTypes: complianceTypes,
      nextToken: nextToken,
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  factory GetComplianceDetailsByresourceRequest.build(
      [void Function(GetComplianceDetailsByresourceRequestBuilder)
          updates]) = _$GetComplianceDetailsByresourceRequest;

  const GetComplianceDetailsByresourceRequest._();

  factory GetComplianceDetailsByresourceRequest.fromRequest(
    GetComplianceDetailsByresourceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetComplianceDetailsByresourceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceDetailsByresourceRequestBuilder b) {}

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE`.
  _i3.BuiltList<_i4.ComplianceType>? get complianceTypes;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The ID of the Amazon Web Services resource for which you want compliance information.
  String get resourceId;

  /// The type of the Amazon Web Services resource for which you want compliance information.
  String get resourceType;
  @override
  GetComplianceDetailsByresourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        complianceTypes,
        nextToken,
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceDetailsByresourceRequest');
    helper.add(
      'complianceTypes',
      complianceTypes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class GetComplianceDetailsByresourceRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetComplianceDetailsByresourceRequest> {
  const GetComplianceDetailsByresourceRequestAwsJson11Serializer()
      : super('GetComplianceDetailsByresourceRequest');

  @override
  Iterable<Type> get types => const [
        GetComplianceDetailsByresourceRequest,
        _$GetComplianceDetailsByresourceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceDetailsByresourceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceDetailsByresourceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComplianceTypes':
          if (value != null) {
            result.complianceTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i4.ComplianceType)],
              ),
            ) as _i3.BuiltList<_i4.ComplianceType>));
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
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
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
    final payload = (object as GetComplianceDetailsByresourceRequest);
    final result = <Object?>[
      'ResourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.complianceTypes != null) {
      result
        ..add('ComplianceTypes')
        ..add(serializers.serialize(
          payload.complianceTypes!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i4.ComplianceType)],
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
