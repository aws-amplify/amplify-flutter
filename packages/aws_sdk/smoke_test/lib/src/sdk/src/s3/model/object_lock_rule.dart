// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.object_lock_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/default_retention.dart' as _i2;

part 'object_lock_rule.g.dart';

/// The container element for an Object Lock rule.
abstract class ObjectLockRule
    with _i1.AWSEquatable<ObjectLockRule>
    implements Built<ObjectLockRule, ObjectLockRuleBuilder> {
  /// The container element for an Object Lock rule.
  factory ObjectLockRule({_i2.DefaultRetention? defaultRetention}) {
    return _$ObjectLockRule._(defaultRetention: defaultRetention);
  }

  /// The container element for an Object Lock rule.
  factory ObjectLockRule.build([void Function(ObjectLockRuleBuilder) updates]) =
      _$ObjectLockRule;

  const ObjectLockRule._();

  static const List<_i3.SmithySerializer> serializers = [
    ObjectLockRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectLockRuleBuilder b) {}

  /// The default Object Lock retention mode and period that you want to apply to new objects placed in the specified bucket. Bucket settings require both a mode and a period. The period can be either `Days` or `Years` but you must select one. You cannot specify `Days` and `Years` at the same time.
  _i2.DefaultRetention? get defaultRetention;
  @override
  List<Object?> get props => [defaultRetention];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectLockRule');
    helper.add(
      'defaultRetention',
      defaultRetention,
    );
    return helper.toString();
  }
}

class ObjectLockRuleRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ObjectLockRule> {
  const ObjectLockRuleRestXmlSerializer() : super('ObjectLockRule');

  @override
  Iterable<Type> get types => const [
        ObjectLockRule,
        _$ObjectLockRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectLockRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DefaultRetention':
          if (value != null) {
            result.defaultRetention.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DefaultRetention),
            ) as _i2.DefaultRetention));
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
    final payload = (object as ObjectLockRule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ObjectLockRule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.defaultRetention != null) {
      result
        ..add(const _i3.XmlElementName('DefaultRetention'))
        ..add(serializers.serialize(
          payload.defaultRetention!,
          specifiedType: const FullType(_i2.DefaultRetention),
        ));
    }
    return result;
  }
}
