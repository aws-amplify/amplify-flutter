// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_fleet_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_code.dart';

part 'delete_fleet_error.g.dart';

/// Describes an EC2 Fleet error.
abstract class DeleteFleetError
    with _i1.AWSEquatable<DeleteFleetError>
    implements Built<DeleteFleetError, DeleteFleetErrorBuilder> {
  /// Describes an EC2 Fleet error.
  factory DeleteFleetError({
    DeleteFleetErrorCode? code,
    String? message,
  }) {
    return _$DeleteFleetError._(
      code: code,
      message: message,
    );
  }

  /// Describes an EC2 Fleet error.
  factory DeleteFleetError.build(
      [void Function(DeleteFleetErrorBuilder) updates]) = _$DeleteFleetError;

  const DeleteFleetError._();

  static const List<_i2.SmithySerializer<DeleteFleetError>> serializers = [
    DeleteFleetErrorEc2QuerySerializer()
  ];

  /// The error code.
  DeleteFleetErrorCode? get code;

  /// The description for the error code.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetError')
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

class DeleteFleetErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteFleetError> {
  const DeleteFleetErrorEc2QuerySerializer() : super('DeleteFleetError');

  @override
  Iterable<Type> get types => const [
        DeleteFleetError,
        _$DeleteFleetError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetErrorBuilder();
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
            specifiedType: const FullType(DeleteFleetErrorCode),
          ) as DeleteFleetErrorCode);
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
    DeleteFleetError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteFleetErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteFleetError(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType.nullable(DeleteFleetErrorCode),
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
