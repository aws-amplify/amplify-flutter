// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.server_side_encryption_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart';

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
      {required List<ServerSideEncryptionRule> rules}) {
    return _$ServerSideEncryptionConfiguration._(rules: _i2.BuiltList(rules));
  }

  /// Specifies the default server-side-encryption configuration.
  factory ServerSideEncryptionConfiguration.build(
          [void Function(ServerSideEncryptionConfigurationBuilder) updates]) =
      _$ServerSideEncryptionConfiguration;

  const ServerSideEncryptionConfiguration._();

  static const List<_i3.SmithySerializer<ServerSideEncryptionConfiguration>>
      serializers = [ServerSideEncryptionConfigurationRestXmlSerializer()];

  /// Container for information about a particular server-side encryption configuration rule.
  _i2.BuiltList<ServerSideEncryptionRule> get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ServerSideEncryptionConfiguration')
          ..add(
            'rules',
            rules,
          );
    return helper.toString();
  }
}

class ServerSideEncryptionConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ServerSideEncryptionConfiguration> {
  const ServerSideEncryptionConfigurationRestXmlSerializer()
      : super('ServerSideEncryptionConfiguration');

  @override
  Iterable<Type> get types => const [
        ServerSideEncryptionConfiguration,
        _$ServerSideEncryptionConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ServerSideEncryptionRule),
          ) as ServerSideEncryptionRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServerSideEncryptionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ServerSideEncryptionConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ServerSideEncryptionConfiguration(:rules) = object;
    result$
        .addAll(const _i3.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      rules,
      specifiedType: const FullType(
        _i2.BuiltList,
        [FullType(ServerSideEncryptionRule)],
      ),
    ));
    return result$;
  }
}
