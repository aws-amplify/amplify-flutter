// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.machine_learning.machine_learning_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_json1_1_v2/src/machine_learning/common/serializers.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/internal_server_exception.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/invalid_input_exception.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/limit_exceeded_exception.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/predict_input.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/predict_output.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/predictor_not_mounted_exception.dart';
import 'package:aws_json1_1_v2/src/machine_learning/model/resource_not_found_exception.dart';
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class MachineLearningServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
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

  _i3.Future<PredictOutput> predict(
    PredictInput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _MachineLearningServer extends _i1.HttpServer<MachineLearningServerBase> {
  _MachineLearningServer(this.service);

  @override
  final MachineLearningServerBase service;

  late final _i1
      .HttpProtocol<PredictInput, PredictInput, PredictOutput, PredictOutput>
      _predictProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> predict(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _predictProtocol.contentType;
    try {
      final payload = (await _predictProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(PredictInput),
      ) as PredictInput);
      final input = PredictInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.predict(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _predictProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          PredictOutput,
          [FullType(PredictOutput)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on InternalServerException catch (e) {
      final body = _predictProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          InternalServerException,
          [FullType(InternalServerException)],
        ),
      );
      const statusCode = 500;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on InvalidInputException catch (e) {
      final body = _predictProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          InvalidInputException,
          [FullType(InvalidInputException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on LimitExceededException catch (e) {
      final body = _predictProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          LimitExceededException,
          [FullType(LimitExceededException)],
        ),
      );
      const statusCode = 417;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on PredictorNotMountedException catch (e) {
      final body = _predictProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          PredictorNotMountedException,
          [FullType(PredictorNotMountedException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ResourceNotFoundException catch (e) {
      final body = _predictProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ResourceNotFoundException,
          [FullType(ResourceNotFoundException)],
        ),
      );
      const statusCode = 404;
      return _i4.Response(
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
