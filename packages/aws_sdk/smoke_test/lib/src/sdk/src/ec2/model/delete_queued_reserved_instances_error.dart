// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_queued_reserved_instances_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error_code.dart';

part 'delete_queued_reserved_instances_error.g.dart';

/// Describes the error for a Reserved Instance whose queued purchase could not be deleted.
abstract class DeleteQueuedReservedInstancesError
    with
        _i1.AWSEquatable<DeleteQueuedReservedInstancesError>
    implements
        Built<DeleteQueuedReservedInstancesError,
            DeleteQueuedReservedInstancesErrorBuilder> {
  /// Describes the error for a Reserved Instance whose queued purchase could not be deleted.
  factory DeleteQueuedReservedInstancesError({
    DeleteQueuedReservedInstancesErrorCode? code,
    String? message,
  }) {
    return _$DeleteQueuedReservedInstancesError._(
      code: code,
      message: message,
    );
  }

  /// Describes the error for a Reserved Instance whose queued purchase could not be deleted.
  factory DeleteQueuedReservedInstancesError.build(
          [void Function(DeleteQueuedReservedInstancesErrorBuilder) updates]) =
      _$DeleteQueuedReservedInstancesError;

  const DeleteQueuedReservedInstancesError._();

  static const List<_i2.SmithySerializer<DeleteQueuedReservedInstancesError>>
      serializers = [DeleteQueuedReservedInstancesErrorEc2QuerySerializer()];

  /// The error code.
  DeleteQueuedReservedInstancesErrorCode? get code;

  /// The error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteQueuedReservedInstancesError')
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

class DeleteQueuedReservedInstancesErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteQueuedReservedInstancesError> {
  const DeleteQueuedReservedInstancesErrorEc2QuerySerializer()
      : super('DeleteQueuedReservedInstancesError');

  @override
  Iterable<Type> get types => const [
        DeleteQueuedReservedInstancesError,
        _$DeleteQueuedReservedInstancesError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteQueuedReservedInstancesError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteQueuedReservedInstancesErrorBuilder();
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
            specifiedType:
                const FullType(DeleteQueuedReservedInstancesErrorCode),
          ) as DeleteQueuedReservedInstancesErrorCode);
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
    DeleteQueuedReservedInstancesError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteQueuedReservedInstancesErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteQueuedReservedInstancesError(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType:
              const FullType.nullable(DeleteQueuedReservedInstancesErrorCode),
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
