// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.grant; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/grantee.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/permission.dart' as _i3;

part 'grant.g.dart';

/// Container for grant information.
abstract class Grant
    with _i1.AWSEquatable<Grant>
    implements Built<Grant, GrantBuilder> {
  /// Container for grant information.
  factory Grant({
    _i2.Grantee? grantee,
    _i3.Permission? permission,
  }) {
    return _$Grant._(
      grantee: grantee,
      permission: permission,
    );
  }

  /// Container for grant information.
  factory Grant.build([void Function(GrantBuilder) updates]) = _$Grant;

  const Grant._();

  static const List<_i4.SmithySerializer<Grant>> serializers = [
    GrantRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GrantBuilder b) {}

  /// The person being granted permissions.
  _i2.Grantee? get grantee;

  /// Specifies the permission given to the grantee.
  _i3.Permission? get permission;
  @override
  List<Object?> get props => [
        grantee,
        permission,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Grant')
      ..add(
        'grantee',
        grantee,
      )
      ..add(
        'permission',
        permission,
      );
    return helper.toString();
  }
}

class GrantRestXmlSerializer extends _i4.StructuredSmithySerializer<Grant> {
  const GrantRestXmlSerializer() : super('Grant');

  @override
  Iterable<Type> get types => const [
        Grant,
        _$Grant,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Grant deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GrantBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Grantee':
          result.grantee.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Grantee),
          ) as _i2.Grantee));
        case 'Permission':
          result.permission = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Permission),
          ) as _i3.Permission);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Grant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'Grant',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Grant(:grantee, :permission) = object;
    if (grantee != null) {
      result$
        ..add(const _i4.XmlElementName(
          'Grantee',
          _i4.XmlNamespace(
            'http://www.w3.org/2001/XMLSchema-instance',
            'xsi',
          ),
        ))
        ..add(serializers.serialize(
          grantee,
          specifiedType: const FullType(_i2.Grantee),
        ));
    }
    if (permission != null) {
      result$
        ..add(const _i4.XmlElementName('Permission'))
        ..add(serializers.serialize(
          permission,
          specifiedType: const FullType.nullable(_i3.Permission),
        ));
    }
    return result$;
  }
}
