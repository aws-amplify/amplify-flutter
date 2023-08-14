// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.s3.s3_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/common/serializers.dart';
import 'package:rest_xml_v1/src/s3/model/bucket_location_constraint.dart';
import 'package:rest_xml_v1/src/s3/model/delete_object_tagging_output.dart';
import 'package:rest_xml_v1/src/s3/model/delete_object_tagging_request.dart';
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_output.dart';
import 'package:rest_xml_v1/src/s3/model/get_bucket_location_request.dart';
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_output.dart';
import 'package:rest_xml_v1/src/s3/model/list_objects_v2_request.dart';
import 'package:rest_xml_v1/src/s3/model/no_such_bucket.dart';
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
      'DELETE',
      r'/<Bucket>/<Key>?tagging',
      service.deleteObjectTagging,
    );
    router.add(
      'GET',
      r'/<Bucket>?location',
      service.getBucketLocation,
    );
    router.add(
      'GET',
      r'/<Bucket>?list-type=2',
      service.listObjectsV2,
    );
    return router;
  }();

  _i3.Future<DeleteObjectTaggingOutput> deleteObjectTagging(
    DeleteObjectTaggingRequest input,
    _i1.Context context,
  );
  _i3.Future<GetBucketLocationOutput> getBucketLocation(
    GetBucketLocationRequest input,
    _i1.Context context,
  );
  _i3.Future<ListObjectsV2Output> listObjectsV2(
    ListObjectsV2Request input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _S3Server extends _i1.HttpServer<S3ServerBase> {
  _S3Server(this.service);

  @override
  final S3ServerBase service;

  late final _i1.HttpProtocol<
          DeleteObjectTaggingRequestPayload,
          DeleteObjectTaggingRequest,
          DeleteObjectTaggingOutputPayload,
          DeleteObjectTaggingOutput> _deleteObjectTaggingProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: true,
  );

  late final _i1.HttpProtocol<
      GetBucketLocationRequestPayload,
      GetBucketLocationRequest,
      BucketLocationConstraint,
      GetBucketLocationOutput> _getBucketLocationProtocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: true,
  );

  late final _i1.HttpProtocol<
      ListObjectsV2RequestPayload,
      ListObjectsV2Request,
      ListObjectsV2Output,
      ListObjectsV2Output> _listObjectsV2Protocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: true,
  );

  _i3.Future<_i4.Response> deleteObjectTagging(
    _i4.Request request,
    String Bucket,
    String Key,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _deleteObjectTaggingProtocol.contentType;
    try {
      final payload =
          (await _deleteObjectTaggingProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(DeleteObjectTaggingRequestPayload),
      ) as DeleteObjectTaggingRequestPayload);
      final input = DeleteObjectTaggingRequest.fromRequest(
        payload,
        awsRequest,
        labels: {
          'Bucket': Bucket,
          'Key': Key,
        },
      );
      final output = await service.deleteObjectTagging(
        input,
        context,
      );
      const statusCode = 204;
      final body = await _deleteObjectTaggingProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          DeleteObjectTaggingOutput,
          [FullType(DeleteObjectTaggingOutputPayload)],
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

  _i3.Future<_i4.Response> getBucketLocation(
    _i4.Request request,
    String Bucket,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _getBucketLocationProtocol.contentType;
    try {
      final payload =
          (await _getBucketLocationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(GetBucketLocationRequestPayload),
      ) as GetBucketLocationRequestPayload);
      final input = GetBucketLocationRequest.fromRequest(
        payload,
        awsRequest,
        labels: {'Bucket': Bucket},
      );
      final output = await service.getBucketLocation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _getBucketLocationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          GetBucketLocationOutput,
          [FullType.nullable(BucketLocationConstraint)],
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

  _i3.Future<_i4.Response> listObjectsV2(
    _i4.Request request,
    String Bucket,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _listObjectsV2Protocol.contentType;
    try {
      final payload = (await _listObjectsV2Protocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(ListObjectsV2RequestPayload),
      ) as ListObjectsV2RequestPayload);
      final input = ListObjectsV2Request.fromRequest(
        payload,
        awsRequest,
        labels: {'Bucket': Bucket},
      );
      final output = await service.listObjectsV2(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _listObjectsV2Protocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          ListObjectsV2Output,
          [FullType(ListObjectsV2Output)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on NoSuchBucket catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'NoSuchBucket';
      final body = _listObjectsV2Protocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          NoSuchBucket,
          [FullType(NoSuchBucket)],
        ),
      );
      const statusCode = 400;
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
