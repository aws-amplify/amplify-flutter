// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/create_log_stream_request.dart'
    as _i2;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/data_already_accepted_exception.dart'
    as _i19;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/data_protection_status.dart'
    as _i8;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_groups_request.dart'
    as _i7;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_groups_response.dart'
    as _i10;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_streams_request.dart'
    as _i12;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_streams_response.dart'
    as _i14;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/input_log_event.dart'
    as _i15;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart'
    as _i3;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_sequence_token_exception.dart'
    as _i20;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_group.dart'
    as _i9;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_stream.dart'
    as _i13;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/order_by.dart'
    as _i11;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart'
    as _i16;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart'
    as _i18;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/rejected_log_events_info.dart'
    as _i17;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_already_exists_exception.dart'
    as _i4;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart'
    as _i5;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart'
    as _i6;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/unrecognized_client_exception.dart'
    as _i21;
import 'package:built_collection/built_collection.dart' as _i22;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.CreateLogStreamRequest.serializers,
  ..._i3.InvalidParameterException.serializers,
  ..._i4.ResourceAlreadyExistsException.serializers,
  ..._i5.ResourceNotFoundException.serializers,
  ..._i6.ServiceUnavailableException.serializers,
  ..._i7.DescribeLogGroupsRequest.serializers,
  ..._i8.DataProtectionStatus.serializers,
  ..._i9.LogGroup.serializers,
  ..._i10.DescribeLogGroupsResponse.serializers,
  ..._i11.OrderBy.serializers,
  ..._i12.DescribeLogStreamsRequest.serializers,
  ..._i13.LogStream.serializers,
  ..._i14.DescribeLogStreamsResponse.serializers,
  ..._i15.InputLogEvent.serializers,
  ..._i16.PutLogEventsRequest.serializers,
  ..._i17.RejectedLogEventsInfo.serializers,
  ..._i18.PutLogEventsResponse.serializers,
  ..._i19.DataAlreadyAcceptedException.serializers,
  ..._i20.InvalidSequenceTokenException.serializers,
  ..._i21.UnrecognizedClientException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i22.BuiltList,
    [FullType(_i9.LogGroup)],
  ): _i22.ListBuilder<_i9.LogGroup>.new,
  const FullType(
    _i22.BuiltList,
    [FullType(String)],
  ): _i22.ListBuilder<String>.new,
  const FullType(
    _i22.BuiltList,
    [FullType(_i13.LogStream)],
  ): _i22.ListBuilder<_i13.LogStream>.new,
  const FullType(
    _i22.BuiltList,
    [FullType(_i15.InputLogEvent)],
  ): _i22.ListBuilder<_i15.InputLogEvent>.new,
};
