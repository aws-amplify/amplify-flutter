// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/create_log_stream_request.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/data_already_accepted_exception.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/input_log_event.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_sequence_token_exception.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/rejected_log_events_info.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_already_exists_exception.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart';
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/unrecognized_client_exception.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...CreateLogStreamRequest.serializers,
  ...InvalidParameterException.serializers,
  ...ResourceAlreadyExistsException.serializers,
  ...ResourceNotFoundException.serializers,
  ...ServiceUnavailableException.serializers,
  ...InputLogEvent.serializers,
  ...PutLogEventsRequest.serializers,
  ...RejectedLogEventsInfo.serializers,
  ...PutLogEventsResponse.serializers,
  ...DataAlreadyAcceptedException.serializers,
  ...InvalidSequenceTokenException.serializers,
  ...UnrecognizedClientException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(InputLogEvent)],
  ): _i2.ListBuilder<InputLogEvent>.new
};
