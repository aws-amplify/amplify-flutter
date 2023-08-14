// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_trunk_interface_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart';

part 'describe_trunk_interface_associations_result.g.dart';

abstract class DescribeTrunkInterfaceAssociationsResult
    with
        _i1.AWSEquatable<DescribeTrunkInterfaceAssociationsResult>
    implements
        Built<DescribeTrunkInterfaceAssociationsResult,
            DescribeTrunkInterfaceAssociationsResultBuilder> {
  factory DescribeTrunkInterfaceAssociationsResult({
    List<TrunkInterfaceAssociation>? interfaceAssociations,
    String? nextToken,
  }) {
    return _$DescribeTrunkInterfaceAssociationsResult._(
      interfaceAssociations: interfaceAssociations == null
          ? null
          : _i2.BuiltList(interfaceAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeTrunkInterfaceAssociationsResult.build(
      [void Function(DescribeTrunkInterfaceAssociationsResultBuilder)
          updates]) = _$DescribeTrunkInterfaceAssociationsResult;

  const DescribeTrunkInterfaceAssociationsResult._();

  /// Constructs a [DescribeTrunkInterfaceAssociationsResult] from a [payload] and [response].
  factory DescribeTrunkInterfaceAssociationsResult.fromResponse(
    DescribeTrunkInterfaceAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTrunkInterfaceAssociationsResult>>
      serializers = [
    DescribeTrunkInterfaceAssociationsResultEc2QuerySerializer()
  ];

  /// Information about the trunk associations.
  _i2.BuiltList<TrunkInterfaceAssociation>? get interfaceAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        interfaceAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrunkInterfaceAssociationsResult')
          ..add(
            'interfaceAssociations',
            interfaceAssociations,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTrunkInterfaceAssociationsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTrunkInterfaceAssociationsResult> {
  const DescribeTrunkInterfaceAssociationsResultEc2QuerySerializer()
      : super('DescribeTrunkInterfaceAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTrunkInterfaceAssociationsResult,
        _$DescribeTrunkInterfaceAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrunkInterfaceAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrunkInterfaceAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'interfaceAssociationSet':
          result.interfaceAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TrunkInterfaceAssociation)],
            ),
          ) as _i2.BuiltList<TrunkInterfaceAssociation>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeTrunkInterfaceAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTrunkInterfaceAssociationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTrunkInterfaceAssociationsResult(
      :interfaceAssociations,
      :nextToken
    ) = object;
    if (interfaceAssociations != null) {
      result$
        ..add(const _i3.XmlElementName('InterfaceAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          interfaceAssociations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TrunkInterfaceAssociation)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
