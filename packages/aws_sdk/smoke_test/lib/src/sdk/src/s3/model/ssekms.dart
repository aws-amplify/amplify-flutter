// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.ssekms; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ssekms.g.dart';

/// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
abstract class Ssekms
    with _i1.AWSEquatable<Ssekms>
    implements Built<Ssekms, SsekmsBuilder> {
  /// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
  factory Ssekms({required String keyId}) {
    return _$Ssekms._(keyId: keyId);
  }

  /// Specifies the use of SSE-KMS to encrypt delivered inventory reports.
  factory Ssekms.build([void Function(SsekmsBuilder) updates]) = _$Ssekms;

  const Ssekms._();

  static const List<_i2.SmithySerializer> serializers = [
    SsekmsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SsekmsBuilder b) {}

  /// Specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key to use for encrypting inventory reports.
  String get keyId;
  @override
  List<Object?> get props => [keyId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ssekms');
    helper.add(
      'keyId',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class SsekmsRestXmlSerializer extends _i2.StructuredSmithySerializer<Ssekms> {
  const SsekmsRestXmlSerializer() : super('Ssekms');

  @override
  Iterable<Type> get types => const [
        Ssekms,
        _$Ssekms,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Ssekms deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SsekmsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'KeyId':
          result.keyId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as Ssekms);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SSE-KMS',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('KeyId'))
      ..add(serializers.serialize(
        payload.keyId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
