// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_fast_snapshot_restore_state_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enable_fast_snapshot_restore_state_error.g.dart';

/// Describes an error that occurred when enabling fast snapshot restores.
abstract class EnableFastSnapshotRestoreStateError
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoreStateError>
    implements
        Built<EnableFastSnapshotRestoreStateError,
            EnableFastSnapshotRestoreStateErrorBuilder> {
  /// Describes an error that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreStateError({
    String? code,
    String? message,
  }) {
    return _$EnableFastSnapshotRestoreStateError._(
      code: code,
      message: message,
    );
  }

  /// Describes an error that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreStateError.build(
          [void Function(EnableFastSnapshotRestoreStateErrorBuilder) updates]) =
      _$EnableFastSnapshotRestoreStateError;

  const EnableFastSnapshotRestoreStateError._();

  static const List<_i2.SmithySerializer<EnableFastSnapshotRestoreStateError>>
      serializers = [EnableFastSnapshotRestoreStateErrorEc2QuerySerializer()];

  /// The error code.
  String? get code;

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
        newBuiltValueToStringHelper('EnableFastSnapshotRestoreStateError')
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

class EnableFastSnapshotRestoreStateErrorEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<EnableFastSnapshotRestoreStateError> {
  const EnableFastSnapshotRestoreStateErrorEc2QuerySerializer()
      : super('EnableFastSnapshotRestoreStateError');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoreStateError,
        _$EnableFastSnapshotRestoreStateError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoreStateError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoreStateErrorBuilder();
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
            specifiedType: const FullType(String),
          ) as String);
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
    EnableFastSnapshotRestoreStateError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableFastSnapshotRestoreStateErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableFastSnapshotRestoreStateError(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
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
