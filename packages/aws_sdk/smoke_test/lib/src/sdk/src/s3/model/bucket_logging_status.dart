// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.bucket_logging_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/logging_enabled.dart' as _i2;

part 'bucket_logging_status.g.dart';

/// Container for logging status information.
abstract class BucketLoggingStatus
    with _i1.AWSEquatable<BucketLoggingStatus>
    implements Built<BucketLoggingStatus, BucketLoggingStatusBuilder> {
  /// Container for logging status information.
  factory BucketLoggingStatus({_i2.LoggingEnabled? loggingEnabled}) {
    return _$BucketLoggingStatus._(loggingEnabled: loggingEnabled);
  }

  /// Container for logging status information.
  factory BucketLoggingStatus.build(
          [void Function(BucketLoggingStatusBuilder) updates]) =
      _$BucketLoggingStatus;

  const BucketLoggingStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    BucketLoggingStatusRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketLoggingStatusBuilder b) {}

  /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the _Amazon S3 API Reference_.
  _i2.LoggingEnabled? get loggingEnabled;
  @override
  List<Object?> get props => [loggingEnabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BucketLoggingStatus');
    helper.add(
      'loggingEnabled',
      loggingEnabled,
    );
    return helper.toString();
  }
}

class BucketLoggingStatusRestXmlSerializer
    extends _i3.StructuredSmithySerializer<BucketLoggingStatus> {
  const BucketLoggingStatusRestXmlSerializer() : super('BucketLoggingStatus');

  @override
  Iterable<Type> get types => const [
        BucketLoggingStatus,
        _$BucketLoggingStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketLoggingStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BucketLoggingStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LoggingEnabled':
          if (value != null) {
            result.loggingEnabled.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LoggingEnabled),
            ) as _i2.LoggingEnabled));
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
    final payload = (object as BucketLoggingStatus);
    final result = <Object?>[
      const _i3.XmlElementName(
        'BucketLoggingStatus',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.loggingEnabled != null) {
      result
        ..add(const _i3.XmlElementName('LoggingEnabled'))
        ..add(serializers.serialize(
          payload.loggingEnabled!,
          specifiedType: const FullType(_i2.LoggingEnabled),
        ));
    }
    return result;
  }
}
