// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.api_gateway.api_gateway_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/api_gateway/common/serializers.dart';
import 'package:rest_json1_v2/src/api_gateway/model/bad_request_exception.dart';
import 'package:rest_json1_v2/src/api_gateway/model/get_rest_apis_request.dart';
import 'package:rest_json1_v2/src/api_gateway/model/rest_apis.dart';
import 'package:rest_json1_v2/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:rest_json1_v2/src/api_gateway/model/unauthorized_exception.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class ApiGatewayServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
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

  _i3.Future<RestApis> getRestApis(
    GetRestApisRequest input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _ApiGatewayServer extends _i1.HttpServer<ApiGatewayServerBase> {
  _ApiGatewayServer(this.service);

  @override
  final ApiGatewayServerBase service;

  late final _i1.HttpProtocol<GetRestApisRequestPayload, GetRestApisRequest,
      RestApis, RestApis> _getRestApisProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> getRestApis(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _getRestApisProtocol.contentType;
    try {
      final payload = (await _getRestApisProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(GetRestApisRequestPayload),
      ) as GetRestApisRequestPayload);
      final input = GetRestApisRequest.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.getRestApis(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _getRestApisProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          RestApis,
          [FullType(RestApis)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on BadRequestException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'BadRequestException';
      final body = _getRestApisProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          BadRequestException,
          [FullType(BadRequestException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on TooManyRequestsException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'TooManyRequestsException';
      final body = _getRestApisProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          TooManyRequestsException,
          [FullType(TooManyRequestsExceptionPayload)],
        ),
      );
      const statusCode = 429;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on UnauthorizedException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'UnauthorizedException';
      final body = _getRestApisProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          UnauthorizedException,
          [FullType(UnauthorizedException)],
        ),
      );
      const statusCode = 401;
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
