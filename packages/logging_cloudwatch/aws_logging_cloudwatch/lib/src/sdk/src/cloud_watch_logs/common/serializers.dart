// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/create_log_stream_request.dart'
    as _i2;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/data_already_accepted_exception.dart'
    as _i11;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/input_log_event.dart'
    as _i7;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart'
    as _i3;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_sequence_token_exception.dart'
    as _i12;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart'
    as _i8;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart'
    as _i10;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/rejected_log_events_info.dart'
    as _i9;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_already_exists_exception.dart'
    as _i4;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart'
    as _i5;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart'
    as _i6;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/unrecognized_client_exception.dart'
    as _i13;
import 'package:built_collection/built_collection.dart' as _i14;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.CreateLogStreamRequest.serializers,
  ..._i3.InvalidParameterException.serializers,
  ..._i4.ResourceAlreadyExistsException.serializers,
  ..._i5.ResourceNotFoundException.serializers,
  ..._i6.ServiceUnavailableException.serializers,
  ..._i7.InputLogEvent.serializers,
  ..._i8.PutLogEventsRequest.serializers,
  ..._i9.RejectedLogEventsInfo.serializers,
  ..._i10.PutLogEventsResponse.serializers,
  ..._i11.DataAlreadyAcceptedException.serializers,
  ..._i12.InvalidSequenceTokenException.serializers,
  ..._i13.UnrecognizedClientException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i14.BuiltList,
    [FullType(_i7.InputLogEvent)],
  ): _i14.ListBuilder<_i7.InputLogEvent>.new
};
