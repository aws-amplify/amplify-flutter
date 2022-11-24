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

library smoke_test.config_service.model.get_compliance_details_byresource_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result.dart'
    as _i3;

part 'get_compliance_details_byresource_response.g.dart';

abstract class GetComplianceDetailsByresourceResponse
    with
        _i1.AWSEquatable<GetComplianceDetailsByresourceResponse>
    implements
        Built<GetComplianceDetailsByresourceResponse,
            GetComplianceDetailsByresourceResponseBuilder> {
  factory GetComplianceDetailsByresourceResponse({
    _i2.BuiltList<_i3.EvaluationResult>? evaluationResults,
    String? nextToken,
  }) {
    return _$GetComplianceDetailsByresourceResponse._(
      evaluationResults: evaluationResults,
      nextToken: nextToken,
    );
  }

  factory GetComplianceDetailsByresourceResponse.build(
      [void Function(GetComplianceDetailsByresourceResponseBuilder)
          updates]) = _$GetComplianceDetailsByresourceResponse;

  const GetComplianceDetailsByresourceResponse._();

  /// Constructs a [GetComplianceDetailsByresourceResponse] from a [payload] and [response].
  factory GetComplianceDetailsByresourceResponse.fromResponse(
    GetComplianceDetailsByresourceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetComplianceDetailsByresourceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceDetailsByresourceResponseBuilder b) {}

  /// Indicates whether the specified Amazon Web Services resource complies each Config rule.
  _i2.BuiltList<_i3.EvaluationResult>? get evaluationResults;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        evaluationResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceDetailsByresourceResponse');
    helper.add(
      'evaluationResults',
      evaluationResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetComplianceDetailsByresourceResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<GetComplianceDetailsByresourceResponse> {
  const GetComplianceDetailsByresourceResponseAwsJson11Serializer()
      : super('GetComplianceDetailsByresourceResponse');

  @override
  Iterable<Type> get types => const [
        GetComplianceDetailsByresourceResponse,
        _$GetComplianceDetailsByresourceResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceDetailsByresourceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceDetailsByresourceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EvaluationResults':
          if (value != null) {
            result.evaluationResults.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.EvaluationResult)],
              ),
            ) as _i2.BuiltList<_i3.EvaluationResult>));
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
    final payload = (object as GetComplianceDetailsByresourceResponse);
    final result = <Object?>[];
    if (payload.evaluationResults != null) {
      result
        ..add('EvaluationResults')
        ..add(serializers.serialize(
          payload.evaluationResults!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.EvaluationResult)],
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
