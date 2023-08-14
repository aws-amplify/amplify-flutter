// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_trunk_interface_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart';

part 'associate_trunk_interface_result.g.dart';

abstract class AssociateTrunkInterfaceResult
    with
        _i1.AWSEquatable<AssociateTrunkInterfaceResult>
    implements
        Built<AssociateTrunkInterfaceResult,
            AssociateTrunkInterfaceResultBuilder> {
  factory AssociateTrunkInterfaceResult({
    TrunkInterfaceAssociation? interfaceAssociation,
    String? clientToken,
  }) {
    return _$AssociateTrunkInterfaceResult._(
      interfaceAssociation: interfaceAssociation,
      clientToken: clientToken,
    );
  }

  factory AssociateTrunkInterfaceResult.build(
          [void Function(AssociateTrunkInterfaceResultBuilder) updates]) =
      _$AssociateTrunkInterfaceResult;

  const AssociateTrunkInterfaceResult._();

  /// Constructs a [AssociateTrunkInterfaceResult] from a [payload] and [response].
  factory AssociateTrunkInterfaceResult.fromResponse(
    AssociateTrunkInterfaceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssociateTrunkInterfaceResult>>
      serializers = [AssociateTrunkInterfaceResultEc2QuerySerializer()];

  /// Information about the association between the trunk network interface and branch network interface.
  TrunkInterfaceAssociation? get interfaceAssociation;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        interfaceAssociation,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateTrunkInterfaceResult')
      ..add(
        'interfaceAssociation',
        interfaceAssociation,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class AssociateTrunkInterfaceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociateTrunkInterfaceResult> {
  const AssociateTrunkInterfaceResultEc2QuerySerializer()
      : super('AssociateTrunkInterfaceResult');

  @override
  Iterable<Type> get types => const [
        AssociateTrunkInterfaceResult,
        _$AssociateTrunkInterfaceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTrunkInterfaceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTrunkInterfaceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'interfaceAssociation':
          result.interfaceAssociation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrunkInterfaceAssociation),
          ) as TrunkInterfaceAssociation));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
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
    AssociateTrunkInterfaceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateTrunkInterfaceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateTrunkInterfaceResult(:interfaceAssociation, :clientToken) =
        object;
    if (interfaceAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('InterfaceAssociation'))
        ..add(serializers.serialize(
          interfaceAssociation,
          specifiedType: const FullType(TrunkInterfaceAssociation),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
