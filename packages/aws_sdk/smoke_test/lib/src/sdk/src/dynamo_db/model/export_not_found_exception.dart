// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.export_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_not_found_exception.g.dart';

/// The specified export was not found.
abstract class ExportNotFoundException
    with _i1.AWSEquatable<ExportNotFoundException>
    implements
        Built<ExportNotFoundException, ExportNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified export was not found.
  factory ExportNotFoundException({String? message}) {
    return _$ExportNotFoundException._(message: message);
  }

  /// The specified export was not found.
  factory ExportNotFoundException.build(
          [void Function(ExportNotFoundExceptionBuilder) updates]) =
      _$ExportNotFoundException;

  const ExportNotFoundException._();

  /// Constructs a [ExportNotFoundException] from a [payload] and [response].
  factory ExportNotFoundException.fromResponse(
    ExportNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ExportNotFoundExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ExportNotFoundException',
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
    final helper = newBuiltValueToStringHelper('ExportNotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ExportNotFoundExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ExportNotFoundException> {
  const ExportNotFoundExceptionAwsJson10Serializer()
      : super('ExportNotFoundException');

  @override
  Iterable<Type> get types => const [
        ExportNotFoundException,
        _$ExportNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ExportNotFoundException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
