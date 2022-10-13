// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library custom_v2.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/common/serializers.dart' as _i3;
import 'package:custom_v2/src/s3/model/copy_object_error.dart' as _i11;
import 'package:custom_v2/src/s3/model/copy_object_output.dart' as _i5;
import 'package:custom_v2/src/s3/model/copy_object_request.dart' as _i6;
import 'package:custom_v2/src/s3/model/copy_object_result.dart' as _i10;
import 'package:custom_v2/src/s3/model/get_object_output.dart' as _i7;
import 'package:custom_v2/src/s3/model/get_object_request.dart' as _i8;
import 'package:shelf/shelf.dart' as _i9;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class S3ServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
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

  _i4.Future<_i5.CopyObjectOutput> copyObject(
    _i6.CopyObjectRequest input,
    _i1.Context context,
  );
  _i4.Future<_i7.GetObjectOutput> getObject(
    _i8.GetObjectRequest input,
    _i1.Context context,
  );
  _i4.Future<_i9.Response> call(_i9.Request request) => _router(request);
}

class _S3Server extends _i1.HttpServer<S3ServerBase> {
  _S3Server(this.service);

  @override
  final S3ServerBase service;

  late final _i1.HttpProtocol<
      _i6.CopyObjectRequestPayload,
      _i6.CopyObjectRequest,
      _i10.CopyObjectResult,
      _i5.CopyObjectOutput> _copyObjectProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: true,
  );

  late final _i1.HttpProtocol<
      _i8.GetObjectRequestPayload,
      _i8.GetObjectRequest,
      _i4.Stream<List<int>>,
      _i7.GetObjectOutput> _getObjectProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: true,
  );

  _i4.Future<_i9.Response> copyObject(
    _i9.Request request,
    String Bucket,
    String Key,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _copyObjectProtocol.contentType;
    try {
      final payload = (await _copyObjectProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i6.CopyObjectRequestPayload),
      ) as _i6.CopyObjectRequestPayload);
      final input = _i6.CopyObjectRequest.fromRequest(
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
      final body = _copyObjectProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i5.CopyObjectOutput,
          [FullType.nullable(_i10.CopyObjectResult)],
        ),
      );
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i11.CopyObjectError catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'CopyObjectError';
      final body = _copyObjectProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i11.CopyObjectError,
          [FullType(_i11.CopyObjectError)],
        ),
      );
      const statusCode = 500;
      return _i9.Response(
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

  _i4.Future<_i9.Response> getObject(
    _i9.Request request,
    String Bucket,
    String Key,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _getObjectProtocol.contentType;
    try {
      final payload = (await _getObjectProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i8.GetObjectRequestPayload),
      ) as _i8.GetObjectRequestPayload);
      final input = _i8.GetObjectRequest.fromRequest(
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
      final body = _getObjectProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i7.GetObjectOutput,
          [
            FullType.nullable(
              _i4.Stream,
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
      return _i9.Response(
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
