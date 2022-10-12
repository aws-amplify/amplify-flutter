// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library custom_v2.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/common/serializers.dart' as _i3;
import 'package:custom_v2/src/s3/model/get_object_output.dart' as _i5;
import 'package:custom_v2/src/s3/model/get_object_request.dart' as _i6;
import 'package:shelf/shelf.dart' as _i7;
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
      'GET',
      r'/<Bucket>/<Key>?x-id=GetObject',
      service.getObject,
    );
    return router;
  }();

  _i4.Future<_i5.GetObjectOutput> getObject(
    _i6.GetObjectRequest input,
    _i1.Context context,
  );
  _i4.Future<_i7.Response> call(_i7.Request request) => _router(request);
}

class _S3Server extends _i1.HttpServer<S3ServerBase> {
  _S3Server(this.service);

  @override
  final S3ServerBase service;

  late final _i1.HttpProtocol<
      _i6.GetObjectRequestPayload,
      _i6.GetObjectRequest,
      _i4.Stream<List<int>>,
      _i5.GetObjectOutput> _getObjectProtocol = _i2.RestXmlProtocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
    noErrorWrapping: true,
  );

  _i4.Future<_i7.Response> getObject(
    _i7.Request request,
    String Bucket,
    String Key,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _getObjectProtocol.contentType;
    try {
      final payload = (await _getObjectProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i6.GetObjectRequestPayload),
      ) as _i6.GetObjectRequestPayload);
      final input = _i6.GetObjectRequest.fromRequest(
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
          _i5.GetObjectOutput,
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
