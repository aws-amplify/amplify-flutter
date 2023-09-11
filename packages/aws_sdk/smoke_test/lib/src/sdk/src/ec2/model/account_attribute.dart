// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.account_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_value.dart';

part 'account_attribute.g.dart';

/// Describes an account attribute.
abstract class AccountAttribute
    with _i1.AWSEquatable<AccountAttribute>
    implements Built<AccountAttribute, AccountAttributeBuilder> {
  /// Describes an account attribute.
  factory AccountAttribute({
    String? attributeName,
    List<AccountAttributeValue>? attributeValues,
  }) {
    return _$AccountAttribute._(
      attributeName: attributeName,
      attributeValues:
          attributeValues == null ? null : _i2.BuiltList(attributeValues),
    );
  }

  /// Describes an account attribute.
  factory AccountAttribute.build(
      [void Function(AccountAttributeBuilder) updates]) = _$AccountAttribute;

  const AccountAttribute._();

  static const List<_i3.SmithySerializer<AccountAttribute>> serializers = [
    AccountAttributeEc2QuerySerializer()
  ];

  /// The name of the account attribute.
  String? get attributeName;

  /// The values for the account attribute.
  _i2.BuiltList<AccountAttributeValue>? get attributeValues;
  @override
  List<Object?> get props => [
        attributeName,
        attributeValues,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccountAttribute')
      ..add(
        'attributeName',
        attributeName,
      )
      ..add(
        'attributeValues',
        attributeValues,
      );
    return helper.toString();
  }
}

class AccountAttributeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AccountAttribute> {
  const AccountAttributeEc2QuerySerializer() : super('AccountAttribute');

  @override
  Iterable<Type> get types => const [
        AccountAttribute,
        _$AccountAttribute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccountAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attributeName':
          result.attributeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'attributeValueSet':
          result.attributeValues.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AccountAttributeValue)],
            ),
          ) as _i2.BuiltList<AccountAttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccountAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AccountAttributeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AccountAttribute(:attributeName, :attributeValues) = object;
    if (attributeName != null) {
      result$
        ..add(const _i3.XmlElementName('AttributeName'))
        ..add(serializers.serialize(
          attributeName,
          specifiedType: const FullType(String),
        ));
    }
    if (attributeValues != null) {
      result$
        ..add(const _i3.XmlElementName('AttributeValueSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          attributeValues,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AccountAttributeValue)],
          ),
        ));
    }
    return result$;
  }
}
