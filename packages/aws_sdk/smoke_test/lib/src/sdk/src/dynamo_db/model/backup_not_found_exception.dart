// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.backup_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'backup_not_found_exception.g.dart';

/// Backup not found for the given BackupARN.
abstract class BackupNotFoundException
    with _i1.AWSEquatable<BackupNotFoundException>
    implements
        Built<BackupNotFoundException, BackupNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Backup not found for the given BackupARN.
  factory BackupNotFoundException({String? message}) {
    return _$BackupNotFoundException._(message: message);
  }

  /// Backup not found for the given BackupARN.
  factory BackupNotFoundException.build(
          [void Function(BackupNotFoundExceptionBuilder) updates]) =
      _$BackupNotFoundException;

  const BackupNotFoundException._();

  /// Constructs a [BackupNotFoundException] from a [payload] and [response].
  factory BackupNotFoundException.fromResponse(
    BackupNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<BackupNotFoundException>> serializers =
      [BackupNotFoundExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BackupNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'BackupNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupNotFoundException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class BackupNotFoundExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<BackupNotFoundException> {
  const BackupNotFoundExceptionAwsJson10Serializer()
      : super('BackupNotFoundException');

  @override
  Iterable<Type> get types => const [
        BackupNotFoundException,
        _$BackupNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BackupNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    BackupNotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BackupNotFoundException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
