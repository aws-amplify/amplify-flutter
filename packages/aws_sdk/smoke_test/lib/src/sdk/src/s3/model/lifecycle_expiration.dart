// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.lifecycle_expiration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'lifecycle_expiration.g.dart';

/// Container for the expiration for the lifecycle of the object.
///
/// For more information see, [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
abstract class LifecycleExpiration
    with _i1.AWSEquatable<LifecycleExpiration>
    implements Built<LifecycleExpiration, LifecycleExpirationBuilder> {
  /// Container for the expiration for the lifecycle of the object.
  ///
  /// For more information see, [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory LifecycleExpiration({
    DateTime? date,
    int? days,
    bool? expiredObjectDeleteMarker,
  }) {
    return _$LifecycleExpiration._(
      date: date,
      days: days,
      expiredObjectDeleteMarker: expiredObjectDeleteMarker,
    );
  }

  /// Container for the expiration for the lifecycle of the object.
  ///
  /// For more information see, [Managing your storage lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory LifecycleExpiration.build(
          [void Function(LifecycleExpirationBuilder) updates]) =
      _$LifecycleExpiration;

  const LifecycleExpiration._();

  static const List<_i2.SmithySerializer<LifecycleExpiration>> serializers = [
    LifecycleExpirationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LifecycleExpirationBuilder b) {}

  /// Indicates at what date the object is to be moved or deleted. The date value must conform to the ISO 8601 format. The time is always midnight UTC.
  DateTime? get date;

  /// Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
  int? get days;

  /// Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
  bool? get expiredObjectDeleteMarker;
  @override
  List<Object?> get props => [
        date,
        days,
        expiredObjectDeleteMarker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LifecycleExpiration')
      ..add(
        'date',
        date,
      )
      ..add(
        'days',
        days,
      )
      ..add(
        'expiredObjectDeleteMarker',
        expiredObjectDeleteMarker,
      );
    return helper.toString();
  }
}

class LifecycleExpirationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<LifecycleExpiration> {
  const LifecycleExpirationRestXmlSerializer() : super('LifecycleExpiration');

  @override
  Iterable<Type> get types => const [
        LifecycleExpiration,
        _$LifecycleExpiration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  LifecycleExpiration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LifecycleExpirationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Date':
          result.date = _i2.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'Days':
          result.days = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ExpiredObjectDeleteMarker':
          result.expiredObjectDeleteMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LifecycleExpiration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LifecycleExpiration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final LifecycleExpiration(:date, :days, :expiredObjectDeleteMarker) =
        object;
    if (date != null) {
      result$
        ..add(const _i2.XmlElementName('Date'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          date,
        ));
    }
    if (days != null) {
      result$
        ..add(const _i2.XmlElementName('Days'))
        ..add(serializers.serialize(
          days,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (expiredObjectDeleteMarker != null) {
      result$
        ..add(const _i2.XmlElementName('ExpiredObjectDeleteMarker'))
        ..add(serializers.serialize(
          expiredObjectDeleteMarker,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
