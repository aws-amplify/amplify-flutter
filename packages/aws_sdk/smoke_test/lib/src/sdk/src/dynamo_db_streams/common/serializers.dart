// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/describe_stream_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/describe_stream_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/expired_iterator_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/identity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/list_streams_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/list_streams_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/operation_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/record.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/sequence_number_range.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard_iterator_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_record.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_view_type.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/trimmed_data_access_exception.dart';

const List<_i1.SmithySerializer> serializers = [
  ...DescribeStreamInput.serializers,
  ...StreamStatus.serializers,
  ...StreamViewType.serializers,
  ...KeyType.serializers,
  ...KeySchemaElement.serializers,
  ...SequenceNumberRange.serializers,
  ...Shard.serializers,
  ...StreamDescription.serializers,
  ...DescribeStreamOutput.serializers,
  ...InternalServerError.serializers,
  ...ResourceNotFoundException.serializers,
  ...GetRecordsInput.serializers,
  ...OperationType.serializers,
  ...AttributeValue.serializers,
  ...StreamRecord.serializers,
  ...Identity.serializers,
  ...Record.serializers,
  ...GetRecordsOutput.serializers,
  ...ExpiredIteratorException.serializers,
  ...LimitExceededException.serializers,
  ...TrimmedDataAccessException.serializers,
  ...ShardIteratorType.serializers,
  ...GetShardIteratorInput.serializers,
  ...GetShardIteratorOutput.serializers,
  ...ListStreamsInput.serializers,
  ...Stream.serializers,
  ...ListStreamsOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(KeySchemaElement)],
  ): _i2.ListBuilder<KeySchemaElement>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Shard)],
  ): _i2.ListBuilder<Shard>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(_i3.Uint8List)],
  ): _i2.ListBuilder<_i3.Uint8List>.new,
  const FullType(
    _i2.BuiltMap,
    [
      FullType(String),
      FullType(AttributeValue),
    ],
  ): _i2.MapBuilder<String, AttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AttributeValue)],
  ): _i2.ListBuilder<AttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Record)],
  ): _i2.ListBuilder<Record>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Stream)],
  ): _i2.ListBuilder<Stream>.new,
};
