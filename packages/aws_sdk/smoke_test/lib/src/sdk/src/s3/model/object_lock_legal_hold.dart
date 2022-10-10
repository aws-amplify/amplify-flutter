// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.object_lock_legal_hold; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i2;

part 'object_lock_legal_hold.g.dart';

/// A legal hold configuration for an object.
abstract class ObjectLockLegalHold
    with _i1.AWSEquatable<ObjectLockLegalHold>
    implements Built<ObjectLockLegalHold, ObjectLockLegalHoldBuilder> {
  /// A legal hold configuration for an object.
  factory ObjectLockLegalHold({_i2.ObjectLockLegalHoldStatus? status}) {
    return _$ObjectLockLegalHold._(status: status);
  }

  /// A legal hold configuration for an object.
  factory ObjectLockLegalHold.build(
          [void Function(ObjectLockLegalHoldBuilder) updates]) =
      _$ObjectLockLegalHold;

  const ObjectLockLegalHold._();

  static const List<_i3.SmithySerializer> serializers = [
    ObjectLockLegalHoldRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectLockLegalHoldBuilder b) {}

  /// Indicates whether the specified object has a legal hold in place.
  _i2.ObjectLockLegalHoldStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectLockLegalHold');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class ObjectLockLegalHoldRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ObjectLockLegalHold> {
  const ObjectLockLegalHoldRestXmlSerializer() : super('ObjectLockLegalHold');

  @override
  Iterable<Type> get types => const [
        ObjectLockLegalHold,
        _$ObjectLockLegalHold,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectLockLegalHold deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockLegalHoldBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ObjectLockLegalHoldStatus),
            ) as _i2.ObjectLockLegalHoldStatus);
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
    final payload = (object as ObjectLockLegalHold);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ObjectLockLegalHold',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.ObjectLockLegalHoldStatus),
        ));
    }
    return result;
  }
}
