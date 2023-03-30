// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_access_denied_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'organization_access_denied_exception.g.dart';

/// For `PutConfigurationAggregator` API, you can see this exception for the following reasons:
///
/// *   No permission to call `EnableAWSServiceAccess` API
///
/// *   The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed. Delete this aggregator and create a new one with the current Amazon Web Services Organization.
///
/// *   The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization. Delete this aggregator and create a new one with the current Amazon Web Services Organization.
///
/// *   You are not a registered delegated administrator for Config with permissions to call `ListDelegatedAdministrators` API. Ensure that the management account registers delagated administrator for Config service principle name before the delegated administrator creates an aggregator.
///
///
/// For all `OrganizationConfigRule` and `OrganizationConformancePack` APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization master account.
abstract class OrganizationAccessDeniedException
    with
        _i1.AWSEquatable<OrganizationAccessDeniedException>
    implements
        Built<OrganizationAccessDeniedException,
            OrganizationAccessDeniedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// For `PutConfigurationAggregator` API, you can see this exception for the following reasons:
  ///
  /// *   No permission to call `EnableAWSServiceAccess` API
  ///
  /// *   The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed. Delete this aggregator and create a new one with the current Amazon Web Services Organization.
  ///
  /// *   The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization. Delete this aggregator and create a new one with the current Amazon Web Services Organization.
  ///
  /// *   You are not a registered delegated administrator for Config with permissions to call `ListDelegatedAdministrators` API. Ensure that the management account registers delagated administrator for Config service principle name before the delegated administrator creates an aggregator.
  ///
  ///
  /// For all `OrganizationConfigRule` and `OrganizationConformancePack` APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization master account.
  factory OrganizationAccessDeniedException({String? message}) {
    return _$OrganizationAccessDeniedException._(message: message);
  }

  /// For `PutConfigurationAggregator` API, you can see this exception for the following reasons:
  ///
  /// *   No permission to call `EnableAWSServiceAccess` API
  ///
  /// *   The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed. Delete this aggregator and create a new one with the current Amazon Web Services Organization.
  ///
  /// *   The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization. Delete this aggregator and create a new one with the current Amazon Web Services Organization.
  ///
  /// *   You are not a registered delegated administrator for Config with permissions to call `ListDelegatedAdministrators` API. Ensure that the management account registers delagated administrator for Config service principle name before the delegated administrator creates an aggregator.
  ///
  ///
  /// For all `OrganizationConfigRule` and `OrganizationConformancePack` APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization master account.
  factory OrganizationAccessDeniedException.build(
          [void Function(OrganizationAccessDeniedExceptionBuilder) updates]) =
      _$OrganizationAccessDeniedException;

  const OrganizationAccessDeniedException._();

  /// Constructs a [OrganizationAccessDeniedException] from a [payload] and [response].
  factory OrganizationAccessDeniedException.fromResponse(
    OrganizationAccessDeniedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    OrganizationAccessDeniedExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationAccessDeniedExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'OrganizationAccessDeniedException',
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
    final helper =
        newBuiltValueToStringHelper('OrganizationAccessDeniedException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class OrganizationAccessDeniedExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<OrganizationAccessDeniedException> {
  const OrganizationAccessDeniedExceptionAwsJson11Serializer()
      : super('OrganizationAccessDeniedException');

  @override
  Iterable<Type> get types => const [
        OrganizationAccessDeniedException,
        _$OrganizationAccessDeniedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationAccessDeniedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationAccessDeniedExceptionBuilder();
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
    final payload = (object as OrganizationAccessDeniedException);
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
