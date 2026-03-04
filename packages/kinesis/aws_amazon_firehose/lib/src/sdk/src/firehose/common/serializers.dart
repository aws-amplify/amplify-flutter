// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_amazon_firehose.firehose.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/invalid_argument_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/invalid_kms_resource_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/invalid_source_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_input.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_output.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/put_record_batch_response_entry.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/record.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/resource_not_found_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/src/firehose/model/service_unavailable_exception.dart';
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ...Record.serializers,
  ...PutRecordBatchInput.serializers,
  ...PutRecordBatchResponseEntry.serializers,
  ...PutRecordBatchOutput.serializers,
  ...InvalidArgumentException.serializers,
  ...InvalidKmsResourceException.serializers,
  ...InvalidSourceException.serializers,
  ...ResourceNotFoundException.serializers,
  ...ServiceUnavailableException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i2.BuiltList, [FullType(Record)]):
      _i2.ListBuilder<Record>.new,
  const FullType(_i2.BuiltList, [FullType(PutRecordBatchResponseEntry)]):
      _i2.ListBuilder<PutRecordBatchResponseEntry>.new,
};
