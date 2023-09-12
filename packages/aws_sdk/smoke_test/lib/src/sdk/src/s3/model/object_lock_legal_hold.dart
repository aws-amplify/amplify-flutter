// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.object_lock_legal_hold; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';

part 'object_lock_legal_hold.g.dart';

/// A legal hold configuration for an object.
abstract class ObjectLockLegalHold
    with _i1.AWSEquatable<ObjectLockLegalHold>
    implements Built<ObjectLockLegalHold, ObjectLockLegalHoldBuilder> {
  /// A legal hold configuration for an object.
  factory ObjectLockLegalHold({ObjectLockLegalHoldStatus? status}) {
    return _$ObjectLockLegalHold._(status: status);
  }

  /// A legal hold configuration for an object.
  factory ObjectLockLegalHold.build(
          [void Function(ObjectLockLegalHoldBuilder) updates]) =
      _$ObjectLockLegalHold;

  const ObjectLockLegalHold._();

  static const List<_i2.SmithySerializer<ObjectLockLegalHold>> serializers = [
    ObjectLockLegalHoldRestXmlSerializer()
  ];

  /// Indicates whether the specified object has a legal hold in place.
  ObjectLockLegalHoldStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectLockLegalHold')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ObjectLockLegalHoldRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectLockLegalHold> {
  const ObjectLockLegalHoldRestXmlSerializer() : super('ObjectLockLegalHold');

  @override
  Iterable<Type> get types => const [
        ObjectLockLegalHold,
        _$ObjectLockLegalHold,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectLockLegalHoldStatus),
          ) as ObjectLockLegalHoldStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ObjectLockLegalHold object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockLegalHold',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockLegalHold(:status) = object;
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ObjectLockLegalHoldStatus),
        ));
    }
    return result$;
  }
}
