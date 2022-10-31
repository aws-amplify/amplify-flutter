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

library smoke_test.config_service.model.resource_inuse_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_inuse_exception.g.dart';

/// You see this exception in the following cases:
///
/// *   For DeleteConfigRule, Config is deleting this rule. Try your request again later.
///
/// *   For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.
///
/// *   For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.
///
/// *   For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.
///
/// *   For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.
///
/// *   For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
///
/// *   For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
abstract class ResourceInuseException
    with _i1.AWSEquatable<ResourceInuseException>
    implements
        Built<ResourceInuseException, ResourceInuseExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You see this exception in the following cases:
  ///
  /// *   For DeleteConfigRule, Config is deleting this rule. Try your request again later.
  ///
  /// *   For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.
  ///
  /// *   For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.
  ///
  /// *   For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.
  ///
  /// *   For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.
  ///
  /// *   For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
  ///
  /// *   For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
  factory ResourceInuseException({String? message}) {
    return _$ResourceInuseException._(message: message);
  }

  /// You see this exception in the following cases:
  ///
  /// *   For DeleteConfigRule, Config is deleting this rule. Try your request again later.
  ///
  /// *   For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.
  ///
  /// *   For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.
  ///
  /// *   For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.
  ///
  /// *   For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.
  ///
  /// *   For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
  ///
  /// *   For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
  factory ResourceInuseException.build(
          [void Function(ResourceInuseExceptionBuilder) updates]) =
      _$ResourceInuseException;

  const ResourceInuseException._();

  /// Constructs a [ResourceInuseException] from a [payload] and [response].
  factory ResourceInuseException.fromResponse(
    ResourceInuseException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ResourceInuseExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceInuseExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'ResourceInUseException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceInuseException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ResourceInuseExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceInuseException> {
  const ResourceInuseExceptionAwsJson11Serializer()
      : super('ResourceInuseException');

  @override
  Iterable<Type> get types => const [
        ResourceInuseException,
        _$ResourceInuseException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceInuseException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceInuseExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as ResourceInuseException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
