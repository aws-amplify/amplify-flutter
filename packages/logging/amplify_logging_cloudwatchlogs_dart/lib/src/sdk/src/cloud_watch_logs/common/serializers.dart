// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/data_already_accepted_exception.dart'
    as _i6;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/input_log_event.dart'
    as _i2;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart'
    as _i7;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/invalid_sequence_token_exception.dart'
    as _i8;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart'
    as _i3;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart'
    as _i5;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/rejected_log_events_info.dart'
    as _i4;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart'
    as _i9;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart'
    as _i10;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/unrecognized_client_exception.dart'
    as _i11;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.InputLogEvent.serializers,
  ..._i3.PutLogEventsRequest.serializers,
  ..._i4.RejectedLogEventsInfo.serializers,
  ..._i5.PutLogEventsResponse.serializers,
  ..._i6.DataAlreadyAcceptedException.serializers,
  ..._i7.InvalidParameterException.serializers,
  ..._i8.InvalidSequenceTokenException.serializers,
  ..._i9.ResourceNotFoundException.serializers,
  ..._i10.ServiceUnavailableException.serializers,
  ..._i11.UnrecognizedClientException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i12.BuiltList,
    [FullType(_i2.InputLogEvent)],
  ): _i12.ListBuilder<_i2.InputLogEvent>.new
};
