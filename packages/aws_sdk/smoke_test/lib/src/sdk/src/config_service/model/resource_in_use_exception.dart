// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.resource_in_use_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_in_use_exception.g.dart';

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
abstract class ResourceInUseException
    with _i1.AWSEquatable<ResourceInUseException>
    implements
        Built<ResourceInUseException, ResourceInUseExceptionBuilder>,
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
  factory ResourceInUseException({String? message}) {
    return _$ResourceInUseException._(message: message);
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
  factory ResourceInUseException.build(
          [void Function(ResourceInUseExceptionBuilder) updates]) =
      _$ResourceInUseException;

  const ResourceInUseException._();

  /// Constructs a [ResourceInUseException] from a [payload] and [response].
  factory ResourceInUseException.fromResponse(
    ResourceInUseException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ResourceInUseExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceInUseExceptionBuilder b) {}

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
    final helper = newBuiltValueToStringHelper('ResourceInUseException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ResourceInUseExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceInUseException> {
  const ResourceInUseExceptionAwsJson11Serializer()
      : super('ResourceInUseException');

  @override
  Iterable<Type> get types => const [
        ResourceInUseException,
        _$ResourceInUseException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceInUseException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceInUseExceptionBuilder();
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
    final payload = (object as ResourceInUseException);
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
