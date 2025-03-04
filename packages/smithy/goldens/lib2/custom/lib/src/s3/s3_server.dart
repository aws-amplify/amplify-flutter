// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/common/serializers.dart';
import 'package:custom_v2/src/s3/model/copy_object_error.dart';
import 'package:custom_v2/src/s3/model/copy_object_output.dart';
import 'package:custom_v2/src/s3/model/copy_object_request.dart';
import 'package:custom_v2/src/s3/model/copy_object_result.dart';
import 'package:custom_v2/src/s3/model/get_object_output.dart';
import 'package:custom_v2/src/s3/model/get_object_request.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class S3ServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final Router _router = () {
    final service = _S3Server(this);
    final router = Router();
    router.add(
      'PUT',
      r'/<Bucket>/<Key>?x-id=CopyObject',
      service.copyObject,
    );
    router.add(
      'GET',
      r'/<Bucket>/<Key>?x-id=GetObject',
      service.getObject,
    );
    return router;
  }();

  _i3.Future<CopyObjectOutput> copyObject(
    CopyObjectRequest input,
    _i1.Context context,
  );
  _i3.Future<GetObjectOutput> getObject(
    GetObjectRequest input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _S3Server extends _i1.HttpServer<S3ServerBase> {
  _S3Server(this.service);

  @override
  final S3ServerBase service;

  late final _i1.HttpProtocol<
      CopyObjectRequestPayload,
      CopyObjectRequest,
      CopyObjectResult,
      CopyObjectOutput> _copyObjectProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: true,
  );

  late final _i1.HttpProtocol<
      GetObjectRequestPayload,
      GetObjectRequest,
      _i3.Stream<List<int>>,
      GetObjectOutput> _getObjectProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: true,
  );

  _i3.Future<_i4.Response> copyObject(
    _i4.Request request,
    String Bucket,
    String Key,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _copyObjectProtocol.contentType;
    try {
      final payload = (await _copyObjectProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(CopyObjectRequestPayload),
      ) as CopyObjectRequestPayload);
      final input = CopyObjectRequest.fromRequest(
        payload,
        awsRequest,
        labels: {
          'Bucket': Bucket,
          'Key': Key,
        },
      );
      final output = await service.copyObject(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _copyObjectProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          CopyObjectOutput,
          [FullType.nullable(CopyObjectResult)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on CopyObjectError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'CopyObjectError';
      final body = _copyObjectProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          CopyObjectError,
          [FullType(CopyObjectError)],
        ),
      );
      const statusCode = 500;
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

  _i3.Future<_i4.Response> getObject(
    _i4.Request request,
    String Bucket,
    String Key,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _getObjectProtocol.contentType;
    try {
      final payload = (await _getObjectProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(GetObjectRequestPayload),
      ) as GetObjectRequestPayload);
      final input = GetObjectRequest.fromRequest(
        payload,
        awsRequest,
        labels: {
          'Bucket': Bucket,
          'Key': Key,
        },
      );
      final output = await service.getObject(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _getObjectProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          GetObjectOutput,
          [
            FullType(
              _i3.Stream,
              [
                FullType(
                  List,
                  [FullType(int)],
                )
              ],
            )
          ],
        ),
      );
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
