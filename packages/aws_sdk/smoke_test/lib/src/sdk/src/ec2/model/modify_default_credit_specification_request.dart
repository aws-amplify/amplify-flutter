// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_default_credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart';

part 'modify_default_credit_specification_request.g.dart';

abstract class ModifyDefaultCreditSpecificationRequest
    with
        _i1.HttpInput<ModifyDefaultCreditSpecificationRequest>,
        _i2.AWSEquatable<ModifyDefaultCreditSpecificationRequest>
    implements
        Built<ModifyDefaultCreditSpecificationRequest,
            ModifyDefaultCreditSpecificationRequestBuilder> {
  factory ModifyDefaultCreditSpecificationRequest({
    bool? dryRun,
    UnlimitedSupportedInstanceFamily? instanceFamily,
    String? cpuCredits,
  }) {
    dryRun ??= false;
    return _$ModifyDefaultCreditSpecificationRequest._(
      dryRun: dryRun,
      instanceFamily: instanceFamily,
      cpuCredits: cpuCredits,
    );
  }

  factory ModifyDefaultCreditSpecificationRequest.build(
      [void Function(ModifyDefaultCreditSpecificationRequestBuilder)
          updates]) = _$ModifyDefaultCreditSpecificationRequest;

  const ModifyDefaultCreditSpecificationRequest._();

  factory ModifyDefaultCreditSpecificationRequest.fromRequest(
    ModifyDefaultCreditSpecificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyDefaultCreditSpecificationRequest>>
      serializers = [
    ModifyDefaultCreditSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyDefaultCreditSpecificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The instance family.
  UnlimitedSupportedInstanceFamily? get instanceFamily;

  /// The credit option for CPU usage of the instance family.
  ///
  /// Valid Values: `standard` | `unlimited`
  String? get cpuCredits;
  @override
  ModifyDefaultCreditSpecificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceFamily,
        cpuCredits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyDefaultCreditSpecificationRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'instanceFamily',
            instanceFamily,
          )
          ..add(
            'cpuCredits',
            cpuCredits,
          );
    return helper.toString();
  }
}

class ModifyDefaultCreditSpecificationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyDefaultCreditSpecificationRequest> {
  const ModifyDefaultCreditSpecificationRequestEc2QuerySerializer()
      : super('ModifyDefaultCreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyDefaultCreditSpecificationRequest,
        _$ModifyDefaultCreditSpecificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyDefaultCreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyDefaultCreditSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(UnlimitedSupportedInstanceFamily),
          ) as UnlimitedSupportedInstanceFamily);
        case 'CpuCredits':
          result.cpuCredits = (serializers.deserialize(
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
    ModifyDefaultCreditSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyDefaultCreditSpecificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyDefaultCreditSpecificationRequest(
      :dryRun,
      :instanceFamily,
      :cpuCredits
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceFamily != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType:
              const FullType.nullable(UnlimitedSupportedInstanceFamily),
        ));
    }
    if (cpuCredits != null) {
      result$
        ..add(const _i1.XmlElementName('CpuCredits'))
        ..add(serializers.serialize(
          cpuCredits,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
