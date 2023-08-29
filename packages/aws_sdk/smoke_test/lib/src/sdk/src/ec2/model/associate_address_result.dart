// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_address_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'associate_address_result.g.dart';

abstract class AssociateAddressResult
    with _i1.AWSEquatable<AssociateAddressResult>
    implements Built<AssociateAddressResult, AssociateAddressResultBuilder> {
  factory AssociateAddressResult({String? associationId}) {
    return _$AssociateAddressResult._(associationId: associationId);
  }

  factory AssociateAddressResult.build(
          [void Function(AssociateAddressResultBuilder) updates]) =
      _$AssociateAddressResult;

  const AssociateAddressResult._();

  /// Constructs a [AssociateAddressResult] from a [payload] and [response].
  factory AssociateAddressResult.fromResponse(
    AssociateAddressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssociateAddressResult>> serializers =
      [AssociateAddressResultEc2QuerySerializer()];

  /// The ID that represents the association of the Elastic IP address with an instance.
  String? get associationId;
  @override
  List<Object?> get props => [associationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateAddressResult')
      ..add(
        'associationId',
        associationId,
      );
    return helper.toString();
  }
}

class AssociateAddressResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociateAddressResult> {
  const AssociateAddressResultEc2QuerySerializer()
      : super('AssociateAddressResult');

  @override
  Iterable<Type> get types => const [
        AssociateAddressResult,
        _$AssociateAddressResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateAddressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateAddressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
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
    AssociateAddressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateAddressResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateAddressResult(:associationId) = object;
    if (associationId != null) {
      result$
        ..add(const _i2.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
