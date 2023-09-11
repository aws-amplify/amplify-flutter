// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.object_lock_retention; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart';

part 'object_lock_retention.g.dart';

/// A Retention configuration for an object.
abstract class ObjectLockRetention
    with _i1.AWSEquatable<ObjectLockRetention>
    implements Built<ObjectLockRetention, ObjectLockRetentionBuilder> {
  /// A Retention configuration for an object.
  factory ObjectLockRetention({
    ObjectLockRetentionMode? mode,
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

  static const List<_i2.SmithySerializer<ObjectLockRetention>> serializers = [
    ObjectLockRetentionRestXmlSerializer()
  ];

  /// Indicates the Retention mode for the specified object.
  ObjectLockRetentionMode? get mode;

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
    extends _i2.StructuredSmithySerializer<ObjectLockRetention> {
  const ObjectLockRetentionRestXmlSerializer() : super('ObjectLockRetention');

  @override
  Iterable<Type> get types => const [
        ObjectLockRetention,
        _$ObjectLockRetention,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(ObjectLockRetentionMode),
          ) as ObjectLockRetentionMode);
        case 'RetainUntilDate':
          result.retainUntilDate = _i2.TimestampSerializer.dateTime.deserialize(
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
      const _i2.XmlElementName(
        'ObjectLockRetention',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockRetention(:mode, :retainUntilDate) = object;
    if (mode != null) {
      result$
        ..add(const _i2.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType(ObjectLockRetentionMode),
        ));
    }
    if (retainUntilDate != null) {
      result$
        ..add(const _i2.XmlElementName('RetainUntilDate'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          retainUntilDate,
        ));
    }
    return result$;
  }
}
