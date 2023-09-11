// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification_request.dart';

part 'modify_instance_credit_specification_request.g.dart';

abstract class ModifyInstanceCreditSpecificationRequest
    with
        _i1.HttpInput<ModifyInstanceCreditSpecificationRequest>,
        _i2.AWSEquatable<ModifyInstanceCreditSpecificationRequest>
    implements
        Built<ModifyInstanceCreditSpecificationRequest,
            ModifyInstanceCreditSpecificationRequestBuilder> {
  factory ModifyInstanceCreditSpecificationRequest({
    bool? dryRun,
    String? clientToken,
    List<InstanceCreditSpecificationRequest>? instanceCreditSpecifications,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceCreditSpecificationRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      instanceCreditSpecifications: instanceCreditSpecifications == null
          ? null
          : _i3.BuiltList(instanceCreditSpecifications),
    );
  }

  factory ModifyInstanceCreditSpecificationRequest.build(
      [void Function(ModifyInstanceCreditSpecificationRequestBuilder)
          updates]) = _$ModifyInstanceCreditSpecificationRequest;

  const ModifyInstanceCreditSpecificationRequest._();

  factory ModifyInstanceCreditSpecificationRequest.fromRequest(
    ModifyInstanceCreditSpecificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyInstanceCreditSpecificationRequest>>
      serializers = [
    ModifyInstanceCreditSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceCreditSpecificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Information about the credit option for CPU usage.
  _i3.BuiltList<InstanceCreditSpecificationRequest>?
      get instanceCreditSpecifications;
  @override
  ModifyInstanceCreditSpecificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        instanceCreditSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceCreditSpecificationRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'instanceCreditSpecifications',
            instanceCreditSpecifications,
          );
    return helper.toString();
  }
}

class ModifyInstanceCreditSpecificationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceCreditSpecificationRequest> {
  const ModifyInstanceCreditSpecificationRequestEc2QuerySerializer()
      : super('ModifyInstanceCreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceCreditSpecificationRequest,
        _$ModifyInstanceCreditSpecificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceCreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceCreditSpecificationRequestBuilder();
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceCreditSpecification':
          result.instanceCreditSpecifications
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceCreditSpecificationRequest)],
            ),
          ) as _i3.BuiltList<InstanceCreditSpecificationRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceCreditSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceCreditSpecificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceCreditSpecificationRequest(
      :dryRun,
      :clientToken,
      :instanceCreditSpecifications
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceCreditSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceCreditSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceCreditSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(InstanceCreditSpecificationRequest)],
          ),
        ));
    }
    return result$;
  }
}
