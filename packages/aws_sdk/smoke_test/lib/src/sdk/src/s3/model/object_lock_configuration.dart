// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.object_lock_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_enabled.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_rule.dart';

part 'object_lock_configuration.g.dart';

/// The container element for Object Lock configuration parameters.
abstract class ObjectLockConfiguration
    with _i1.AWSEquatable<ObjectLockConfiguration>
    implements Built<ObjectLockConfiguration, ObjectLockConfigurationBuilder> {
  /// The container element for Object Lock configuration parameters.
  factory ObjectLockConfiguration({
    ObjectLockEnabled? objectLockEnabled,
    ObjectLockRule? rule,
  }) {
    return _$ObjectLockConfiguration._(
      objectLockEnabled: objectLockEnabled,
      rule: rule,
    );
  }

  /// The container element for Object Lock configuration parameters.
  factory ObjectLockConfiguration.build(
          [void Function(ObjectLockConfigurationBuilder) updates]) =
      _$ObjectLockConfiguration;

  const ObjectLockConfiguration._();

  static const List<_i2.SmithySerializer<ObjectLockConfiguration>> serializers =
      [ObjectLockConfigurationRestXmlSerializer()];

  /// Indicates whether this bucket has an Object Lock configuration enabled. Enable `ObjectLockEnabled` when you apply `ObjectLockConfiguration` to a bucket.
  ObjectLockEnabled? get objectLockEnabled;

  /// Specifies the Object Lock rule for the specified object. Enable the this rule when you apply `ObjectLockConfiguration` to a bucket. Bucket settings require both a mode and a period. The period can be either `Days` or `Years` but you must select one. You cannot specify `Days` and `Years` at the same time.
  ObjectLockRule? get rule;
  @override
  List<Object?> get props => [
        objectLockEnabled,
        rule,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ObjectLockConfiguration')
      ..add(
        'objectLockEnabled',
        objectLockEnabled,
      )
      ..add(
        'rule',
        rule,
      );
    return helper.toString();
  }
}

class ObjectLockConfigurationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectLockConfiguration> {
  const ObjectLockConfigurationRestXmlSerializer()
      : super('ObjectLockConfiguration');

  @override
  Iterable<Type> get types => const [
        ObjectLockConfiguration,
        _$ObjectLockConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectLockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ObjectLockEnabled':
          result.objectLockEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectLockEnabled),
          ) as ObjectLockEnabled);
        case 'Rule':
          result.rule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectLockRule),
          ) as ObjectLockRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ObjectLockConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockConfiguration(:objectLockEnabled, :rule) = object;
    if (objectLockEnabled != null) {
      result$
        ..add(const _i2.XmlElementName('ObjectLockEnabled'))
        ..add(serializers.serialize(
          objectLockEnabled,
          specifiedType: const FullType(ObjectLockEnabled),
        ));
    }
    if (rule != null) {
      result$
        ..add(const _i2.XmlElementName('Rule'))
        ..add(serializers.serialize(
          rule,
          specifiedType: const FullType(ObjectLockRule),
        ));
    }
    return result$;
  }
}
