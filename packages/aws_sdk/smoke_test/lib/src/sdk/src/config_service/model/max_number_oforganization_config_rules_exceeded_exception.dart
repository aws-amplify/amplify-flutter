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

library smoke_test.config_service.model.max_number_oforganization_config_rules_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_oforganization_config_rules_exceeded_exception.g.dart';

/// You have reached the limit of the number of organization Config rules you can create.
abstract class MaxNumberOforganizationConfigRulesExceededException
    with
        _i1.AWSEquatable<MaxNumberOforganizationConfigRulesExceededException>
    implements
        Built<MaxNumberOforganizationConfigRulesExceededException,
            MaxNumberOforganizationConfigRulesExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit of the number of organization Config rules you can create.
  factory MaxNumberOforganizationConfigRulesExceededException(
      {String? message}) {
    return _$MaxNumberOforganizationConfigRulesExceededException._(
        message: message);
  }

  /// You have reached the limit of the number of organization Config rules you can create.
  factory MaxNumberOforganizationConfigRulesExceededException.build(
      [void Function(MaxNumberOforganizationConfigRulesExceededExceptionBuilder)
          updates]) = _$MaxNumberOforganizationConfigRulesExceededException;

  const MaxNumberOforganizationConfigRulesExceededException._();

  /// Constructs a [MaxNumberOforganizationConfigRulesExceededException] from a [payload] and [response].
  factory MaxNumberOforganizationConfigRulesExceededException.fromResponse(
    MaxNumberOforganizationConfigRulesExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MaxNumberOforganizationConfigRulesExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      MaxNumberOforganizationConfigRulesExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfOrganizationConfigRulesExceededException',
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
    final helper = newBuiltValueToStringHelper(
        'MaxNumberOforganizationConfigRulesExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class MaxNumberOforganizationConfigRulesExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOforganizationConfigRulesExceededException> {
  const MaxNumberOforganizationConfigRulesExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOforganizationConfigRulesExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOforganizationConfigRulesExceededException,
        _$MaxNumberOforganizationConfigRulesExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOforganizationConfigRulesExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOforganizationConfigRulesExceededExceptionBuilder();
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
    final payload =
        (object as MaxNumberOforganizationConfigRulesExceededException);
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
