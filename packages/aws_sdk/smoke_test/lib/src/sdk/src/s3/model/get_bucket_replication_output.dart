// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_replication_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replication_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/replication_rule.dart' as _i4;

part 'get_bucket_replication_output.g.dart';

abstract class GetBucketReplicationOutput
    with _i1.AWSEquatable<GetBucketReplicationOutput>
    implements
        Built<GetBucketReplicationOutput, GetBucketReplicationOutputBuilder>,
        _i2.HasPayload<_i3.ReplicationConfiguration> {
  factory GetBucketReplicationOutput(
      {_i3.ReplicationConfiguration? replicationConfiguration}) {
    return _$GetBucketReplicationOutput._(
        replicationConfiguration: replicationConfiguration);
  }

  factory GetBucketReplicationOutput.build(
          [void Function(GetBucketReplicationOutputBuilder) updates]) =
      _$GetBucketReplicationOutput;

  const GetBucketReplicationOutput._();

  /// Constructs a [GetBucketReplicationOutput] from a [payload] and [response].
  factory GetBucketReplicationOutput.fromResponse(
    _i3.ReplicationConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketReplicationOutput.build((b) {
        if (payload != null) {
          b.replicationConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetBucketReplicationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketReplicationOutputBuilder b) {}

  /// A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication configuration is 2 MB.
  _i3.ReplicationConfiguration? get replicationConfiguration;
  @override
  _i3.ReplicationConfiguration? getPayload() => replicationConfiguration;
  @override
  List<Object?> get props => [replicationConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketReplicationOutput');
    helper.add(
      'replicationConfiguration',
      replicationConfiguration,
    );
    return helper.toString();
  }
}

class GetBucketReplicationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.ReplicationConfiguration> {
  const GetBucketReplicationOutputRestXmlSerializer()
      : super('GetBucketReplicationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketReplicationOutput,
        _$GetBucketReplicationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.ReplicationConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.ReplicationConfigurationBuilder();
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
            specifiedType: const FullType(_i4.ReplicationRule),
          ) as _i4.ReplicationRule));
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
    final payload = object is GetBucketReplicationOutput
        ? object.getPayload()
        : (object as _i3.ReplicationConfiguration?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ReplicationConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    result
      ..add(const _i2.XmlElementName('Role'))
      ..add(serializers.serialize(
        payload.role,
        specifiedType: const FullType(String),
      ));
    result
        .addAll(const _i2.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i5.BuiltList,
        [FullType(_i4.ReplicationRule)],
      ),
    ));
    return result;
  }
}
