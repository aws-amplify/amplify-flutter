// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.server_side_encryption_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_by_default.dart'
    as _i2;

part 'server_side_encryption_rule.g.dart';

/// Specifies the default server-side encryption configuration.
abstract class ServerSideEncryptionRule
    with _i1.AWSEquatable<ServerSideEncryptionRule>
    implements
        Built<ServerSideEncryptionRule, ServerSideEncryptionRuleBuilder> {
  /// Specifies the default server-side encryption configuration.
  factory ServerSideEncryptionRule({
    _i2.ServerSideEncryptionByDefault? applyServerSideEncryptionByDefault,
    bool? bucketKeyEnabled,
  }) {
    return _$ServerSideEncryptionRule._(
      applyServerSideEncryptionByDefault: applyServerSideEncryptionByDefault,
      bucketKeyEnabled: bucketKeyEnabled,
    );
  }

  /// Specifies the default server-side encryption configuration.
  factory ServerSideEncryptionRule.build(
          [void Function(ServerSideEncryptionRuleBuilder) updates]) =
      _$ServerSideEncryptionRule;

  const ServerSideEncryptionRule._();

  static const List<_i3.SmithySerializer> serializers = [
    ServerSideEncryptionRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerSideEncryptionRuleBuilder b) {}

  /// Specifies the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied.
  _i2.ServerSideEncryptionByDefault? get applyServerSideEncryptionByDefault;

  /// Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Setting the `BucketKeyEnabled` element to `true` causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket Key is not enabled.
  ///
  /// For more information, see [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) in the _Amazon S3 User Guide_.
  bool? get bucketKeyEnabled;
  @override
  List<Object?> get props => [
        applyServerSideEncryptionByDefault,
        bucketKeyEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServerSideEncryptionRule');
    helper.add(
      'applyServerSideEncryptionByDefault',
      applyServerSideEncryptionByDefault,
    );
    helper.add(
      'bucketKeyEnabled',
      bucketKeyEnabled,
    );
    return helper.toString();
  }
}

class ServerSideEncryptionRuleRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ServerSideEncryptionRule> {
  const ServerSideEncryptionRuleRestXmlSerializer()
      : super('ServerSideEncryptionRule');

  @override
  Iterable<Type> get types => const [
        ServerSideEncryptionRule,
        _$ServerSideEncryptionRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ServerSideEncryptionRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSideEncryptionRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ApplyServerSideEncryptionByDefault':
          if (value != null) {
            result.applyServerSideEncryptionByDefault
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ServerSideEncryptionByDefault),
            ) as _i2.ServerSideEncryptionByDefault));
          }
          break;
        case 'BucketKeyEnabled':
          if (value != null) {
            result.bucketKeyEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as ServerSideEncryptionRule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ServerSideEncryptionRule',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.applyServerSideEncryptionByDefault != null) {
      result
        ..add(const _i3.XmlElementName('ApplyServerSideEncryptionByDefault'))
        ..add(serializers.serialize(
          payload.applyServerSideEncryptionByDefault!,
          specifiedType: const FullType(_i2.ServerSideEncryptionByDefault),
        ));
    }
    if (payload.bucketKeyEnabled != null) {
      result
        ..add(const _i3.XmlElementName('BucketKeyEnabled'))
        ..add(serializers.serialize(
          payload.bucketKeyEnabled!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
