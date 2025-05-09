// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.no_such_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_key.g.dart';

/// The specified key does not exist.
abstract class NoSuchKey
    with _i1.AWSEquatable<NoSuchKey>
    implements
        Built<NoSuchKey, NoSuchKeyBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The specified key does not exist.
  factory NoSuchKey() {
    return _$NoSuchKey._();
  }

  /// The specified key does not exist.
  factory NoSuchKey.build([void Function(NoSuchKeyBuilder) updates]) =
      _$NoSuchKey;

  const NoSuchKey._();

  /// Constructs a [NoSuchKey] from a [payload] and [response].
  factory NoSuchKey.fromResponse(
    NoSuchKey payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload.rebuild((b) {
    b.headers = response.headers;
  });

  static const List<_i2.SmithySerializer<NoSuchKey>> serializers = [
    NoSuchKeyRestXmlSerializer(),
  ];

  @override
  _i2.ShapeId get shapeId =>
      const _i2.ShapeId(namespace: 'com.amazonaws.s3', shape: 'NoSuchKey');

  @override
  String? get message => null;

  @override
  _i2.RetryConfig? get retryConfig => null;

  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;

  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoSuchKey');
    return helper.toString();
  }
}

class NoSuchKeyRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NoSuchKey> {
  const NoSuchKeyRestXmlSerializer() : super('NoSuchKey');

  @override
  Iterable<Type> get types => const [NoSuchKey, _$NoSuchKey];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  NoSuchKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NoSuchKeyBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NoSuchKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NoSuchKey',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];

    return result$;
  }
}
