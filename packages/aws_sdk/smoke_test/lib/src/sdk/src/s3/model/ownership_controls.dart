// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.ownership_controls; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls_rule.dart'
    as _i2;

part 'ownership_controls.g.dart';

/// The container element for a bucket's ownership controls.
abstract class OwnershipControls
    with _i1.AWSEquatable<OwnershipControls>
    implements Built<OwnershipControls, OwnershipControlsBuilder> {
  /// The container element for a bucket's ownership controls.
  factory OwnershipControls({required List<_i2.OwnershipControlsRule> rules}) {
    return _$OwnershipControls._(rules: _i3.BuiltList(rules));
  }

  /// The container element for a bucket's ownership controls.
  factory OwnershipControls.build(
      [void Function(OwnershipControlsBuilder) updates]) = _$OwnershipControls;

  const OwnershipControls._();

  static const List<_i4.SmithySerializer> serializers = [
    OwnershipControlsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OwnershipControlsBuilder b) {}

  /// The container element for an ownership control rule.
  _i3.BuiltList<_i2.OwnershipControlsRule> get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OwnershipControls');
    helper.add(
      'rules',
      rules,
    );
    return helper.toString();
  }
}

class OwnershipControlsRestXmlSerializer
    extends _i4.StructuredSmithySerializer<OwnershipControls> {
  const OwnershipControlsRestXmlSerializer() : super('OwnershipControls');

  @override
  Iterable<Type> get types => const [
        OwnershipControls,
        _$OwnershipControls,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  OwnershipControls deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipControlsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OwnershipControlsRule),
          ) as _i2.OwnershipControlsRule));
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
    final payload = (object as OwnershipControls);
    final result = <Object?>[
      const _i4.XmlElementName(
        'OwnershipControls',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
        .addAll(const _i4.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(_i2.OwnershipControlsRule)],
      ),
    ));
    return result;
  }
}
