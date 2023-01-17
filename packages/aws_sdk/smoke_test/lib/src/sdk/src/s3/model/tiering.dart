// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.tiering; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart'
    as _i2;

part 'tiering.g.dart';

/// The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without additional operational overhead.
abstract class Tiering
    with _i1.AWSEquatable<Tiering>
    implements Built<Tiering, TieringBuilder> {
  /// The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without additional operational overhead.
  factory Tiering({
    required _i2.IntelligentTieringAccessTier accessTier,
    int? days,
  }) {
    days ??= 0;
    return _$Tiering._(
      accessTier: accessTier,
      days: days,
    );
  }

  /// The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without additional operational overhead.
  factory Tiering.build([void Function(TieringBuilder) updates]) = _$Tiering;

  const Tiering._();

  static const List<_i3.SmithySerializer> serializers = [
    TieringRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TieringBuilder b) {
    b.days = 0;
  }

  /// S3 Intelligent-Tiering access tier. See [Storage class for automatically optimizing frequently and infrequently accessed objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access) for a list of access tiers in the S3 Intelligent-Tiering storage class.
  _i2.IntelligentTieringAccessTier get accessTier;

  /// The number of consecutive days of no access after which an object will be eligible to be transitioned to the corresponding tier. The minimum number of days specified for Archive Access tier must be at least 90 days and Deep Archive Access tier must be at least 180 days. The maximum can be up to 2 years (730 days).
  int get days;
  @override
  List<Object?> get props => [
        accessTier,
        days,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Tiering');
    helper.add(
      'accessTier',
      accessTier,
    );
    helper.add(
      'days',
      days,
    );
    return helper.toString();
  }
}

class TieringRestXmlSerializer extends _i3.StructuredSmithySerializer<Tiering> {
  const TieringRestXmlSerializer() : super('Tiering');

  @override
  Iterable<Type> get types => const [
        Tiering,
        _$Tiering,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Tiering deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TieringBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessTier':
          result.accessTier = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.IntelligentTieringAccessTier),
          ) as _i2.IntelligentTieringAccessTier);
          break;
        case 'Days':
          result.days = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as Tiering);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Tiering',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('AccessTier'))
      ..add(serializers.serialize(
        payload.accessTier,
        specifiedType:
            const FullType.nullable(_i2.IntelligentTieringAccessTier),
      ));
    result
      ..add(const _i3.XmlElementName('Days'))
      ..add(serializers.serialize(
        payload.days,
        specifiedType: const FullType.nullable(int),
      ));
    return result;
  }
}
