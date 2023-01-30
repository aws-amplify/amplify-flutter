// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.sses3; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'sses3.g.dart';

/// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
abstract class Sses3
    with _i1.AWSEquatable<Sses3>
    implements Built<Sses3, Sses3Builder>, _i2.EmptyPayload {
  /// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
  factory Sses3() {
    return _$Sses3._();
  }

  /// Specifies the use of SSE-S3 to encrypt delivered inventory reports.
  factory Sses3.build([void Function(Sses3Builder) updates]) = _$Sses3;

  const Sses3._();

  static const List<_i2.SmithySerializer> serializers = [
    Sses3RestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Sses3Builder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Sses3');
    return helper.toString();
  }
}

class Sses3RestXmlSerializer extends _i2.StructuredSmithySerializer<Sses3> {
  const Sses3RestXmlSerializer() : super('Sses3');

  @override
  Iterable<Type> get types => const [
        Sses3,
        _$Sses3,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Sses3 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return Sses3Builder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'SSE-S3',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
