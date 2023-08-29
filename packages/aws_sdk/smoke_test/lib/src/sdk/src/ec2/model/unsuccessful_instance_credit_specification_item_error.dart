// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unsuccessful_instance_credit_specification_item_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_error_code.dart';

part 'unsuccessful_instance_credit_specification_item_error.g.dart';

/// Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
abstract class UnsuccessfulInstanceCreditSpecificationItemError
    with
        _i1.AWSEquatable<UnsuccessfulInstanceCreditSpecificationItemError>
    implements
        Built<UnsuccessfulInstanceCreditSpecificationItemError,
            UnsuccessfulInstanceCreditSpecificationItemErrorBuilder> {
  /// Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItemError({
    UnsuccessfulInstanceCreditSpecificationErrorCode? code,
    String? message,
  }) {
    return _$UnsuccessfulInstanceCreditSpecificationItemError._(
      code: code,
      message: message,
    );
  }

  /// Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItemError.build(
      [void Function(UnsuccessfulInstanceCreditSpecificationItemErrorBuilder)
          updates]) = _$UnsuccessfulInstanceCreditSpecificationItemError;

  const UnsuccessfulInstanceCreditSpecificationItemError._();

  static const List<
          _i2
          .SmithySerializer<UnsuccessfulInstanceCreditSpecificationItemError>>
      serializers = [
    UnsuccessfulInstanceCreditSpecificationItemErrorEc2QuerySerializer()
  ];

  /// The error code.
  UnsuccessfulInstanceCreditSpecificationErrorCode? get code;

  /// The applicable error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UnsuccessfulInstanceCreditSpecificationItemError')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class UnsuccessfulInstanceCreditSpecificationItemErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        UnsuccessfulInstanceCreditSpecificationItemError> {
  const UnsuccessfulInstanceCreditSpecificationItemErrorEc2QuerySerializer()
      : super('UnsuccessfulInstanceCreditSpecificationItemError');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulInstanceCreditSpecificationItemError,
        _$UnsuccessfulInstanceCreditSpecificationItemError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulInstanceCreditSpecificationItemError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulInstanceCreditSpecificationItemErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(
                UnsuccessfulInstanceCreditSpecificationErrorCode),
          ) as UnsuccessfulInstanceCreditSpecificationErrorCode);
        case 'message':
          result.message = (serializers.deserialize(
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
    UnsuccessfulInstanceCreditSpecificationItemError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UnsuccessfulInstanceCreditSpecificationItemErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UnsuccessfulInstanceCreditSpecificationItemError(:code, :message) =
        object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType.nullable(
              UnsuccessfulInstanceCreditSpecificationErrorCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
