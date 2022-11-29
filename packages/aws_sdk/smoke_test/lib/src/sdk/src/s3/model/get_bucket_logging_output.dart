// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_logging_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/logging_enabled.dart' as _i2;

part 'get_bucket_logging_output.g.dart';

abstract class GetBucketLoggingOutput
    with _i1.AWSEquatable<GetBucketLoggingOutput>
    implements Built<GetBucketLoggingOutput, GetBucketLoggingOutputBuilder> {
  factory GetBucketLoggingOutput({_i2.LoggingEnabled? loggingEnabled}) {
    return _$GetBucketLoggingOutput._(loggingEnabled: loggingEnabled);
  }

  factory GetBucketLoggingOutput.build(
          [void Function(GetBucketLoggingOutputBuilder) updates]) =
      _$GetBucketLoggingOutput;

  const GetBucketLoggingOutput._();

  /// Constructs a [GetBucketLoggingOutput] from a [payload] and [response].
  factory GetBucketLoggingOutput.fromResponse(
    GetBucketLoggingOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetBucketLoggingOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLoggingOutputBuilder b) {}

  /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the _Amazon S3 API Reference_.
  _i2.LoggingEnabled? get loggingEnabled;
  @override
  List<Object?> get props => [loggingEnabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketLoggingOutput');
    helper.add(
      'loggingEnabled',
      loggingEnabled,
    );
    return helper.toString();
  }
}

class GetBucketLoggingOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GetBucketLoggingOutput> {
  const GetBucketLoggingOutputRestXmlSerializer()
      : super('GetBucketLoggingOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketLoggingOutput,
        _$GetBucketLoggingOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketLoggingOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketLoggingOutputBuilder();
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
    final payload = (object as GetBucketLoggingOutput);
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
