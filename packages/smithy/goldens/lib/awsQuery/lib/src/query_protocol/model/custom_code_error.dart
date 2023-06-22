// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.custom_code_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'custom_code_error.g.dart';

abstract class CustomCodeError
    with _i1.AWSEquatable<CustomCodeError>
    implements
        Built<CustomCodeError, CustomCodeErrorBuilder>,
        _i2.SmithyHttpException {
  factory CustomCodeError({String? message}) {
    return _$CustomCodeError._(message: message);
  }

  factory CustomCodeError.build(
      [void Function(CustomCodeErrorBuilder) updates]) = _$CustomCodeError;

  const CustomCodeError._();

  /// Constructs a [CustomCodeError] from a [payload] and [response].
  factory CustomCodeError.fromResponse(
    CustomCodeError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<CustomCodeError>> serializers = [
    CustomCodeErrorAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CustomCodeErrorBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'aws.protocoltests.query',
        shape: 'CustomCodeError',
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
    final helper = newBuiltValueToStringHelper('CustomCodeError')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class CustomCodeErrorAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CustomCodeError> {
  const CustomCodeErrorAwsQuerySerializer() : super('CustomCodeError');

  @override
  Iterable<Type> get types => const [
        CustomCodeError,
        _$CustomCodeError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CustomCodeError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomCodeErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    CustomCodeError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CustomCodeErrorResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final CustomCodeError(:message) = object;
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
