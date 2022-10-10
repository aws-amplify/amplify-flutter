// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.dynamo_db_streams_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/describe_stream_input.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/describe_stream_output.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_input.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_output.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_input.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_output.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/list_streams_input.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/list_streams_output.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/operation/describe_stream_operation.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/operation/get_records_operation.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/operation/get_shard_iterator_operation.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/operation/list_streams_operation.dart'
    as _i15;

/// ## Amazon DynamoDB
///
/// Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see [Capturing Table Activity with DynamoDB Streams](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html) in the Amazon DynamoDB Developer Guide.
class DynamoDbStreamsClient {
  /// ## Amazon DynamoDB
  ///
  /// Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see [Capturing Table Activity with DynamoDB Streams](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html) in the Amazon DynamoDB Developer Guide.
  const DynamoDbStreamsClient({
    _i1.HttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.HttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.
  ///
  /// You can call `DescribeStream` at a maximum rate of 10 times per second.
  ///
  /// Each shard in the stream has a `SequenceNumberRange` associated with it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no `EndingSequenceNumber`, then the shard is still open (able to receive more stream records). If both `StartingSequenceNumber` and `EndingSequenceNumber` are present, then that shard is closed and can no longer receive more data.
  _i3.Future<_i4.DescribeStreamOutput> describeStream(
    _i5.DescribeStreamInput input, {
    _i1.HttpClient? client,
  }) {
    return _i6.DescribeStreamOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the stream records from a given shard.
  ///
  /// Specify a shard iterator using the `ShardIterator` parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, `GetRecords` returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.
  ///
  /// `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.
  _i3.Future<_i7.GetRecordsOutput> getRecords(
    _i8.GetRecordsInput input, {
    _i1.HttpClient? client,
  }) {
    return _i9.GetRecordsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent `GetRecords` request to read the stream records from the shard.
  ///
  /// A shard iterator expires 15 minutes after it is returned to the requester.
  _i3.Future<_i10.GetShardIteratorOutput> getShardIterator(
    _i11.GetShardIteratorInput input, {
    _i1.HttpClient? client,
  }) {
    return _i12.GetShardIteratorOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns an array of stream ARNs associated with the current account and endpoint. If the `TableName` parameter is present, then `ListStreams` will return only the streams ARNs for that table.
  ///
  /// You can call `ListStreams` at a maximum rate of 5 times per second.
  _i3.Future<_i13.ListStreamsOutput> listStreams(
    _i14.ListStreamsInput input, {
    _i1.HttpClient? client,
  }) {
    return _i15.ListStreamsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
