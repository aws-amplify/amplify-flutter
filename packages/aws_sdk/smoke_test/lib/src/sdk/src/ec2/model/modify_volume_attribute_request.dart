// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_volume_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';

part 'modify_volume_attribute_request.g.dart';

abstract class ModifyVolumeAttributeRequest
    with
        _i1.HttpInput<ModifyVolumeAttributeRequest>,
        _i2.AWSEquatable<ModifyVolumeAttributeRequest>
    implements
        Built<ModifyVolumeAttributeRequest,
            ModifyVolumeAttributeRequestBuilder> {
  factory ModifyVolumeAttributeRequest({
    AttributeBooleanValue? autoEnableIo,
    String? volumeId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVolumeAttributeRequest._(
      autoEnableIo: autoEnableIo,
      volumeId: volumeId,
      dryRun: dryRun,
    );
  }

  factory ModifyVolumeAttributeRequest.build(
          [void Function(ModifyVolumeAttributeRequestBuilder) updates]) =
      _$ModifyVolumeAttributeRequest;

  const ModifyVolumeAttributeRequest._();

  factory ModifyVolumeAttributeRequest.fromRequest(
    ModifyVolumeAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVolumeAttributeRequest>>
      serializers = [ModifyVolumeAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVolumeAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Indicates whether the volume should be auto-enabled for I/O operations.
  AttributeBooleanValue? get autoEnableIo;

  /// The ID of the volume.
  String? get volumeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVolumeAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        autoEnableIo,
        volumeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVolumeAttributeRequest')
      ..add(
        'autoEnableIo',
        autoEnableIo,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ModifyVolumeAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVolumeAttributeRequest> {
  const ModifyVolumeAttributeRequestEc2QuerySerializer()
      : super('ModifyVolumeAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVolumeAttributeRequest,
        _$ModifyVolumeAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVolumeAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVolumeAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AutoEnableIO':
          result.autoEnableIo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
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
    ModifyVolumeAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVolumeAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVolumeAttributeRequest(:autoEnableIo, :volumeId, :dryRun) =
        object;
    if (autoEnableIo != null) {
      result$
        ..add(const _i1.XmlElementName('AutoEnableIO'))
        ..add(serializers.serialize(
          autoEnableIo,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
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
