// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.lifecycle_expiration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'lifecycle_expiration.g.dart';

/// Container for the expiration for the lifecycle of the object.
abstract class LifecycleExpiration
    with _i1.AWSEquatable<LifecycleExpiration>
    implements Built<LifecycleExpiration, LifecycleExpirationBuilder> {
  /// Container for the expiration for the lifecycle of the object.
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
  factory LifecycleExpiration.build(
          [void Function(LifecycleExpirationBuilder) updates]) =
      _$LifecycleExpiration;

  const LifecycleExpiration._();

  static const List<_i2.SmithySerializer> serializers = [
    LifecycleExpirationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LifecycleExpirationBuilder b) {}

  /// Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
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
    final helper = newBuiltValueToStringHelper('LifecycleExpiration');
    helper.add(
      'date',
      date,
    );
    helper.add(
      'days',
      days,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Date':
          if (value != null) {
            result.date = _i2.TimestampSerializer.dateTime.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'Days':
          if (value != null) {
            result.days = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'ExpiredObjectDeleteMarker':
          if (value != null) {
            result.expiredObjectDeleteMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as LifecycleExpiration);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LifecycleExpiration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.date != null) {
      result
        ..add(const _i2.XmlElementName('Date'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          payload.date!,
        ));
    }
    if (payload.days != null) {
      result
        ..add(const _i2.XmlElementName('Days'))
        ..add(serializers.serialize(
          payload.days!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.expiredObjectDeleteMarker != null) {
      result
        ..add(const _i2.XmlElementName('ExpiredObjectDeleteMarker'))
        ..add(serializers.serialize(
          payload.expiredObjectDeleteMarker!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
