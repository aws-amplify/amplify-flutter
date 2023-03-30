// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.existing_object_replication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/existing_object_replication_status.dart'
    as _i2;

part 'existing_object_replication.g.dart';

/// Optional configuration to replicate existing source bucket objects. For more information, see [Replicating Existing Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication) in the _Amazon S3 User Guide_.
abstract class ExistingObjectReplication
    with _i1.AWSEquatable<ExistingObjectReplication>
    implements
        Built<ExistingObjectReplication, ExistingObjectReplicationBuilder> {
  /// Optional configuration to replicate existing source bucket objects. For more information, see [Replicating Existing Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication) in the _Amazon S3 User Guide_.
  factory ExistingObjectReplication(
      {required _i2.ExistingObjectReplicationStatus status}) {
    return _$ExistingObjectReplication._(status: status);
  }

  /// Optional configuration to replicate existing source bucket objects. For more information, see [Replicating Existing Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication) in the _Amazon S3 User Guide_.
  factory ExistingObjectReplication.build(
          [void Function(ExistingObjectReplicationBuilder) updates]) =
      _$ExistingObjectReplication;

  const ExistingObjectReplication._();

  static const List<_i3.SmithySerializer> serializers = [
    ExistingObjectReplicationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExistingObjectReplicationBuilder b) {}

  _i2.ExistingObjectReplicationStatus get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExistingObjectReplication');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class ExistingObjectReplicationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ExistingObjectReplication> {
  const ExistingObjectReplicationRestXmlSerializer()
      : super('ExistingObjectReplication');

  @override
  Iterable<Type> get types => const [
        ExistingObjectReplication,
        _$ExistingObjectReplication,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ExistingObjectReplication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExistingObjectReplicationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ExistingObjectReplicationStatus),
          ) as _i2.ExistingObjectReplicationStatus);
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
    final payload = (object as ExistingObjectReplication);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ExistingObjectReplication',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType:
            const FullType.nullable(_i2.ExistingObjectReplicationStatus),
      ));
    return result;
  }
}
