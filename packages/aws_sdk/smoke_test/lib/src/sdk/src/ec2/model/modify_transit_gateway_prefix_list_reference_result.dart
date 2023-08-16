// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_transit_gateway_prefix_list_reference_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart';

part 'modify_transit_gateway_prefix_list_reference_result.g.dart';

abstract class ModifyTransitGatewayPrefixListReferenceResult
    with
        _i1.AWSEquatable<ModifyTransitGatewayPrefixListReferenceResult>
    implements
        Built<ModifyTransitGatewayPrefixListReferenceResult,
            ModifyTransitGatewayPrefixListReferenceResultBuilder> {
  factory ModifyTransitGatewayPrefixListReferenceResult(
      {TransitGatewayPrefixListReference? transitGatewayPrefixListReference}) {
    return _$ModifyTransitGatewayPrefixListReferenceResult._(
        transitGatewayPrefixListReference: transitGatewayPrefixListReference);
  }

  factory ModifyTransitGatewayPrefixListReferenceResult.build(
      [void Function(ModifyTransitGatewayPrefixListReferenceResultBuilder)
          updates]) = _$ModifyTransitGatewayPrefixListReferenceResult;

  const ModifyTransitGatewayPrefixListReferenceResult._();

  /// Constructs a [ModifyTransitGatewayPrefixListReferenceResult] from a [payload] and [response].
  factory ModifyTransitGatewayPrefixListReferenceResult.fromResponse(
    ModifyTransitGatewayPrefixListReferenceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ModifyTransitGatewayPrefixListReferenceResult>>
      serializers = [
    ModifyTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
  ];

  /// Information about the prefix list reference.
  TransitGatewayPrefixListReference? get transitGatewayPrefixListReference;
  @override
  List<Object?> get props => [transitGatewayPrefixListReference];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyTransitGatewayPrefixListReferenceResult')
      ..add(
        'transitGatewayPrefixListReference',
        transitGatewayPrefixListReference,
      );
    return helper.toString();
  }
}

class ModifyTransitGatewayPrefixListReferenceResultEc2QuerySerializer
    extends _i2
    .StructuredSmithySerializer<ModifyTransitGatewayPrefixListReferenceResult> {
  const ModifyTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
      : super('ModifyTransitGatewayPrefixListReferenceResult');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayPrefixListReferenceResult,
        _$ModifyTransitGatewayPrefixListReferenceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayPrefixListReferenceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayPrefixListReferenceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPrefixListReference':
          result.transitGatewayPrefixListReference
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPrefixListReference),
          ) as TransitGatewayPrefixListReference));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyTransitGatewayPrefixListReferenceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyTransitGatewayPrefixListReferenceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTransitGatewayPrefixListReferenceResult(
      :transitGatewayPrefixListReference
    ) = object;
    if (transitGatewayPrefixListReference != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayPrefixListReference'))
        ..add(serializers.serialize(
          transitGatewayPrefixListReference,
          specifiedType: const FullType(TransitGatewayPrefixListReference),
        ));
    }
    return result$;
  }
}
