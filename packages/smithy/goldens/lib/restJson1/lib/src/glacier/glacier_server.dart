// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.glacier.glacier_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/glacier/common/serializers.dart' as _i3;
import 'package:rest_json1_v1/src/glacier/model/archive_creation_output.dart'
    as _i5;
import 'package:rest_json1_v1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i10;
import 'package:rest_json1_v1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i11;
import 'package:rest_json1_v1/src/glacier/model/request_timeout_exception.dart'
    as _i12;
import 'package:rest_json1_v1/src/glacier/model/resource_not_found_exception.dart'
    as _i13;
import 'package:rest_json1_v1/src/glacier/model/service_unavailable_exception.dart'
    as _i14;
import 'package:rest_json1_v1/src/glacier/model/upload_archive_input.dart'
    as _i6;
import 'package:rest_json1_v1/src/glacier/model/upload_multipart_part_input.dart'
    as _i8;
import 'package:rest_json1_v1/src/glacier/model/upload_multipart_part_output.dart'
    as _i7;
import 'package:shelf/shelf.dart' as _i9;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class GlacierServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final Router _router = () {
    final service = _GlacierServer(this);
    final router = Router();
    router.add(
      'POST',
      r'/<accountId>/vaults/<vaultName>/archives',
      service.uploadArchive,
    );
    router.add(
      'PUT',
      r'/<accountId>/vaults/<vaultName>/multipart-uploads/<uploadId>',
      service.uploadMultipartPart,
    );
    return router;
  }();

  _i4.Future<_i5.ArchiveCreationOutput> uploadArchive(
    _i6.UploadArchiveInput input,
    _i1.Context context,
  );
  _i4.Future<_i7.UploadMultipartPartOutput> uploadMultipartPart(
    _i8.UploadMultipartPartInput input,
    _i1.Context context,
  );
  _i4.Future<_i9.Response> call(_i9.Request request) => _router(request);
}

class _GlacierServer extends _i1.HttpServer<GlacierServerBase> {
  _GlacierServer(this.service);

  @override
  final GlacierServerBase service;

  late final _i1.HttpProtocol<
      _i4.Stream<List<int>>,
      _i6.UploadArchiveInput,
      _i5.ArchiveCreationOutputPayload,
      _i5.ArchiveCreationOutput> _uploadArchiveProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i4.Stream<List<int>>,
          _i8.UploadMultipartPartInput,
          _i7.UploadMultipartPartOutputPayload,
          _i7.UploadMultipartPartOutput> _uploadMultipartPartProtocol =
      _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i9.Response> uploadArchive(
    _i9.Request request,
    String accountId,
    String vaultName,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _uploadArchiveProtocol.contentType;
    try {
      final payload = (await _uploadArchiveProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(
          _i4.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i4.Stream<List<int>>?);
      final input = _i6.UploadArchiveInput.fromRequest(
        payload,
        awsRequest,
        labels: {
          'vaultName': vaultName,
          'accountId': accountId,
        },
      );
      final output = await service.uploadArchive(
        input,
        context,
      );
      const statusCode = 201;
      final body = _uploadArchiveProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i5.ArchiveCreationOutput,
          [FullType(_i5.ArchiveCreationOutputPayload)],
        ),
      );
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i10.InvalidParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'InvalidParameterValueException';
      final body = _uploadArchiveProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i10.InvalidParameterValueException,
          [FullType(_i10.InvalidParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i11.MissingParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'MissingParameterValueException';
      final body = _uploadArchiveProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i11.MissingParameterValueException,
          [FullType(_i11.MissingParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i12.RequestTimeoutException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'RequestTimeoutException';
      final body = _uploadArchiveProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i12.RequestTimeoutException,
          [FullType(_i12.RequestTimeoutException)],
        ),
      );
      const statusCode = 408;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i13.ResourceNotFoundException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ResourceNotFoundException';
      final body = _uploadArchiveProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i13.ResourceNotFoundException,
          [FullType(_i13.ResourceNotFoundException)],
        ),
      );
      const statusCode = 404;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i14.ServiceUnavailableException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ServiceUnavailableException';
      final body = _uploadArchiveProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i14.ServiceUnavailableException,
          [FullType(_i14.ServiceUnavailableException)],
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

  _i4.Future<_i9.Response> uploadMultipartPart(
    _i9.Request request,
    String accountId,
    String vaultName,
    String uploadId,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _uploadMultipartPartProtocol.contentType;
    try {
      final payload = (await _uploadMultipartPartProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType.nullable(
          _i4.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i4.Stream<List<int>>?);
      final input = _i8.UploadMultipartPartInput.fromRequest(
        payload,
        awsRequest,
        labels: {
          'accountId': accountId,
          'vaultName': vaultName,
          'uploadId': uploadId,
        },
      );
      final output = await service.uploadMultipartPart(
        input,
        context,
      );
      const statusCode = 204;
      final body = _uploadMultipartPartProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i7.UploadMultipartPartOutput,
          [FullType(_i7.UploadMultipartPartOutputPayload)],
        ),
      );
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i10.InvalidParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'InvalidParameterValueException';
      final body = _uploadMultipartPartProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i10.InvalidParameterValueException,
          [FullType(_i10.InvalidParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i11.MissingParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'MissingParameterValueException';
      final body = _uploadMultipartPartProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i11.MissingParameterValueException,
          [FullType(_i11.MissingParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i12.RequestTimeoutException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'RequestTimeoutException';
      final body = _uploadMultipartPartProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i12.RequestTimeoutException,
          [FullType(_i12.RequestTimeoutException)],
        ),
      );
      const statusCode = 408;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i13.ResourceNotFoundException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ResourceNotFoundException';
      final body = _uploadMultipartPartProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i13.ResourceNotFoundException,
          [FullType(_i13.ResourceNotFoundException)],
        ),
      );
      const statusCode = 404;
      return _i9.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i14.ServiceUnavailableException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ServiceUnavailableException';
      final body = _uploadMultipartPartProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i14.ServiceUnavailableException,
          [FullType(_i14.ServiceUnavailableException)],
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
}
