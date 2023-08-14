// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deprovision_byoip_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deprovision_byoip_cidr_request.g.dart';

abstract class DeprovisionByoipCidrRequest
    with
        _i1.HttpInput<DeprovisionByoipCidrRequest>,
        _i2.AWSEquatable<DeprovisionByoipCidrRequest>
    implements
        Built<DeprovisionByoipCidrRequest, DeprovisionByoipCidrRequestBuilder> {
  factory DeprovisionByoipCidrRequest({
    String? cidr,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeprovisionByoipCidrRequest._(
      cidr: cidr,
      dryRun: dryRun,
    );
  }

  factory DeprovisionByoipCidrRequest.build(
          [void Function(DeprovisionByoipCidrRequestBuilder) updates]) =
      _$DeprovisionByoipCidrRequest;

  const DeprovisionByoipCidrRequest._();

  factory DeprovisionByoipCidrRequest.fromRequest(
    DeprovisionByoipCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeprovisionByoipCidrRequest>>
      serializers = [DeprovisionByoipCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeprovisionByoipCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// The address range, in CIDR notation. The prefix must be the same prefix that you specified when you provisioned the address range.
  String? get cidr;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeprovisionByoipCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidr,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeprovisionByoipCidrRequest')
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

class DeprovisionByoipCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeprovisionByoipCidrRequest> {
  const DeprovisionByoipCidrRequestEc2QuerySerializer()
      : super('DeprovisionByoipCidrRequest');

  @override
  Iterable<Type> get types => const [
        DeprovisionByoipCidrRequest,
        _$DeprovisionByoipCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionByoipCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionByoipCidrRequestBuilder();
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
    DeprovisionByoipCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeprovisionByoipCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeprovisionByoipCidrRequest(:cidr, :dryRun) = object;
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
