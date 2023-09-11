// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_default_credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart';

part 'get_default_credit_specification_request.g.dart';

abstract class GetDefaultCreditSpecificationRequest
    with
        _i1.HttpInput<GetDefaultCreditSpecificationRequest>,
        _i2.AWSEquatable<GetDefaultCreditSpecificationRequest>
    implements
        Built<GetDefaultCreditSpecificationRequest,
            GetDefaultCreditSpecificationRequestBuilder> {
  factory GetDefaultCreditSpecificationRequest({
    bool? dryRun,
    UnlimitedSupportedInstanceFamily? instanceFamily,
  }) {
    dryRun ??= false;
    return _$GetDefaultCreditSpecificationRequest._(
      dryRun: dryRun,
      instanceFamily: instanceFamily,
    );
  }

  factory GetDefaultCreditSpecificationRequest.build(
      [void Function(GetDefaultCreditSpecificationRequestBuilder)
          updates]) = _$GetDefaultCreditSpecificationRequest;

  const GetDefaultCreditSpecificationRequest._();

  factory GetDefaultCreditSpecificationRequest.fromRequest(
    GetDefaultCreditSpecificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetDefaultCreditSpecificationRequest>>
      serializers = [GetDefaultCreditSpecificationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDefaultCreditSpecificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The instance family.
  UnlimitedSupportedInstanceFamily? get instanceFamily;
  @override
  GetDefaultCreditSpecificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceFamily,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDefaultCreditSpecificationRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'instanceFamily',
            instanceFamily,
          );
    return helper.toString();
  }
}

class GetDefaultCreditSpecificationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetDefaultCreditSpecificationRequest> {
  const GetDefaultCreditSpecificationRequestEc2QuerySerializer()
      : super('GetDefaultCreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        GetDefaultCreditSpecificationRequest,
        _$GetDefaultCreditSpecificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetDefaultCreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDefaultCreditSpecificationRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetDefaultCreditSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetDefaultCreditSpecificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetDefaultCreditSpecificationRequest(:dryRun, :instanceFamily) =
        object;
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
          specifiedType: const FullType(UnlimitedSupportedInstanceFamily),
        ));
    }
    return result$;
  }
}
