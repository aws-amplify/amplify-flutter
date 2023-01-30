// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.transition; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/transition_storage_class.dart'
    as _i2;

part 'transition.g.dart';

/// Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the _Amazon S3 User Guide_.
abstract class Transition
    with _i1.AWSEquatable<Transition>
    implements Built<Transition, TransitionBuilder> {
  /// Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the _Amazon S3 User Guide_.
  factory Transition({
    DateTime? date,
    int? days,
    _i2.TransitionStorageClass? storageClass,
  }) {
    return _$Transition._(
      date: date,
      days: days,
      storageClass: storageClass,
    );
  }

  /// Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the _Amazon S3 User Guide_.
  factory Transition.build([void Function(TransitionBuilder) updates]) =
      _$Transition;

  const Transition._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitionBuilder b) {}

  /// Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC.
  DateTime? get date;

  /// Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
  int? get days;

  /// The storage class to which you want the object to transition.
  _i2.TransitionStorageClass? get storageClass;
  @override
  List<Object?> get props => [
        date,
        days,
        storageClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Transition');
    helper.add(
      'date',
      date,
    );
    helper.add(
      'days',
      days,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    return helper.toString();
  }
}

class TransitionRestXmlSerializer
    extends _i3.StructuredSmithySerializer<Transition> {
  const TransitionRestXmlSerializer() : super('Transition');

  @override
  Iterable<Type> get types => const [
        Transition,
        _$Transition,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Transition deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Date':
          if (value != null) {
            result.date = _i3.TimestampSerializer.dateTime.deserialize(
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
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitionStorageClass),
            ) as _i2.TransitionStorageClass);
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
    final payload = (object as Transition);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Transition',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.date != null) {
      result
        ..add(const _i3.XmlElementName('Date'))
        ..add(_i3.TimestampSerializer.dateTime.serialize(
          serializers,
          payload.date!,
        ));
    }
    if (payload.days != null) {
      result
        ..add(const _i3.XmlElementName('Days'))
        ..add(serializers.serialize(
          payload.days!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i3.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i2.TransitionStorageClass),
        ));
    }
    return result;
  }
}
