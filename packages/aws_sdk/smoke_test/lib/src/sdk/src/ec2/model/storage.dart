// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.storage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/s3_storage.dart';

part 'storage.g.dart';

/// Describes the storage location for an instance store-backed AMI.
abstract class Storage
    with _i1.AWSEquatable<Storage>
    implements Built<Storage, StorageBuilder> {
  /// Describes the storage location for an instance store-backed AMI.
  factory Storage({S3Storage? s3}) {
    return _$Storage._(s3: s3);
  }

  /// Describes the storage location for an instance store-backed AMI.
  factory Storage.build([void Function(StorageBuilder) updates]) = _$Storage;

  const Storage._();

  static const List<_i2.SmithySerializer<Storage>> serializers = [
    StorageEc2QuerySerializer()
  ];

  /// An Amazon S3 storage location.
  S3Storage? get s3;
  @override
  List<Object?> get props => [s3];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Storage')
      ..add(
        's3',
        s3,
      );
    return helper.toString();
  }
}

class StorageEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Storage> {
  const StorageEc2QuerySerializer() : super('Storage');

  @override
  Iterable<Type> get types => const [
        Storage,
        _$Storage,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Storage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(S3Storage),
          ) as S3Storage));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Storage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StorageResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Storage(:s3) = object;
    if (s3 != null) {
      result$
        ..add(const _i2.XmlElementName('S3'))
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(S3Storage),
        ));
    }
    return result$;
  }
}
