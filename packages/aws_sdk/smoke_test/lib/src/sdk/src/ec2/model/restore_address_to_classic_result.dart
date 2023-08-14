// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.restore_address_to_classic_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/status.dart';

part 'restore_address_to_classic_result.g.dart';

abstract class RestoreAddressToClassicResult
    with
        _i1.AWSEquatable<RestoreAddressToClassicResult>
    implements
        Built<RestoreAddressToClassicResult,
            RestoreAddressToClassicResultBuilder> {
  factory RestoreAddressToClassicResult({
    String? publicIp,
    Status? status,
  }) {
    return _$RestoreAddressToClassicResult._(
      publicIp: publicIp,
      status: status,
    );
  }

  factory RestoreAddressToClassicResult.build(
          [void Function(RestoreAddressToClassicResultBuilder) updates]) =
      _$RestoreAddressToClassicResult;

  const RestoreAddressToClassicResult._();

  /// Constructs a [RestoreAddressToClassicResult] from a [payload] and [response].
  factory RestoreAddressToClassicResult.fromResponse(
    RestoreAddressToClassicResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RestoreAddressToClassicResult>>
      serializers = [RestoreAddressToClassicResultEc2QuerySerializer()];

  /// The Elastic IP address.
  String? get publicIp;

  /// The move status for the IP address.
  Status? get status;
  @override
  List<Object?> get props => [
        publicIp,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreAddressToClassicResult')
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class RestoreAddressToClassicResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RestoreAddressToClassicResult> {
  const RestoreAddressToClassicResultEc2QuerySerializer()
      : super('RestoreAddressToClassicResult');

  @override
  Iterable<Type> get types => const [
        RestoreAddressToClassicResult,
        _$RestoreAddressToClassicResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreAddressToClassicResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreAddressToClassicResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(Status),
          ) as Status);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreAddressToClassicResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RestoreAddressToClassicResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RestoreAddressToClassicResult(:publicIp, :status) = object;
    if (publicIp != null) {
      result$
        ..add(const _i2.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(Status),
        ));
    }
    return result$;
  }
}
