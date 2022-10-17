// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_1_v1.machine_learning.machine_learning_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_json1_1_v1/src/machine_learning/common/serializers.dart'
    as _i3;
import 'package:aws_json1_1_v1/src/machine_learning/model/internal_server_exception.dart'
    as _i8;
import 'package:aws_json1_1_v1/src/machine_learning/model/invalid_input_exception.dart'
    as _i9;
import 'package:aws_json1_1_v1/src/machine_learning/model/limit_exceeded_exception.dart'
    as _i10;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_input.dart'
    as _i6;
import 'package:aws_json1_1_v1/src/machine_learning/model/predict_output.dart'
    as _i5;
import 'package:aws_json1_1_v1/src/machine_learning/model/predictor_not_mounted_exception.dart'
    as _i11;
import 'package:aws_json1_1_v1/src/machine_learning/model/resource_not_found_exception.dart'
    as _i12;
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i7;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class MachineLearningServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final Router _router = () {
    final service = _MachineLearningServer(this);
    final router = Router();
    router.add(
      'POST',
      '/',
      _i1.RpcRouter(
        'X-Amz-Target',
        {'AmazonML_20141212.Predict': service.predict},
      ),
    );
    return router;
  }();

  _i4.Future<_i5.PredictOutput> predict(
    _i6.PredictInput input,
    _i1.Context context,
  );
  _i4.Future<_i7.Response> call(_i7.Request request) => _router(request);
}

class _MachineLearningServer extends _i1.HttpServer<MachineLearningServerBase> {
  _MachineLearningServer(this.service);

  @override
  final MachineLearningServerBase service;

  late final _i1.HttpProtocol<
      _i6.PredictInput,
      _i6.PredictInput,
      _i5.PredictOutput,
      _i5.PredictOutput> _predictProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i7.Response> predict(_i7.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _predictProtocol.contentType;
    try {
      final payload = (await _predictProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i6.PredictInput),
      ) as _i6.PredictInput);
      final input = _i6.PredictInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.predict(
        input,
        context,
      );
      const statusCode = 200;
      final body = _predictProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i5.PredictOutput,
          [FullType(_i5.PredictOutput)],
        ),
      );
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i8.InternalServerException catch (e) {
      final body = _predictProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i8.InternalServerException,
          [FullType(_i8.InternalServerException)],
        ),
      );
      const statusCode = 500;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i9.InvalidInputException catch (e) {
      final body = _predictProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i9.InvalidInputException,
          [FullType(_i9.InvalidInputException)],
        ),
      );
      const statusCode = 400;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i10.LimitExceededException catch (e) {
      final body = _predictProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i10.LimitExceededException,
          [FullType(_i10.LimitExceededException)],
        ),
      );
      const statusCode = 417;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i11.PredictorNotMountedException catch (e) {
      final body = _predictProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i11.PredictorNotMountedException,
          [FullType(_i11.PredictorNotMountedException)],
        ),
      );
      const statusCode = 400;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i12.ResourceNotFoundException catch (e) {
      final body = _predictProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i12.ResourceNotFoundException,
          [FullType(_i12.ResourceNotFoundException)],
        ),
      );
      const statusCode = 404;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }
}
