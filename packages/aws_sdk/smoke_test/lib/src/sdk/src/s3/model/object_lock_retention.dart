// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.object_lock_retention; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart'
    as _i2;

part 'object_lock_retention.g.dart';

/// A Retention configuration for an object.
abstract class ObjectLockRetention
    with _i1.AWSEquatable<ObjectLockRetention>
    implements Built<ObjectLockRetention, ObjectLockRetentionBuilder> {
  /// A Retention configuration for an object.
  factory ObjectLockRetention({
    _i2.ObjectLockRetentionMode? mode,
    DateTime? retainUntilDate,
  }) {
    return _$ObjectLockRetention._(
      mode: mode,
      retainUntilDate: retainUntilDate,
    );
  }

  /// A Retention configuration for an object.
  factory ObjectLockRetention.build(
          [void Function(ObjectLockRetentionBuilder) updates]) =
      _$ObjectLockRetention;

  const ObjectLockRetention._();

  static const List<_i3.SmithySerializer<ObjectLockRetention>> serializers = [
    ObjectLockRetentionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectLockRetentionBuilder b) {}

  /// Indicates the Retention mode for the specified object.
  _i2.ObjectLockRetentionMode? get mode;

  /// The date on which this Object Lock Retention will expire.
  DateTime? get retainUntilDate;
  @override
  List<Object?> get props => [
        mode,
        retainUntilDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectLockRetention')
      ..add(
        'mode',
        mode,
      )
      ..add(
        'retainUntilDate',
        retainUntilDate,
      );
    return helper.toString();
  }
}

class ObjectLockRetentionRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ObjectLockRetention> {
  const ObjectLockRetentionRestXmlSerializer() : super('ObjectLockRetention');

  @override
  Iterable<Type> get types => const [
        ObjectLockRetention,
        _$ObjectLockRetention,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectLockRetention deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockRetentionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ObjectLockRetentionMode),
          ) as _i2.ObjectLockRetentionMode);
        case 'RetainUntilDate':
          result.retainUntilDate = _i3.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ObjectLockRetention object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ObjectLockRetention',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockRetention(:mode, :retainUntilDate) = object;
    if (mode != null) {
      result$
        ..add(const _i3.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType.nullable(_i2.ObjectLockRetentionMode),
        ));
    }
    if (retainUntilDate != null) {
      result$
        ..add(const _i3.XmlElementName('RetainUntilDate'))
        ..add(_i3.TimestampSerializer.dateTime.serialize(
          serializers,
          retainUntilDate,
        ));
    }
    return result$;
  }
}
