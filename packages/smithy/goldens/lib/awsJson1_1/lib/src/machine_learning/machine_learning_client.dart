// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_1_v1.machine_learning.machine_learning_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart'
    as _i5;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart'
    as _i4;
import 'package:aws_json1_1_v1/src/machine_learning/operation/predict_operation.dart'
    as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

class MachineLearningClient {
  const MachineLearningClient({
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

  _i3.Future<_i4.PredictOutput> predict(
    _i5.PredictInput input, {
    _i1.HttpClient? client,
  }) {
    return _i6.PredictOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
