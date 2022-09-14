// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v2.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/common/serializers.dart' as _i3;
import 'package:rest_xml_v2/src/s3/model/bucket_location_constraint.dart'
    as _i10;
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/s3/model/get_bucket_location_request.dart'
    as _i6;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_output.dart' as _i7;
import 'package:rest_xml_v2/src/s3/model/list_objects_v2_request.dart' as _i8;
import 'package:rest_xml_v2/src/s3/model/no_such_bucket.dart' as _i11;
import 'package:shelf/shelf.dart' as _i9;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class S3ServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
      serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final Router _router = () {
    final service = _S3Server(this);
    final router = Router();
    router.add('GET', r'/<Bucket>?location', service.getBucketLocation);
    router.add('GET', r'/<Bucket>?list-type=2', service.listObjectsV2);
    return router;
  }();

  _i4.Future<_i5.GetBucketLocationOutput> getBucketLocation(
      _i6.GetBucketLocationRequest input, _i1.Context context);
  _i4.Future<_i7.ListObjectsV2Output> listObjectsV2(
      _i8.ListObjectsV2Request input, _i1.Context context);
  _i4.Future<_i9.Response> call(_i9.Request request) => _router(request);
}

class _S3Server extends _i1.HttpServer<S3ServerBase> {
  _S3Server(this.service);

  @override
  final S3ServerBase service;

  late final _i1.HttpProtocol<
          _i6.GetBucketLocationRequestPayload,
          _i6.GetBucketLocationRequest,
          _i10.BucketLocationConstraint,
          _i5.GetBucketLocationOutput> _getBucketLocationProtocol =
      _i2.RestXmlProtocol(
          serializers: _i3.serializers,
          builderFactories: _i3.builderFactories,
          noErrorWrapping: true);

  late final _i1.HttpProtocol<
          _i8.ListObjectsV2RequestPayload,
          _i8.ListObjectsV2Request,
          _i7.ListObjectsV2Output,
          _i7.ListObjectsV2Output> _listObjectsV2Protocol =
      _i2.RestXmlProtocol(
          serializers: _i3.serializers,
          builderFactories: _i3.builderFactories,
          noErrorWrapping: true);

  _i4.Future<_i9.Response> getBucketLocation(
      _i9.Request request, String Bucket) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _getBucketLocationProtocol.contentType;
    try {
      final payload = (await _getBucketLocationProtocol.deserialize(
              awsRequest.split(),
              specifiedType:
                  const FullType(_i6.GetBucketLocationRequestPayload))
          as _i6.GetBucketLocationRequestPayload);
      final input = _i6.GetBucketLocationRequest.fromRequest(
          payload, awsRequest,
          labels: {'Bucket': Bucket});
      final output = await service.getBucketLocation(input, context);
      const statusCode = 200;
      final body = _getBucketLocationProtocol.serialize(output,
          specifiedType: const FullType(_i5.GetBucketLocationOutput,
              [FullType.nullable(_i10.BucketLocationConstraint)]));
      return _i9.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i9.Response> listObjectsV2(
      _i9.Request request, String Bucket) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _listObjectsV2Protocol.contentType;
    try {
      final payload = (await _listObjectsV2Protocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i8.ListObjectsV2RequestPayload))
          as _i8.ListObjectsV2RequestPayload);
      final input = _i8.ListObjectsV2Request.fromRequest(payload, awsRequest,
          labels: {'Bucket': Bucket});
      final output = await service.listObjectsV2(input, context);
      const statusCode = 200;
      final body = _listObjectsV2Protocol.serialize(output,
          specifiedType: const FullType(
              _i7.ListObjectsV2Output, [FullType(_i7.ListObjectsV2Output)]));
      return _i9.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i11.NoSuchBucket catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'NoSuchBucket';
      final body = _listObjectsV2Protocol.serialize(e,
          specifiedType:
              const FullType(_i11.NoSuchBucket, [FullType(_i11.NoSuchBucket)]));
      const statusCode = 400;
      return _i9.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }
}
