// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.ownership_controls_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_ownership.dart';

part 'ownership_controls_rule.g.dart';

/// The container element for an ownership control rule.
abstract class OwnershipControlsRule
    with _i1.AWSEquatable<OwnershipControlsRule>
    implements Built<OwnershipControlsRule, OwnershipControlsRuleBuilder> {
  /// The container element for an ownership control rule.
  factory OwnershipControlsRule({required ObjectOwnership objectOwnership}) {
    return _$OwnershipControlsRule._(objectOwnership: objectOwnership);
  }

  /// The container element for an ownership control rule.
  factory OwnershipControlsRule.build(
          [void Function(OwnershipControlsRuleBuilder) updates]) =
      _$OwnershipControlsRule;

  const OwnershipControlsRule._();

  static const List<_i2.SmithySerializer<OwnershipControlsRule>> serializers = [
    OwnershipControlsRuleRestXmlSerializer()
  ];

  /// The container element for object ownership for a bucket's ownership controls.
  ///
  /// BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL.
  ///
  /// ObjectWriter - The uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL.
  ///
  /// BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect permissions. The bucket owner automatically owns and has full control over every object in the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
  ObjectOwnership get objectOwnership;
  @override
  List<Object?> get props => [objectOwnership];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OwnershipControlsRule')
      ..add(
        'objectOwnership',
        objectOwnership,
      );
    return helper.toString();
  }
}

class OwnershipControlsRuleRestXmlSerializer
    extends _i2.StructuredSmithySerializer<OwnershipControlsRule> {
  const OwnershipControlsRuleRestXmlSerializer()
      : super('OwnershipControlsRule');

  @override
  Iterable<Type> get types => const [
        OwnershipControlsRule,
        _$OwnershipControlsRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  OwnershipControlsRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipControlsRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ObjectOwnership':
          result.objectOwnership = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectOwnership),
          ) as ObjectOwnership);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OwnershipControlsRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OwnershipControlsRule',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final OwnershipControlsRule(:objectOwnership) = object;
    result$
      ..add(const _i2.XmlElementName('ObjectOwnership'))
      ..add(serializers.serialize(
        objectOwnership,
        specifiedType: const FullType(ObjectOwnership),
      ));
    return result$;
  }
}
