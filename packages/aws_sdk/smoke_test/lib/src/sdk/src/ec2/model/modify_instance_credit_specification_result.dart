// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_credit_specification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/successful_instance_credit_specification_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item.dart';

part 'modify_instance_credit_specification_result.g.dart';

abstract class ModifyInstanceCreditSpecificationResult
    with
        _i1.AWSEquatable<ModifyInstanceCreditSpecificationResult>
    implements
        Built<ModifyInstanceCreditSpecificationResult,
            ModifyInstanceCreditSpecificationResultBuilder> {
  factory ModifyInstanceCreditSpecificationResult({
    List<SuccessfulInstanceCreditSpecificationItem>?
        successfulInstanceCreditSpecifications,
    List<UnsuccessfulInstanceCreditSpecificationItem>?
        unsuccessfulInstanceCreditSpecifications,
  }) {
    return _$ModifyInstanceCreditSpecificationResult._(
      successfulInstanceCreditSpecifications:
          successfulInstanceCreditSpecifications == null
              ? null
              : _i2.BuiltList(successfulInstanceCreditSpecifications),
      unsuccessfulInstanceCreditSpecifications:
          unsuccessfulInstanceCreditSpecifications == null
              ? null
              : _i2.BuiltList(unsuccessfulInstanceCreditSpecifications),
    );
  }

  factory ModifyInstanceCreditSpecificationResult.build(
      [void Function(ModifyInstanceCreditSpecificationResultBuilder)
          updates]) = _$ModifyInstanceCreditSpecificationResult;

  const ModifyInstanceCreditSpecificationResult._();

  /// Constructs a [ModifyInstanceCreditSpecificationResult] from a [payload] and [response].
  factory ModifyInstanceCreditSpecificationResult.fromResponse(
    ModifyInstanceCreditSpecificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<ModifyInstanceCreditSpecificationResult>>
      serializers = [
    ModifyInstanceCreditSpecificationResultEc2QuerySerializer()
  ];

  /// Information about the instances whose credit option for CPU usage was successfully modified.
  _i2.BuiltList<SuccessfulInstanceCreditSpecificationItem>?
      get successfulInstanceCreditSpecifications;

  /// Information about the instances whose credit option for CPU usage was not modified.
  _i2.BuiltList<UnsuccessfulInstanceCreditSpecificationItem>?
      get unsuccessfulInstanceCreditSpecifications;
  @override
  List<Object?> get props => [
        successfulInstanceCreditSpecifications,
        unsuccessfulInstanceCreditSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceCreditSpecificationResult')
          ..add(
            'successfulInstanceCreditSpecifications',
            successfulInstanceCreditSpecifications,
          )
          ..add(
            'unsuccessfulInstanceCreditSpecifications',
            unsuccessfulInstanceCreditSpecifications,
          );
    return helper.toString();
  }
}

class ModifyInstanceCreditSpecificationResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyInstanceCreditSpecificationResult> {
  const ModifyInstanceCreditSpecificationResultEc2QuerySerializer()
      : super('ModifyInstanceCreditSpecificationResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceCreditSpecificationResult,
        _$ModifyInstanceCreditSpecificationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceCreditSpecificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceCreditSpecificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successfulInstanceCreditSpecificationSet':
          result.successfulInstanceCreditSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SuccessfulInstanceCreditSpecificationItem)],
            ),
          ) as _i2.BuiltList<SuccessfulInstanceCreditSpecificationItem>));
        case 'unsuccessfulInstanceCreditSpecificationSet':
          result.unsuccessfulInstanceCreditSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UnsuccessfulInstanceCreditSpecificationItem)],
            ),
          ) as _i2.BuiltList<UnsuccessfulInstanceCreditSpecificationItem>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceCreditSpecificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ModifyInstanceCreditSpecificationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceCreditSpecificationResult(
      :successfulInstanceCreditSpecifications,
      :unsuccessfulInstanceCreditSpecifications
    ) = object;
    if (successfulInstanceCreditSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName(
            'SuccessfulInstanceCreditSpecificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successfulInstanceCreditSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(SuccessfulInstanceCreditSpecificationItem)],
          ),
        ));
    }
    if (unsuccessfulInstanceCreditSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName(
            'UnsuccessfulInstanceCreditSpecificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          unsuccessfulInstanceCreditSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(UnsuccessfulInstanceCreditSpecificationItem)],
          ),
        ));
    }
    return result$;
  }
}
