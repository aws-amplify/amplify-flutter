// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_default_subnet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_default_subnet_request.g.dart';

abstract class CreateDefaultSubnetRequest
    with
        _i1.HttpInput<CreateDefaultSubnetRequest>,
        _i2.AWSEquatable<CreateDefaultSubnetRequest>
    implements
        Built<CreateDefaultSubnetRequest, CreateDefaultSubnetRequestBuilder> {
  factory CreateDefaultSubnetRequest({
    String? availabilityZone,
    bool? dryRun,
    bool? ipv6Native,
  }) {
    dryRun ??= false;
    ipv6Native ??= false;
    return _$CreateDefaultSubnetRequest._(
      availabilityZone: availabilityZone,
      dryRun: dryRun,
      ipv6Native: ipv6Native,
    );
  }

  factory CreateDefaultSubnetRequest.build(
          [void Function(CreateDefaultSubnetRequestBuilder) updates]) =
      _$CreateDefaultSubnetRequest;

  const CreateDefaultSubnetRequest._();

  factory CreateDefaultSubnetRequest.fromRequest(
    CreateDefaultSubnetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateDefaultSubnetRequest>>
      serializers = [CreateDefaultSubnetRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDefaultSubnetRequestBuilder b) {
    b
      ..dryRun = false
      ..ipv6Native = false;
  }

  /// The Availability Zone in which to create the default subnet.
  String? get availabilityZone;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether to create an IPv6 only subnet. If you already have a default subnet for this Availability Zone, you must delete it before you can create an IPv6 only subnet.
  bool get ipv6Native;
  @override
  CreateDefaultSubnetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        dryRun,
        ipv6Native,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDefaultSubnetRequest')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipv6Native',
        ipv6Native,
      );
    return helper.toString();
  }
}

class CreateDefaultSubnetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateDefaultSubnetRequest> {
  const CreateDefaultSubnetRequestEc2QuerySerializer()
      : super('CreateDefaultSubnetRequest');

  @override
  Iterable<Type> get types => const [
        CreateDefaultSubnetRequest,
        _$CreateDefaultSubnetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDefaultSubnetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDefaultSubnetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Ipv6Native':
          result.ipv6Native = (serializers.deserialize(
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
    CreateDefaultSubnetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateDefaultSubnetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateDefaultSubnetRequest(:availabilityZone, :dryRun, :ipv6Native) =
        object;
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Ipv6Native'))
      ..add(serializers.serialize(
        ipv6Native,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
