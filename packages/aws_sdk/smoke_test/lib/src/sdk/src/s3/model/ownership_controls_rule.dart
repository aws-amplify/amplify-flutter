// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.ownership_controls_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_ownership.dart' as _i2;

part 'ownership_controls_rule.g.dart';

/// The container element for an ownership control rule.
abstract class OwnershipControlsRule
    with _i1.AWSEquatable<OwnershipControlsRule>
    implements Built<OwnershipControlsRule, OwnershipControlsRuleBuilder> {
  /// The container element for an ownership control rule.
  factory OwnershipControlsRule(
      {required _i2.ObjectOwnership objectOwnership}) {
    return _$OwnershipControlsRule._(objectOwnership: objectOwnership);
  }

  /// The container element for an ownership control rule.
  factory OwnershipControlsRule.build(
          [void Function(OwnershipControlsRuleBuilder) updates]) =
      _$OwnershipControlsRule;

  const OwnershipControlsRule._();

  static const List<_i3.SmithySerializer> serializers = [
    OwnershipControlsRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OwnershipControlsRuleBuilder b) {}

  /// The container element for object ownership for a bucket's ownership controls.
  ///
  /// BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL.
  ///
  /// ObjectWriter - The uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL.
  ///
  /// BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect permissions. The bucket owner automatically owns and has full control over every object in the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
  _i2.ObjectOwnership get objectOwnership;
  @override
  List<Object?> get props => [objectOwnership];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OwnershipControlsRule');
    helper.add(
      'objectOwnership',
      objectOwnership,
    );
    return helper.toString();
  }
}

class OwnershipControlsRuleRestXmlSerializer
    extends _i3.StructuredSmithySerializer<OwnershipControlsRule> {
  const OwnershipControlsRuleRestXmlSerializer()
      : super('OwnershipControlsRule');

  @override
  Iterable<Type> get types => const [
        OwnershipControlsRule,
        _$OwnershipControlsRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ObjectOwnership':
          result.objectOwnership = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ObjectOwnership),
          ) as _i2.ObjectOwnership);
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
    final payload = (object as OwnershipControlsRule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'OwnershipControlsRule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('ObjectOwnership'))
      ..add(serializers.serialize(
        payload.objectOwnership,
        specifiedType: const FullType.nullable(_i2.ObjectOwnership),
      ));
    return result;
  }
}
