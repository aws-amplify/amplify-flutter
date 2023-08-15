// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.create_log_stream_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_log_stream_request.g.dart';

abstract class CreateLogStreamRequest
    with
        _i1.HttpInput<CreateLogStreamRequest>,
        _i2.AWSEquatable<CreateLogStreamRequest>
    implements Built<CreateLogStreamRequest, CreateLogStreamRequestBuilder> {
  factory CreateLogStreamRequest({
    required String logGroupName,
    required String logStreamName,
  }) {
    return _$CreateLogStreamRequest._(
      logGroupName: logGroupName,
      logStreamName: logStreamName,
    );
  }

  factory CreateLogStreamRequest.build(
          [void Function(CreateLogStreamRequestBuilder) updates]) =
      _$CreateLogStreamRequest;

  const CreateLogStreamRequest._();

  factory CreateLogStreamRequest.fromRequest(
    CreateLogStreamRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateLogStreamRequest>> serializers =
      [CreateLogStreamRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLogStreamRequestBuilder b) {}

  /// The name of the log group.
  String get logGroupName;

  /// The name of the log stream.
  String get logStreamName;
  @override
  CreateLogStreamRequest getPayload() => this;
  @override
  List<Object?> get props => [
        logGroupName,
        logStreamName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateLogStreamRequest')
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'logStreamName',
        logStreamName,
      );
    return helper.toString();
  }
}

class CreateLogStreamRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<CreateLogStreamRequest> {
  const CreateLogStreamRequestAwsJson11Serializer()
      : super('CreateLogStreamRequest');

  @override
  Iterable<Type> get types => const [
        CreateLogStreamRequest,
        _$CreateLogStreamRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  CreateLogStreamRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLogStreamRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logGroupName':
          result.logGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logStreamName':
          result.logStreamName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateLogStreamRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateLogStreamRequest(:logGroupName, :logStreamName) = object;
    result$.addAll([
      'logGroupName',
      serializers.serialize(
        logGroupName,
        specifiedType: const FullType(String),
      ),
      'logStreamName',
      serializers.serialize(
        logStreamName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
