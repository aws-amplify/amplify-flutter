// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.not_found; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'not_found.g.dart';

/// The specified content does not exist.
abstract class NotFound
    with _i1.AWSEquatable<NotFound>
    implements
        Built<NotFound, NotFoundBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The specified content does not exist.
  factory NotFound() {
    return _$NotFound._();
  }

  /// The specified content does not exist.
  factory NotFound.build([void Function(NotFoundBuilder) updates]) = _$NotFound;

  const NotFound._();

  /// Constructs a [NotFound] from a [payload] and [response].
  factory NotFound.fromResponse(
    NotFound payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NotFoundRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NotFoundBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'NotFound',
      );
  @override
  String? get message => null;
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
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NotFound');
    return helper.toString();
  }
}

class NotFoundRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NotFound> {
  const NotFoundRestXmlSerializer() : super('NotFound');

  @override
  Iterable<Type> get types => const [
        NotFound,
        _$NotFound,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NotFound deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return NotFoundBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'NotFound',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
