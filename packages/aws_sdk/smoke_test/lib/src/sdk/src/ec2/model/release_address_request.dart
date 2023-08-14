// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.release_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'release_address_request.g.dart';

abstract class ReleaseAddressRequest
    with
        _i1.HttpInput<ReleaseAddressRequest>,
        _i2.AWSEquatable<ReleaseAddressRequest>
    implements Built<ReleaseAddressRequest, ReleaseAddressRequestBuilder> {
  factory ReleaseAddressRequest({
    String? allocationId,
    String? publicIp,
    String? networkBorderGroup,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ReleaseAddressRequest._(
      allocationId: allocationId,
      publicIp: publicIp,
      networkBorderGroup: networkBorderGroup,
      dryRun: dryRun,
    );
  }

  factory ReleaseAddressRequest.build(
          [void Function(ReleaseAddressRequestBuilder) updates]) =
      _$ReleaseAddressRequest;

  const ReleaseAddressRequest._();

  factory ReleaseAddressRequest.fromRequest(
    ReleaseAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ReleaseAddressRequest>> serializers = [
    ReleaseAddressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReleaseAddressRequestBuilder b) {
    b.dryRun = false;
  }

  /// The allocation ID. This parameter is required.
  String? get allocationId;

  /// Deprecated.
  String? get publicIp;

  /// The set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.
  ///
  /// If you provide an incorrect network border group, you receive an `InvalidAddress.NotFound` error.
  ///
  /// You cannot use a network border group with EC2 Classic. If you attempt this operation on EC2 classic, you receive an `InvalidParameterCombination` error.
  String? get networkBorderGroup;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ReleaseAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        publicIp,
        networkBorderGroup,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReleaseAddressRequest')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'networkBorderGroup',
        networkBorderGroup,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ReleaseAddressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ReleaseAddressRequest> {
  const ReleaseAddressRequestEc2QuerySerializer()
      : super('ReleaseAddressRequest');

  @override
  Iterable<Type> get types => const [
        ReleaseAddressRequest,
        _$ReleaseAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReleaseAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseAddressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetworkBorderGroup':
          result.networkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    ReleaseAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ReleaseAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReleaseAddressRequest(
      :allocationId,
      :publicIp,
      :networkBorderGroup,
      :dryRun
    ) = object;
    if (allocationId != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIp != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (networkBorderGroup != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          networkBorderGroup,
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
