// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.inventory_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_s3_bucket_destination.dart';

part 'inventory_destination.g.dart';

/// Specifies the inventory configuration for an Amazon S3 bucket.
abstract class InventoryDestination
    with _i1.AWSEquatable<InventoryDestination>
    implements Built<InventoryDestination, InventoryDestinationBuilder> {
  /// Specifies the inventory configuration for an Amazon S3 bucket.
  factory InventoryDestination(
      {required InventoryS3BucketDestination s3BucketDestination}) {
    return _$InventoryDestination._(s3BucketDestination: s3BucketDestination);
  }

  /// Specifies the inventory configuration for an Amazon S3 bucket.
  factory InventoryDestination.build(
          [void Function(InventoryDestinationBuilder) updates]) =
      _$InventoryDestination;

  const InventoryDestination._();

  static const List<_i2.SmithySerializer<InventoryDestination>> serializers = [
    InventoryDestinationRestXmlSerializer()
  ];

  /// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
  InventoryS3BucketDestination get s3BucketDestination;
  @override
  List<Object?> get props => [s3BucketDestination];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryDestination')
      ..add(
        's3BucketDestination',
        s3BucketDestination,
      );
    return helper.toString();
  }
}

class InventoryDestinationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InventoryDestination> {
  const InventoryDestinationRestXmlSerializer() : super('InventoryDestination');

  @override
  Iterable<Type> get types => const [
        InventoryDestination,
        _$InventoryDestination,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3BucketDestination':
          result.s3BucketDestination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InventoryS3BucketDestination),
          ) as InventoryS3BucketDestination));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InventoryDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InventoryDestination',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventoryDestination(:s3BucketDestination) = object;
    result$
      ..add(const _i2.XmlElementName('S3BucketDestination'))
      ..add(serializers.serialize(
        s3BucketDestination,
        specifiedType: const FullType(InventoryS3BucketDestination),
      ));
    return result$;
  }
}