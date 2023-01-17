// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_notification_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/event_bridge_configuration.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/lambda_function_configuration.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/queue_configuration.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/topic_configuration.dart'
    as _i4;

part 'put_bucket_notification_configuration_request.g.dart';

abstract class PutBucketNotificationConfigurationRequest
    with
        _i1.HttpInput<_i2.NotificationConfiguration>,
        _i3.AWSEquatable<PutBucketNotificationConfigurationRequest>
    implements
        Built<PutBucketNotificationConfigurationRequest,
            PutBucketNotificationConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.NotificationConfiguration> {
  factory PutBucketNotificationConfigurationRequest({
    required String bucket,
    String? expectedBucketOwner,
    required _i2.NotificationConfiguration notificationConfiguration,
    bool? skipDestinationValidation,
  }) {
    return _$PutBucketNotificationConfigurationRequest._(
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      notificationConfiguration: notificationConfiguration,
      skipDestinationValidation: skipDestinationValidation,
    );
  }

  factory PutBucketNotificationConfigurationRequest.build(
      [void Function(PutBucketNotificationConfigurationRequestBuilder)
          updates]) = _$PutBucketNotificationConfigurationRequest;

  const PutBucketNotificationConfigurationRequest._();

  factory PutBucketNotificationConfigurationRequest.fromRequest(
    _i2.NotificationConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketNotificationConfigurationRequest.build((b) {
        b.notificationConfiguration.replace(payload);
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.headers['x-amz-skip-destination-validation'] != null) {
          b.skipDestinationValidation =
              request.headers['x-amz-skip-destination-validation']! == 'true';
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketNotificationConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketNotificationConfigurationRequestBuilder b) {}

  /// The name of the bucket.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
  _i2.NotificationConfiguration get notificationConfiguration;

  /// Skips validation of Amazon SQS, Amazon SNS, and Lambda destinations. True or false value.
  bool? get skipDestinationValidation;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.NotificationConfiguration getPayload() => notificationConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        expectedBucketOwner,
        notificationConfiguration,
        skipDestinationValidation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'PutBucketNotificationConfigurationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'notificationConfiguration',
      notificationConfiguration,
    );
    helper.add(
      'skipDestinationValidation',
      skipDestinationValidation,
    );
    return helper.toString();
  }
}

class PutBucketNotificationConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.NotificationConfiguration> {
  const PutBucketNotificationConfigurationRequestRestXmlSerializer()
      : super('PutBucketNotificationConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketNotificationConfigurationRequest,
        _$PutBucketNotificationConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.NotificationConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.NotificationConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TopicConfiguration':
          if (value != null) {
            result.topicConfigurations.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.TopicConfiguration),
            ) as _i4.TopicConfiguration));
          }
          break;
        case 'QueueConfiguration':
          if (value != null) {
            result.queueConfigurations.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.QueueConfiguration),
            ) as _i5.QueueConfiguration));
          }
          break;
        case 'CloudFunctionConfiguration':
          if (value != null) {
            result.lambdaFunctionConfigurations.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.LambdaFunctionConfiguration),
            ) as _i6.LambdaFunctionConfiguration));
          }
          break;
        case 'EventBridgeConfiguration':
          if (value != null) {
            result.eventBridgeConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.EventBridgeConfiguration),
            ) as _i7.EventBridgeConfiguration));
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
    final payload = object is PutBucketNotificationConfigurationRequest
        ? object.getPayload()
        : (object as _i2.NotificationConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'NotificationConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.topicConfigurations != null) {
      result.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'TopicConfiguration')
              .serialize(
        serializers,
        payload.topicConfigurations!,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(_i4.TopicConfiguration)],
        ),
      ));
    }
    if (payload.queueConfigurations != null) {
      result.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'QueueConfiguration')
              .serialize(
        serializers,
        payload.queueConfigurations!,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(_i5.QueueConfiguration)],
        ),
      ));
    }
    if (payload.lambdaFunctionConfigurations != null) {
      result.addAll(const _i1.XmlBuiltListSerializer(
              memberName: 'CloudFunctionConfiguration')
          .serialize(
        serializers,
        payload.lambdaFunctionConfigurations!,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(_i6.LambdaFunctionConfiguration)],
        ),
      ));
    }
    if (payload.eventBridgeConfiguration != null) {
      result
        ..add(const _i1.XmlElementName('EventBridgeConfiguration'))
        ..add(serializers.serialize(
          payload.eventBridgeConfiguration!,
          specifiedType: const FullType(_i7.EventBridgeConfiguration),
        ));
    }
    return result;
  }
}
