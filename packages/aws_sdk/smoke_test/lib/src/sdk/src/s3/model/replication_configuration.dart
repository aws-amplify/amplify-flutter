// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.replication_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule.dart' as _i2;

part 'replication_configuration.g.dart';

/// A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
abstract class ReplicationConfiguration
    with _i1.AWSEquatable<ReplicationConfiguration>
    implements
        Built<ReplicationConfiguration, ReplicationConfigurationBuilder> {
  /// A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
  factory ReplicationConfiguration({
    required String role,
    required List<_i2.ReplicationRule> rules,
  }) {
    return _$ReplicationConfiguration._(
      role: role,
      rules: _i3.BuiltList(rules),
    );
  }

  /// A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
  factory ReplicationConfiguration.build(
          [void Function(ReplicationConfigurationBuilder) updates]) =
      _$ReplicationConfiguration;

  const ReplicationConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    ReplicationConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationConfigurationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the _Amazon S3 User Guide_.
  String get role;

  /// A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  _i3.BuiltList<_i2.ReplicationRule> get rules;
  @override
  List<Object?> get props => [
        role,
        rules,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationConfiguration');
    helper.add(
      'role',
      role,
    );
    helper.add(
      'rules',
      rules,
    );
    return helper.toString();
  }
}

class ReplicationConfigurationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<ReplicationConfiguration> {
  const ReplicationConfigurationRestXmlSerializer()
      : super('ReplicationConfiguration');

  @override
  Iterable<Type> get types => const [
        ReplicationConfiguration,
        _$ReplicationConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicationConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Role':
          result.role = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ReplicationRule),
          ) as _i2.ReplicationRule));
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
    final payload = (object as ReplicationConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ReplicationConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Role'))
      ..add(serializers.serialize(
        payload.role,
        specifiedType: const FullType(String),
      ));
    result
        .addAll(const _i4.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(_i2.ReplicationRule)],
      ),
    ));
    return result;
  }
}
