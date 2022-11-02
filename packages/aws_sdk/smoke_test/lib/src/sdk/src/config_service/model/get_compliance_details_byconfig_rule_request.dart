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

library smoke_test.config_service.model.get_compliance_details_byconfig_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i4;

part 'get_compliance_details_byconfig_rule_request.g.dart';

abstract class GetComplianceDetailsByconfigRuleRequest
    with
        _i1.HttpInput<GetComplianceDetailsByconfigRuleRequest>,
        _i2.AWSEquatable<GetComplianceDetailsByconfigRuleRequest>
    implements
        Built<GetComplianceDetailsByconfigRuleRequest,
            GetComplianceDetailsByconfigRuleRequestBuilder> {
  factory GetComplianceDetailsByconfigRuleRequest({
    _i3.BuiltList<_i4.ComplianceType>? complianceTypes,
    required String configRuleName,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetComplianceDetailsByconfigRuleRequest._(
      complianceTypes: complianceTypes,
      configRuleName: configRuleName,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetComplianceDetailsByconfigRuleRequest.build(
      [void Function(GetComplianceDetailsByconfigRuleRequestBuilder)
          updates]) = _$GetComplianceDetailsByconfigRuleRequest;

  const GetComplianceDetailsByconfigRuleRequest._();

  factory GetComplianceDetailsByconfigRuleRequest.fromRequest(
    GetComplianceDetailsByconfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetComplianceDetailsByconfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceDetailsByconfigRuleRequestBuilder b) {
    b.limit = 0;
  }

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE`.
  _i3.BuiltList<_i4.ComplianceType>? get complianceTypes;

  /// The name of the Config rule for which you want compliance information.
  String get configRuleName;

  /// The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetComplianceDetailsByconfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        complianceTypes,
        configRuleName,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceDetailsByconfigRuleRequest');
    helper.add(
      'complianceTypes',
      complianceTypes,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetComplianceDetailsByconfigRuleRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetComplianceDetailsByconfigRuleRequest> {
  const GetComplianceDetailsByconfigRuleRequestAwsJson11Serializer()
      : super('GetComplianceDetailsByconfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        GetComplianceDetailsByconfigRuleRequest,
        _$GetComplianceDetailsByconfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceDetailsByconfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceDetailsByconfigRuleRequestBuilder();
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
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Limit':
          result.limit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as GetComplianceDetailsByconfigRuleRequest);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        payload.limit,
        specifiedType: const FullType(int),
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
