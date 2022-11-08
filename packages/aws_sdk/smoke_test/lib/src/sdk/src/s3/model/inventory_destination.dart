// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.inventory_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_s3_bucket_destination.dart'
    as _i2;

part 'inventory_destination.g.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket.
abstract class InventoryDestination
    with _i1.AWSEquatable<InventoryDestination>
    implements Built<InventoryDestination, InventoryDestinationBuilder> {
  /// Specifies the inventory configuration for an Amazon S3 bucket.
  factory InventoryDestination(
      {required _i2.InventoryS3BucketDestination s3BucketDestination}) {
    return _$InventoryDestination._(s3BucketDestination: s3BucketDestination);
  }

  /// Specifies the inventory configuration for an Amazon S3 bucket.
  factory InventoryDestination.build(
          [void Function(InventoryDestinationBuilder) updates]) =
      _$InventoryDestination;

  const InventoryDestination._();

  static const List<_i3.SmithySerializer> serializers = [
    InventoryDestinationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryDestinationBuilder b) {}

  /// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
  _i2.InventoryS3BucketDestination get s3BucketDestination;
  @override
  List<Object?> get props => [s3BucketDestination];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryDestination');
    helper.add(
      's3BucketDestination',
      s3BucketDestination,
    );
    return helper.toString();
  }
}

class InventoryDestinationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<InventoryDestination> {
  const InventoryDestinationRestXmlSerializer() : super('InventoryDestination');

  @override
  Iterable<Type> get types => const [
        InventoryDestination,
        _$InventoryDestination,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventoryDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryDestinationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'S3BucketDestination':
          result.s3BucketDestination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InventoryS3BucketDestination),
          ) as _i2.InventoryS3BucketDestination));
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
    final payload = (object as InventoryDestination);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InventoryDestination',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('S3BucketDestination'))
      ..add(serializers.serialize(
        payload.s3BucketDestination,
        specifiedType: const FullType(_i2.InventoryS3BucketDestination),
      ));
    return result;
  }
}
