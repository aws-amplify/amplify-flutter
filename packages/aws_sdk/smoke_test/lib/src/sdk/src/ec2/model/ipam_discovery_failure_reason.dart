// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_discovery_failure_reason; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovery_failure_code.dart';

part 'ipam_discovery_failure_reason.g.dart';

/// The discovery failure reason.
abstract class IpamDiscoveryFailureReason
    with _i1.AWSEquatable<IpamDiscoveryFailureReason>
    implements
        Built<IpamDiscoveryFailureReason, IpamDiscoveryFailureReasonBuilder> {
  /// The discovery failure reason.
  factory IpamDiscoveryFailureReason({
    IpamDiscoveryFailureCode? code,
    String? message,
  }) {
    return _$IpamDiscoveryFailureReason._(
      code: code,
      message: message,
    );
  }

  /// The discovery failure reason.
  factory IpamDiscoveryFailureReason.build(
          [void Function(IpamDiscoveryFailureReasonBuilder) updates]) =
      _$IpamDiscoveryFailureReason;

  const IpamDiscoveryFailureReason._();

  static const List<_i2.SmithySerializer<IpamDiscoveryFailureReason>>
      serializers = [IpamDiscoveryFailureReasonEc2QuerySerializer()];

  /// The discovery failure code.
  ///
  /// *   `assume-role-failure` \- IPAM could not assume the Amazon Web Services IAM service-linked role. This could be because of any of the following:
  ///
  ///     *   SLR has not been created yet and IPAM is still creating it.
  ///
  ///     *   You have opted-out of the IPAM home Region.
  ///
  ///     *   Account you are using as your IPAM account has been suspended.
  ///
  /// *   `throttling-failure` \- IPAM account is already using the allotted transactions per second and IPAM is receiving a throttling error when assuming the Amazon Web Services IAM SLR.
  ///
  /// *   `unauthorized-failure` \- Amazon Web Services account making the request is not authorized. For more information, see [AuthFailure](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html) in the _Amazon Elastic Compute Cloud API Reference_.
  IpamDiscoveryFailureCode? get code;

  /// The discovery failure message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamDiscoveryFailureReason')
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

class IpamDiscoveryFailureReasonEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamDiscoveryFailureReason> {
  const IpamDiscoveryFailureReasonEc2QuerySerializer()
      : super('IpamDiscoveryFailureReason');

  @override
  Iterable<Type> get types => const [
        IpamDiscoveryFailureReason,
        _$IpamDiscoveryFailureReason,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamDiscoveryFailureReason deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamDiscoveryFailureReasonBuilder();
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
            specifiedType: const FullType(IpamDiscoveryFailureCode),
          ) as IpamDiscoveryFailureCode);
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
    IpamDiscoveryFailureReason object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamDiscoveryFailureReasonResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamDiscoveryFailureReason(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(IpamDiscoveryFailureCode),
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
