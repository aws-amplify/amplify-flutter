// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i30;

import 'package:built_collection/built_collection.dart' as _i29;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/attribute_value.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/describe_stream_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/describe_stream_output.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/expired_iterator_exception.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_input.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_output.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_input.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_output.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/identity.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/internal_server_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_schema_element.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_type.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/limit_exceeded_exception.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/list_streams_input.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/list_streams_output.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/operation_type.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/record.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/resource_not_found_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/sequence_number_range.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard_iterator_type.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_description.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_record.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_view_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/trimmed_data_access_exception.dart'
    as _i22;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DescribeStreamInput.serializers,
  ..._i3.StreamStatus.serializers,
  ..._i4.StreamViewType.serializers,
  ..._i5.KeyType.serializers,
  ..._i6.KeySchemaElement.serializers,
  ..._i7.SequenceNumberRange.serializers,
  ..._i8.Shard.serializers,
  ..._i9.StreamDescription.serializers,
  ..._i10.DescribeStreamOutput.serializers,
  ..._i11.InternalServerError.serializers,
  ..._i12.ResourceNotFoundException.serializers,
  ..._i13.GetRecordsInput.serializers,
  ..._i14.OperationType.serializers,
  ..._i15.AttributeValue.serializers,
  ..._i16.StreamRecord.serializers,
  ..._i17.Identity.serializers,
  ..._i18.Record.serializers,
  ..._i19.GetRecordsOutput.serializers,
  ..._i20.ExpiredIteratorException.serializers,
  ..._i21.LimitExceededException.serializers,
  ..._i22.TrimmedDataAccessException.serializers,
  ..._i23.ShardIteratorType.serializers,
  ..._i24.GetShardIteratorInput.serializers,
  ..._i25.GetShardIteratorOutput.serializers,
  ..._i26.ListStreamsInput.serializers,
  ..._i27.Stream.serializers,
  ..._i28.ListStreamsOutput.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i29.BuiltList,
    [FullType(_i6.KeySchemaElement)],
  ): _i29.ListBuilder<_i6.KeySchemaElement>.new,
  const FullType(
    _i29.BuiltList,
    [FullType(_i8.Shard)],
  ): _i29.ListBuilder<_i8.Shard>.new,
  const FullType(
    _i29.BuiltList,
    [FullType(_i30.Uint8List)],
  ): _i29.ListBuilder<_i30.Uint8List>.new,
  const FullType(
    _i29.BuiltList,
    [FullType(_i15.AttributeValue)],
  ): _i29.ListBuilder<_i15.AttributeValue>.new,
  const FullType(
    _i29.BuiltMap,
    [
      FullType(String),
      FullType(_i15.AttributeValue),
    ],
  ): _i29.MapBuilder<String, _i15.AttributeValue>.new,
  const FullType(
    _i29.BuiltList,
    [FullType(String)],
  ): _i29.ListBuilder<String>.new,
  const FullType(
    _i29.BuiltList,
    [FullType(_i18.Record)],
  ): _i29.ListBuilder<_i18.Record>.new,
  const FullType(
    _i29.BuiltList,
    [FullType(_i27.Stream)],
  ): _i29.ListBuilder<_i27.Stream>.new,
};
