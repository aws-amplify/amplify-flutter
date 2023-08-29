// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_availability_zone_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_opt_in_status.dart';

part 'modify_availability_zone_group_request.g.dart';

abstract class ModifyAvailabilityZoneGroupRequest
    with
        _i1.HttpInput<ModifyAvailabilityZoneGroupRequest>,
        _i2.AWSEquatable<ModifyAvailabilityZoneGroupRequest>
    implements
        Built<ModifyAvailabilityZoneGroupRequest,
            ModifyAvailabilityZoneGroupRequestBuilder> {
  factory ModifyAvailabilityZoneGroupRequest({
    String? groupName,
    ModifyAvailabilityZoneOptInStatus? optInStatus,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyAvailabilityZoneGroupRequest._(
      groupName: groupName,
      optInStatus: optInStatus,
      dryRun: dryRun,
    );
  }

  factory ModifyAvailabilityZoneGroupRequest.build(
          [void Function(ModifyAvailabilityZoneGroupRequestBuilder) updates]) =
      _$ModifyAvailabilityZoneGroupRequest;

  const ModifyAvailabilityZoneGroupRequest._();

  factory ModifyAvailabilityZoneGroupRequest.fromRequest(
    ModifyAvailabilityZoneGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyAvailabilityZoneGroupRequest>>
      serializers = [ModifyAvailabilityZoneGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyAvailabilityZoneGroupRequestBuilder b) {
    b.dryRun = false;
  }

  /// The name of the Availability Zone group, Local Zone group, or Wavelength Zone group.
  String? get groupName;

  /// Indicates whether you are opted in to the Local Zone group or Wavelength Zone group. The only valid value is `opted-in`. You must contact [Amazon Web Services Support](https://console.aws.amazon.com/support/home#/case/create%3FissueType=customer-service%26serviceCode=general-info%26getting-started%26categoryCode=using-aws%26services) to opt out of a Local Zone or Wavelength Zone group.
  ModifyAvailabilityZoneOptInStatus? get optInStatus;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyAvailabilityZoneGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupName,
        optInStatus,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyAvailabilityZoneGroupRequest')
          ..add(
            'groupName',
            groupName,
          )
          ..add(
            'optInStatus',
            optInStatus,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyAvailabilityZoneGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyAvailabilityZoneGroupRequest> {
  const ModifyAvailabilityZoneGroupRequestEc2QuerySerializer()
      : super('ModifyAvailabilityZoneGroupRequest');

  @override
  Iterable<Type> get types => const [
        ModifyAvailabilityZoneGroupRequest,
        _$ModifyAvailabilityZoneGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyAvailabilityZoneGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyAvailabilityZoneGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OptInStatus':
          result.optInStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(ModifyAvailabilityZoneOptInStatus),
          ) as ModifyAvailabilityZoneOptInStatus);
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
    ModifyAvailabilityZoneGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyAvailabilityZoneGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyAvailabilityZoneGroupRequest(
      :groupName,
      :optInStatus,
      :dryRun
    ) = object;
    if (groupName != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (optInStatus != null) {
      result$
        ..add(const _i1.XmlElementName('OptInStatus'))
        ..add(serializers.serialize(
          optInStatus,
          specifiedType:
              const FullType.nullable(ModifyAvailabilityZoneOptInStatus),
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
