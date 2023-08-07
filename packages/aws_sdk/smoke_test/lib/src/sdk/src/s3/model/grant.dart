// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.grant; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/grantee.dart';
import 'package:smoke_test/src/sdk/src/s3/model/permission.dart';

part 'grant.g.dart';

/// Container for grant information.
abstract class Grant
    with _i1.AWSEquatable<Grant>
    implements Built<Grant, GrantBuilder> {
  /// Container for grant information.
  factory Grant({
    Grantee? grantee,
    Permission? permission,
  }) {
    return _$Grant._(
      grantee: grantee,
      permission: permission,
    );
  }

  /// Container for grant information.
  factory Grant.build([void Function(GrantBuilder) updates]) = _$Grant;

  const Grant._();

  static const List<_i2.SmithySerializer<Grant>> serializers = [
    GrantRestXmlSerializer()
  ];

  /// The person being granted permissions.
  Grantee? get grantee;

  /// Specifies the permission given to the grantee.
  Permission? get permission;
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

class GrantRestXmlSerializer extends _i2.StructuredSmithySerializer<Grant> {
  const GrantRestXmlSerializer() : super('Grant');

  @override
  Iterable<Type> get types => const [
        Grant,
        _$Grant,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(Grantee),
          ) as Grantee));
        case 'Permission':
          result.permission = (serializers.deserialize(
            value,
            specifiedType: const FullType(Permission),
          ) as Permission);
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
      const _i2.XmlElementName(
        'Grant',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Grant(:grantee, :permission) = object;
    if (grantee != null) {
      result$
        ..add(const _i2.XmlElementName(
          'Grantee',
          _i2.XmlNamespace(
            'http://www.w3.org/2001/XMLSchema-instance',
            'xsi',
          ),
        ))
        ..add(serializers.serialize(
          grantee,
          specifiedType: const FullType(Grantee),
        ));
    }
    if (permission != null) {
      result$
        ..add(const _i2.XmlElementName('Permission'))
        ..add(serializers.serialize(
          permission,
          specifiedType: const FullType.nullable(Permission),
        ));
    }
    return result$;
  }
}
