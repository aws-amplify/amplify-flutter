// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.withdraw_byoip_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'withdraw_byoip_cidr_request.g.dart';

abstract class WithdrawByoipCidrRequest
    with
        _i1.HttpInput<WithdrawByoipCidrRequest>,
        _i2.AWSEquatable<WithdrawByoipCidrRequest>
    implements
        Built<WithdrawByoipCidrRequest, WithdrawByoipCidrRequestBuilder> {
  factory WithdrawByoipCidrRequest({
    String? cidr,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$WithdrawByoipCidrRequest._(
      cidr: cidr,
      dryRun: dryRun,
    );
  }

  factory WithdrawByoipCidrRequest.build(
          [void Function(WithdrawByoipCidrRequestBuilder) updates]) =
      _$WithdrawByoipCidrRequest;

  const WithdrawByoipCidrRequest._();

  factory WithdrawByoipCidrRequest.fromRequest(
    WithdrawByoipCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<WithdrawByoipCidrRequest>>
      serializers = [WithdrawByoipCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(WithdrawByoipCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// The address range, in CIDR notation.
  String? get cidr;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  WithdrawByoipCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidr,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('WithdrawByoipCidrRequest')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class WithdrawByoipCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<WithdrawByoipCidrRequest> {
  const WithdrawByoipCidrRequestEc2QuerySerializer()
      : super('WithdrawByoipCidrRequest');

  @override
  Iterable<Type> get types => const [
        WithdrawByoipCidrRequest,
        _$WithdrawByoipCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  WithdrawByoipCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WithdrawByoipCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    WithdrawByoipCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'WithdrawByoipCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final WithdrawByoipCidrRequest(:cidr, :dryRun) = object;
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
