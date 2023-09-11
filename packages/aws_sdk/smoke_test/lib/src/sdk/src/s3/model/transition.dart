// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.transition; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/transition_storage_class.dart';

part 'transition.g.dart';

/// Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the _Amazon S3 User Guide_.
abstract class Transition
    with _i1.AWSEquatable<Transition>
    implements Built<Transition, TransitionBuilder> {
  /// Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the _Amazon S3 User Guide_.
  factory Transition({
    DateTime? date,
    int? days,
    TransitionStorageClass? storageClass,
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

  static const List<_i2.SmithySerializer<Transition>> serializers = [
    TransitionRestXmlSerializer()
  ];

  /// Indicates when objects are transitioned to the specified storage class. The date value must be in ISO 8601 format. The time is always midnight UTC.
  DateTime? get date;

  /// Indicates the number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer.
  int? get days;

  /// The storage class to which you want the object to transition.
  TransitionStorageClass? get storageClass;
  @override
  List<Object?> get props => [
        date,
        days,
        storageClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Transition')
      ..add(
        'date',
        date,
      )
      ..add(
        'days',
        days,
      )
      ..add(
        'storageClass',
        storageClass,
      );
    return helper.toString();
  }
}

class TransitionRestXmlSerializer
    extends _i2.StructuredSmithySerializer<Transition> {
  const TransitionRestXmlSerializer() : super('Transition');

  @override
  Iterable<Type> get types => const [
        Transition,
        _$Transition,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitionStorageClass),
          ) as TransitionStorageClass);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Transition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Transition',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Transition(:date, :days, :storageClass) = object;
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
          specifiedType: const FullType(int),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType(TransitionStorageClass),
        ));
    }
    return result$;
  }
}
