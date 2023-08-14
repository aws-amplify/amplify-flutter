// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.move_address_to_vpc_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'move_address_to_vpc_request.g.dart';

abstract class MoveAddressToVpcRequest
    with
        _i1.HttpInput<MoveAddressToVpcRequest>,
        _i2.AWSEquatable<MoveAddressToVpcRequest>
    implements Built<MoveAddressToVpcRequest, MoveAddressToVpcRequestBuilder> {
  factory MoveAddressToVpcRequest({
    bool? dryRun,
    String? publicIp,
  }) {
    dryRun ??= false;
    return _$MoveAddressToVpcRequest._(
      dryRun: dryRun,
      publicIp: publicIp,
    );
  }

  factory MoveAddressToVpcRequest.build(
          [void Function(MoveAddressToVpcRequestBuilder) updates]) =
      _$MoveAddressToVpcRequest;

  const MoveAddressToVpcRequest._();

  factory MoveAddressToVpcRequest.fromRequest(
    MoveAddressToVpcRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MoveAddressToVpcRequest>> serializers =
      [MoveAddressToVpcRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MoveAddressToVpcRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Elastic IP address.
  String? get publicIp;
  @override
  MoveAddressToVpcRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        publicIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MoveAddressToVpcRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'publicIp',
        publicIp,
      );
    return helper.toString();
  }
}

class MoveAddressToVpcRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<MoveAddressToVpcRequest> {
  const MoveAddressToVpcRequestEc2QuerySerializer()
      : super('MoveAddressToVpcRequest');

  @override
  Iterable<Type> get types => const [
        MoveAddressToVpcRequest,
        _$MoveAddressToVpcRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MoveAddressToVpcRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MoveAddressToVpcRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
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
    MoveAddressToVpcRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'MoveAddressToVpcRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MoveAddressToVpcRequest(:dryRun, :publicIp) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (publicIp != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
