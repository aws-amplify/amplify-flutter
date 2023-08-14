// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_prefix_list_reference_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart';

part 'delete_transit_gateway_prefix_list_reference_result.g.dart';

abstract class DeleteTransitGatewayPrefixListReferenceResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayPrefixListReferenceResult>
    implements
        Built<DeleteTransitGatewayPrefixListReferenceResult,
            DeleteTransitGatewayPrefixListReferenceResultBuilder> {
  factory DeleteTransitGatewayPrefixListReferenceResult(
      {TransitGatewayPrefixListReference? transitGatewayPrefixListReference}) {
    return _$DeleteTransitGatewayPrefixListReferenceResult._(
        transitGatewayPrefixListReference: transitGatewayPrefixListReference);
  }

  factory DeleteTransitGatewayPrefixListReferenceResult.build(
      [void Function(DeleteTransitGatewayPrefixListReferenceResultBuilder)
          updates]) = _$DeleteTransitGatewayPrefixListReferenceResult;

  const DeleteTransitGatewayPrefixListReferenceResult._();

  /// Constructs a [DeleteTransitGatewayPrefixListReferenceResult] from a [payload] and [response].
  factory DeleteTransitGatewayPrefixListReferenceResult.fromResponse(
    DeleteTransitGatewayPrefixListReferenceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DeleteTransitGatewayPrefixListReferenceResult>>
      serializers = [
    DeleteTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
  ];

  /// Information about the deleted prefix list reference.
  TransitGatewayPrefixListReference? get transitGatewayPrefixListReference;
  @override
  List<Object?> get props => [transitGatewayPrefixListReference];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayPrefixListReferenceResult')
      ..add(
        'transitGatewayPrefixListReference',
        transitGatewayPrefixListReference,
      );
    return helper.toString();
  }
}

class DeleteTransitGatewayPrefixListReferenceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeleteTransitGatewayPrefixListReferenceResult> {
  const DeleteTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
      : super('DeleteTransitGatewayPrefixListReferenceResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayPrefixListReferenceResult,
        _$DeleteTransitGatewayPrefixListReferenceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayPrefixListReferenceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayPrefixListReferenceResultBuilder();
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
    DeleteTransitGatewayPrefixListReferenceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayPrefixListReferenceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayPrefixListReferenceResult(
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
