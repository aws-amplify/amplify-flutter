// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.server_side_encryption_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart'
    as _i2;

part 'server_side_encryption_configuration.g.dart';

/// Specifies the default server-side-encryption configuration.
abstract class ServerSideEncryptionConfiguration
    with
        _i1.AWSEquatable<ServerSideEncryptionConfiguration>
    implements
        Built<ServerSideEncryptionConfiguration,
            ServerSideEncryptionConfigurationBuilder> {
  /// Specifies the default server-side-encryption configuration.
  factory ServerSideEncryptionConfiguration(
      {required List<_i2.ServerSideEncryptionRule> rules}) {
    return _$ServerSideEncryptionConfiguration._(rules: _i3.BuiltList(rules));
  }

  /// Specifies the default server-side-encryption configuration.
  factory ServerSideEncryptionConfiguration.build(
          [void Function(ServerSideEncryptionConfigurationBuilder) updates]) =
      _$ServerSideEncryptionConfiguration;

  const ServerSideEncryptionConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    ServerSideEncryptionConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerSideEncryptionConfigurationBuilder b) {}

  /// Container for information about a particular server-side encryption configuration rule.
  _i3.BuiltList<_i2.ServerSideEncryptionRule> get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ServerSideEncryptionConfiguration');
    helper.add(
      'rules',
      rules,
    );
    return helper.toString();
  }
}

class ServerSideEncryptionConfigurationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<ServerSideEncryptionConfiguration> {
  const ServerSideEncryptionConfigurationRestXmlSerializer()
      : super('ServerSideEncryptionConfiguration');

  @override
  Iterable<Type> get types => const [
        ServerSideEncryptionConfiguration,
        _$ServerSideEncryptionConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ServerSideEncryptionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSideEncryptionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ServerSideEncryptionRule),
          ) as _i2.ServerSideEncryptionRule));
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
    final payload = (object as ServerSideEncryptionConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ServerSideEncryptionConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
        .addAll(const _i4.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(_i2.ServerSideEncryptionRule)],
      ),
    ));
    return result;
  }
}
