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

library smoke_test.config_service.model.get_compliance_summary_byresource_type_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_compliance_summary_byresource_type_request.g.dart';

abstract class GetComplianceSummaryByresourceTypeRequest
    with
        _i1.HttpInput<GetComplianceSummaryByresourceTypeRequest>,
        _i2.AWSEquatable<GetComplianceSummaryByresourceTypeRequest>
    implements
        Built<GetComplianceSummaryByresourceTypeRequest,
            GetComplianceSummaryByresourceTypeRequestBuilder> {
  factory GetComplianceSummaryByresourceTypeRequest(
      {_i3.BuiltList<String>? resourceTypes}) {
    return _$GetComplianceSummaryByresourceTypeRequest._(
        resourceTypes: resourceTypes);
  }

  factory GetComplianceSummaryByresourceTypeRequest.build(
      [void Function(GetComplianceSummaryByresourceTypeRequestBuilder)
          updates]) = _$GetComplianceSummaryByresourceTypeRequest;

  const GetComplianceSummaryByresourceTypeRequest._();

  factory GetComplianceSummaryByresourceTypeRequest.fromRequest(
    GetComplianceSummaryByresourceTypeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetComplianceSummaryByresourceTypeRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceSummaryByresourceTypeRequestBuilder b) {}

  /// Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.
  ///
  /// For this request, you can specify an Amazon Web Services resource type such as `AWS::EC2::Instance`. You can specify that the resource type is an Amazon Web Services account by specifying `AWS::::Account`.
  _i3.BuiltList<String>? get resourceTypes;
  @override
  GetComplianceSummaryByresourceTypeRequest getPayload() => this;
  @override
  List<Object?> get props => [resourceTypes];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetComplianceSummaryByresourceTypeRequest');
    helper.add(
      'resourceTypes',
      resourceTypes,
    );
    return helper.toString();
  }
}

class GetComplianceSummaryByresourceTypeRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetComplianceSummaryByresourceTypeRequest> {
  const GetComplianceSummaryByresourceTypeRequestAwsJson11Serializer()
      : super('GetComplianceSummaryByresourceTypeRequest');

  @override
  Iterable<Type> get types => const [
        GetComplianceSummaryByresourceTypeRequest,
        _$GetComplianceSummaryByresourceTypeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceSummaryByresourceTypeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceSummaryByresourceTypeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceTypes':
          if (value != null) {
            result.resourceTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as GetComplianceSummaryByresourceTypeRequest);
    final result = <Object?>[];
    if (payload.resourceTypes != null) {
      result
        ..add('ResourceTypes')
        ..add(serializers.serialize(
          payload.resourceTypes!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
