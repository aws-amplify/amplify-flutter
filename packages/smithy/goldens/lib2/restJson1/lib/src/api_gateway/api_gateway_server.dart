// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.api_gateway.api_gateway_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/api_gateway/common/serializers.dart' as _i3;
import 'package:rest_json1_v2/src/api_gateway/model/bad_request_exception.dart'
    as _i8;
import 'package:rest_json1_v2/src/api_gateway/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1_v2/src/api_gateway/model/rest_apis.dart' as _i5;
import 'package:rest_json1_v2/src/api_gateway/model/too_many_requests_exception.dart'
    as _i9;
import 'package:rest_json1_v2/src/api_gateway/model/unauthorized_exception.dart'
    as _i10;
import 'package:shelf/shelf.dart' as _i7;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class ApiGatewayServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final Router _router = () {
    final service = _ApiGatewayServer(this);
    final router = Router();
    router.add(
      'GET',
      r'/restapis',
      service.getRestApis,
    );
    return router;
  }();

  _i4.Future<_i5.RestApis> getRestApis(
    _i6.GetRestApisRequest input,
    _i1.Context context,
  );
  _i4.Future<_i7.Response> call(_i7.Request request) => _router(request);
}

class _ApiGatewayServer extends _i1.HttpServer<ApiGatewayServerBase> {
  _ApiGatewayServer(this.service);

  @override
  final ApiGatewayServerBase service;

  late final _i1.HttpProtocol<
      _i6.GetRestApisRequestPayload,
      _i6.GetRestApisRequest,
      _i5.RestApis,
      _i5.RestApis> _getRestApisProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i7.Response> getRestApis(_i7.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _getRestApisProtocol.contentType;
    try {
      final payload = (await _getRestApisProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i6.GetRestApisRequestPayload),
      ) as _i6.GetRestApisRequestPayload);
      final input = _i6.GetRestApisRequest.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.getRestApis(
        input,
        context,
      );
      const statusCode = 200;
      final body = _getRestApisProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i5.RestApis,
          [FullType(_i5.RestApis)],
        ),
      );
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i8.BadRequestException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'BadRequestException';
      final body = _getRestApisProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i8.BadRequestException,
          [FullType(_i8.BadRequestException)],
        ),
      );
      const statusCode = 400;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i9.TooManyRequestsException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'TooManyRequestsException';
      final body = _getRestApisProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i9.TooManyRequestsException,
          [FullType(_i9.TooManyRequestsExceptionPayload)],
        ),
      );
      const statusCode = 429;
      return _i7.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i10.UnauthorizedException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'UnauthorizedException';
      final body = _getRestApisProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i10.UnauthorizedException,
          [FullType(_i10.UnauthorizedException)],
        ),
      );
      const statusCode = 401;
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
