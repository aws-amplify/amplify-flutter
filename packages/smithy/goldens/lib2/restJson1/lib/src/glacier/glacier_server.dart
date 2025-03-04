// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.glacier.glacier_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/glacier/common/serializers.dart';
import 'package:rest_json1_v2/src/glacier/model/archive_creation_output.dart';
import 'package:rest_json1_v2/src/glacier/model/invalid_parameter_value_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/missing_parameter_value_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/request_timeout_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/resource_not_found_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/service_unavailable_exception.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_archive_input.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_input.dart';
import 'package:rest_json1_v2/src/glacier/model/upload_multipart_part_output.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class GlacierServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
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

  _i3.Future<ArchiveCreationOutput> uploadArchive(
    UploadArchiveInput input,
    _i1.Context context,
  );
  _i3.Future<UploadMultipartPartOutput> uploadMultipartPart(
    UploadMultipartPartInput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _GlacierServer extends _i1.HttpServer<GlacierServerBase> {
  _GlacierServer(this.service);

  @override
  final GlacierServerBase service;

  late final _i1.HttpProtocol<
      _i3.Stream<List<int>>,
      UploadArchiveInput,
      ArchiveCreationOutputPayload,
      ArchiveCreationOutput> _uploadArchiveProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i3.Stream<List<int>>, UploadMultipartPartInput,
          UploadMultipartPartOutputPayload, UploadMultipartPartOutput>
      _uploadMultipartPartProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> uploadArchive(
    _i4.Request request,
    String accountId,
    String vaultName,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _uploadArchiveProtocol.contentType;
    try {
      final payload = (await _uploadArchiveProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
          _i3.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i3.Stream<List<int>>);
      final input = UploadArchiveInput.fromRequest(
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
      final body = await _uploadArchiveProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          ArchiveCreationOutput,
          [FullType(ArchiveCreationOutputPayload)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on InvalidParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'InvalidParameterValueException';
      final body = _uploadArchiveProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          InvalidParameterValueException,
          [FullType(InvalidParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on MissingParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'MissingParameterValueException';
      final body = _uploadArchiveProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          MissingParameterValueException,
          [FullType(MissingParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on RequestTimeoutException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'RequestTimeoutException';
      final body = _uploadArchiveProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          RequestTimeoutException,
          [FullType(RequestTimeoutException)],
        ),
      );
      const statusCode = 408;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ResourceNotFoundException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ResourceNotFoundException';
      final body = _uploadArchiveProtocol.wireSerializer.serialize(
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
    } on ServiceUnavailableException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ServiceUnavailableException';
      final body = _uploadArchiveProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ServiceUnavailableException,
          [FullType(ServiceUnavailableException)],
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

  _i3.Future<_i4.Response> uploadMultipartPart(
    _i4.Request request,
    String accountId,
    String vaultName,
    String uploadId,
  ) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _uploadMultipartPartProtocol.contentType;
    try {
      final payload =
          (await _uploadMultipartPartProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(
          _i3.Stream,
          [
            FullType(
              List,
              [FullType(int)],
            )
          ],
        ),
      ) as _i3.Stream<List<int>>);
      final input = UploadMultipartPartInput.fromRequest(
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
      final body = await _uploadMultipartPartProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          UploadMultipartPartOutput,
          [FullType(UploadMultipartPartOutputPayload)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on InvalidParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'InvalidParameterValueException';
      final body = _uploadMultipartPartProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          InvalidParameterValueException,
          [FullType(InvalidParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on MissingParameterValueException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'MissingParameterValueException';
      final body = _uploadMultipartPartProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          MissingParameterValueException,
          [FullType(MissingParameterValueException)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on RequestTimeoutException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'RequestTimeoutException';
      final body = _uploadMultipartPartProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          RequestTimeoutException,
          [FullType(RequestTimeoutException)],
        ),
      );
      const statusCode = 408;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ResourceNotFoundException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ResourceNotFoundException';
      final body = _uploadMultipartPartProtocol.wireSerializer.serialize(
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
    } on ServiceUnavailableException catch (e) {
      context.response.headers['X-Amzn-Errortype'] =
          'ServiceUnavailableException';
      final body = _uploadMultipartPartProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ServiceUnavailableException,
          [FullType(ServiceUnavailableException)],
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
}
