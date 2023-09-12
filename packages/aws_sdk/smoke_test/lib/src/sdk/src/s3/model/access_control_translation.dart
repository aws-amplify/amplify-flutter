// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.access_control_translation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/owner_override.dart';

part 'access_control_translation.g.dart';

/// A container for information about access control for replicas.
abstract class AccessControlTranslation
    with _i1.AWSEquatable<AccessControlTranslation>
    implements
        Built<AccessControlTranslation, AccessControlTranslationBuilder> {
  /// A container for information about access control for replicas.
  factory AccessControlTranslation({required OwnerOverride owner}) {
    return _$AccessControlTranslation._(owner: owner);
  }

  /// A container for information about access control for replicas.
  factory AccessControlTranslation.build(
          [void Function(AccessControlTranslationBuilder) updates]) =
      _$AccessControlTranslation;

  const AccessControlTranslation._();

  static const List<_i2.SmithySerializer<AccessControlTranslation>>
      serializers = [AccessControlTranslationRestXmlSerializer()];

  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the _Amazon S3 API Reference_.
  OwnerOverride get owner;
  @override
  List<Object?> get props => [owner];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessControlTranslation')
      ..add(
        'owner',
        owner,
      );
    return helper.toString();
  }
}

class AccessControlTranslationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<AccessControlTranslation> {
  const AccessControlTranslationRestXmlSerializer()
      : super('AccessControlTranslation');

  @override
  Iterable<Type> get types => const [
        AccessControlTranslation,
        _$AccessControlTranslation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Owner':
          result.owner = (serializers.deserialize(
            value,
            specifiedType: const FullType(OwnerOverride),
          ) as OwnerOverride);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessControlTranslation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AccessControlTranslation',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final AccessControlTranslation(:owner) = object;
    result$
      ..add(const _i2.XmlElementName('Owner'))
      ..add(serializers.serialize(
        owner,
        specifiedType: const FullType.nullable(OwnerOverride),
      ));
    return result$;
  }
}