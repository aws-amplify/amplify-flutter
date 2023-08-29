// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_metadata_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart';

part 'modify_instance_metadata_options_result.g.dart';

abstract class ModifyInstanceMetadataOptionsResult
    with
        _i1.AWSEquatable<ModifyInstanceMetadataOptionsResult>
    implements
        Built<ModifyInstanceMetadataOptionsResult,
            ModifyInstanceMetadataOptionsResultBuilder> {
  factory ModifyInstanceMetadataOptionsResult({
    String? instanceId,
    InstanceMetadataOptionsResponse? instanceMetadataOptions,
  }) {
    return _$ModifyInstanceMetadataOptionsResult._(
      instanceId: instanceId,
      instanceMetadataOptions: instanceMetadataOptions,
    );
  }

  factory ModifyInstanceMetadataOptionsResult.build(
          [void Function(ModifyInstanceMetadataOptionsResultBuilder) updates]) =
      _$ModifyInstanceMetadataOptionsResult;

  const ModifyInstanceMetadataOptionsResult._();

  /// Constructs a [ModifyInstanceMetadataOptionsResult] from a [payload] and [response].
  factory ModifyInstanceMetadataOptionsResult.fromResponse(
    ModifyInstanceMetadataOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyInstanceMetadataOptionsResult>>
      serializers = [ModifyInstanceMetadataOptionsResultEc2QuerySerializer()];

  /// The ID of the instance.
  String? get instanceId;

  /// The metadata options for the instance.
  InstanceMetadataOptionsResponse? get instanceMetadataOptions;
  @override
  List<Object?> get props => [
        instanceId,
        instanceMetadataOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMetadataOptionsResult')
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'instanceMetadataOptions',
            instanceMetadataOptions,
          );
    return helper.toString();
  }
}

class ModifyInstanceMetadataOptionsResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ModifyInstanceMetadataOptionsResult> {
  const ModifyInstanceMetadataOptionsResultEc2QuerySerializer()
      : super('ModifyInstanceMetadataOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMetadataOptionsResult,
        _$ModifyInstanceMetadataOptionsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMetadataOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMetadataOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceMetadataOptions':
          result.instanceMetadataOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMetadataOptionsResponse),
          ) as InstanceMetadataOptionsResponse));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceMetadataOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyInstanceMetadataOptionsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceMetadataOptionsResult(
      :instanceId,
      :instanceMetadataOptions
    ) = object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceMetadataOptions != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceMetadataOptions'))
        ..add(serializers.serialize(
          instanceMetadataOptions,
          specifiedType: const FullType(InstanceMetadataOptionsResponse),
        ));
    }
    return result$;
  }
}
