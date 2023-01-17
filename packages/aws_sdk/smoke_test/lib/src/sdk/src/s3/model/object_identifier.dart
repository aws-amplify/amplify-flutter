// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.object_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'object_identifier.g.dart';

/// Object Identifier is unique value to identify objects.
abstract class ObjectIdentifier
    with _i1.AWSEquatable<ObjectIdentifier>
    implements Built<ObjectIdentifier, ObjectIdentifierBuilder> {
  /// Object Identifier is unique value to identify objects.
  factory ObjectIdentifier({
    required String key,
    String? versionId,
  }) {
    return _$ObjectIdentifier._(
      key: key,
      versionId: versionId,
    );
  }

  /// Object Identifier is unique value to identify objects.
  factory ObjectIdentifier.build(
      [void Function(ObjectIdentifierBuilder) updates]) = _$ObjectIdentifier;

  const ObjectIdentifier._();

  static const List<_i2.SmithySerializer> serializers = [
    ObjectIdentifierRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectIdentifierBuilder b) {}

  /// Key name of the object.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String get key;

  /// VersionId for the specific version of the object to delete.
  String? get versionId;
  @override
  List<Object?> get props => [
        key,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectIdentifier');
    helper.add(
      'key',
      key,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class ObjectIdentifierRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectIdentifier> {
  const ObjectIdentifierRestXmlSerializer() : super('ObjectIdentifier');

  @override
  Iterable<Type> get types => const [
        ObjectIdentifier,
        _$ObjectIdentifier,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Key':
          result.key = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
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
    final payload = (object as ObjectIdentifier);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ObjectIdentifier',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Key'))
      ..add(serializers.serialize(
        payload.key,
        specifiedType: const FullType(String),
      ));
    if (payload.versionId != null) {
      result
        ..add(const _i2.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
