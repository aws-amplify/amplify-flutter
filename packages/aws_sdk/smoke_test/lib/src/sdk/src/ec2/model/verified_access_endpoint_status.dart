// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_status_code.dart';

part 'verified_access_endpoint_status.g.dart';

/// Describes the status of a Verified Access endpoint.
abstract class VerifiedAccessEndpointStatus
    with
        _i1.AWSEquatable<VerifiedAccessEndpointStatus>
    implements
        Built<VerifiedAccessEndpointStatus,
            VerifiedAccessEndpointStatusBuilder> {
  /// Describes the status of a Verified Access endpoint.
  factory VerifiedAccessEndpointStatus({
    VerifiedAccessEndpointStatusCode? code,
    String? message,
  }) {
    return _$VerifiedAccessEndpointStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the status of a Verified Access endpoint.
  factory VerifiedAccessEndpointStatus.build(
          [void Function(VerifiedAccessEndpointStatusBuilder) updates]) =
      _$VerifiedAccessEndpointStatus;

  const VerifiedAccessEndpointStatus._();

  static const List<_i2.SmithySerializer<VerifiedAccessEndpointStatus>>
      serializers = [VerifiedAccessEndpointStatusEc2QuerySerializer()];

  /// The status code of the Verified Access endpoint.
  VerifiedAccessEndpointStatusCode? get code;

  /// The status message of the Verified Access endpoint.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessEndpointStatus')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class VerifiedAccessEndpointStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VerifiedAccessEndpointStatus> {
  const VerifiedAccessEndpointStatusEc2QuerySerializer()
      : super('VerifiedAccessEndpointStatus');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessEndpointStatus,
        _$VerifiedAccessEndpointStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessEndpointStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessEndpointStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointStatusCode),
          ) as VerifiedAccessEndpointStatusCode);
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
    VerifiedAccessEndpointStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessEndpointStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessEndpointStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType:
              const FullType.nullable(VerifiedAccessEndpointStatusCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
