// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.access_control_translation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/owner_override.dart' as _i2;

part 'access_control_translation.g.dart';

/// A container for information about access control for replicas.
abstract class AccessControlTranslation
    with _i1.AWSEquatable<AccessControlTranslation>
    implements
        Built<AccessControlTranslation, AccessControlTranslationBuilder> {
  /// A container for information about access control for replicas.
  factory AccessControlTranslation({required _i2.OwnerOverride owner}) {
    return _$AccessControlTranslation._(owner: owner);
  }

  /// A container for information about access control for replicas.
  factory AccessControlTranslation.build(
          [void Function(AccessControlTranslationBuilder) updates]) =
      _$AccessControlTranslation;

  const AccessControlTranslation._();

  static const List<_i3.SmithySerializer> serializers = [
    AccessControlTranslationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessControlTranslationBuilder b) {}

  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the _Amazon S3 API Reference_.
  _i2.OwnerOverride get owner;
  @override
  List<Object?> get props => [owner];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessControlTranslation');
    helper.add(
      'owner',
      owner,
    );
    return helper.toString();
  }
}

class AccessControlTranslationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AccessControlTranslation> {
  const AccessControlTranslationRestXmlSerializer()
      : super('AccessControlTranslation');

  @override
  Iterable<Type> get types => const [
        AccessControlTranslation,
        _$AccessControlTranslation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AccessControlTranslation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessControlTranslationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Owner':
          result.owner = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.OwnerOverride),
          ) as _i2.OwnerOverride);
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
    final payload = (object as AccessControlTranslation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AccessControlTranslation',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Owner'))
      ..add(serializers.serialize(
        payload.owner,
        specifiedType: const FullType.nullable(_i2.OwnerOverride),
      ));
    return result;
  }
}
