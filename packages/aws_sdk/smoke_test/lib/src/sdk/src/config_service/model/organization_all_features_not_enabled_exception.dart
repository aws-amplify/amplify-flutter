// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_all_features_not_enabled_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'organization_all_features_not_enabled_exception.g.dart';

/// Config resource cannot be created because your organization does not have all features enabled.
abstract class OrganizationAllFeaturesNotEnabledException
    with
        _i1.AWSEquatable<OrganizationAllFeaturesNotEnabledException>
    implements
        Built<OrganizationAllFeaturesNotEnabledException,
            OrganizationAllFeaturesNotEnabledExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Config resource cannot be created because your organization does not have all features enabled.
  factory OrganizationAllFeaturesNotEnabledException({String? message}) {
    return _$OrganizationAllFeaturesNotEnabledException._(message: message);
  }

  /// Config resource cannot be created because your organization does not have all features enabled.
  factory OrganizationAllFeaturesNotEnabledException.build(
      [void Function(OrganizationAllFeaturesNotEnabledExceptionBuilder)
          updates]) = _$OrganizationAllFeaturesNotEnabledException;

  const OrganizationAllFeaturesNotEnabledException._();

  /// Constructs a [OrganizationAllFeaturesNotEnabledException] from a [payload] and [response].
  factory OrganizationAllFeaturesNotEnabledException.fromResponse(
    OrganizationAllFeaturesNotEnabledException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    OrganizationAllFeaturesNotEnabledExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationAllFeaturesNotEnabledExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'OrganizationAllFeaturesNotEnabledException',
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
        'OrganizationAllFeaturesNotEnabledException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class OrganizationAllFeaturesNotEnabledExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<OrganizationAllFeaturesNotEnabledException> {
  const OrganizationAllFeaturesNotEnabledExceptionAwsJson11Serializer()
      : super('OrganizationAllFeaturesNotEnabledException');

  @override
  Iterable<Type> get types => const [
        OrganizationAllFeaturesNotEnabledException,
        _$OrganizationAllFeaturesNotEnabledException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationAllFeaturesNotEnabledException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationAllFeaturesNotEnabledExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as OrganizationAllFeaturesNotEnabledException);
    final result = <Object?>[];
    final OrganizationAllFeaturesNotEnabledException(:message) = payload;
    if (message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
