// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.accelerate_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart'
    as _i2;

part 'accelerate_configuration.g.dart';

/// Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the _Amazon S3 User Guide_.
abstract class AccelerateConfiguration
    with _i1.AWSEquatable<AccelerateConfiguration>
    implements Built<AccelerateConfiguration, AccelerateConfigurationBuilder> {
  /// Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the _Amazon S3 User Guide_.
  factory AccelerateConfiguration({_i2.BucketAccelerateStatus? status}) {
    return _$AccelerateConfiguration._(status: status);
  }

  /// Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see [Amazon S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html) in the _Amazon S3 User Guide_.
  factory AccelerateConfiguration.build(
          [void Function(AccelerateConfigurationBuilder) updates]) =
      _$AccelerateConfiguration;

  const AccelerateConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    AccelerateConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccelerateConfigurationBuilder b) {}

  /// Specifies the transfer acceleration status of the bucket.
  _i2.BucketAccelerateStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccelerateConfiguration');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class AccelerateConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AccelerateConfiguration> {
  const AccelerateConfigurationRestXmlSerializer()
      : super('AccelerateConfiguration');

  @override
  Iterable<Type> get types => const [
        AccelerateConfiguration,
        _$AccelerateConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AccelerateConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccelerateConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BucketAccelerateStatus),
            ) as _i2.BucketAccelerateStatus);
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
    final payload = (object as AccelerateConfiguration);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AccelerateConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.BucketAccelerateStatus),
        ));
    }
    return result;
  }
}
