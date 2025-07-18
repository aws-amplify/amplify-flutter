// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

/// Payload encoding for S3 requests.
enum S3PayloadEncoding {
  /// No encoding.
  none;

  /// The [Codec] for this encoding.
  Codec<List<int>, List<int>> get encoding {
    switch (this) {
      case S3PayloadEncoding.none:
        return const IdentityCodec();
    }
  }
}

/// {@template aws_signature_v4.s3_service_configuration}
/// The base service configuration for AWS S3 requests.
/// {@endtemplate}
class S3ServiceConfiguration extends BaseServiceConfiguration {
  /// {@macro aws_signature_v4.s3_service_configuration}
  S3ServiceConfiguration({
    bool signPayload = true,
    this.chunked = false,
    int chunkSize = _defaultChunkSize,
    this.encoding = S3PayloadEncoding.none,
  }) : assert(
         signPayload || !chunked,
         'S3 does not accept unsigned, chunked payloads',
       ),
       chunkSize = max(chunkSize, _minChunkSize),
       super(
         normalizePath: false,
         omitSessionToken: false,
         doubleEncodePathSegments: false,
         signBody: signPayload,
       );

  // 8 KB is the minimum chunk size.
  static const int _minChunkSize = 8 * 1024;

  // 64 KB is the recommended chunk size.
  static const int _defaultChunkSize = 64 * 1024;

  /// The seed hash used for chunked requests.
  static const chunkedPayloadSeedHash = 'STREAMING-AWS4-HMAC-SHA256-PAYLOAD';

  /// The hash sent for unsigned payloads.
  static const unsignedPayloadHash = 'UNSIGNED-PAYLOAD';

  static final _sigSep = Uint8List.fromList(';chunk-signature='.codeUnits);
  static final _sep = Uint8List.fromList('\r\n'.codeUnits);

  /// Whether the request should be chunked.
  final bool chunked;

  /// The chunk size, if [chunked].
  final int chunkSize;

  /// The encoding to use for the body.
  final S3PayloadEncoding encoding;

  int _calculateContentLength(int decodedLength) {
    var chunkedLength = 0;
    var metadataLength = 0;
    final numChunks = (decodedLength / chunkSize).ceil() + 1;
    final hashLength = sha256.blockSize;
    for (var i = 0; i < numChunks; i++) {
      final chunkLength = min(decodedLength - chunkedLength, chunkSize);
      metadataLength +=
          chunkLength.toRadixString(16).codeUnits.length +
          _sigSep.length +
          (2 * _sep.length) +
          hashLength;
      chunkedLength += chunkLength;
    }
    return decodedLength + metadataLength;
  }

  /// Whether [request] should be chunked, given the environment and whether
  /// chunking was requested.
  bool _shouldChunk(AWSBaseHttpRequest request) {
    var isChunkableMethod = true;
    if (zIsWeb) {
      // Browser APIs (XMLHttpRequest, fetch) disallow sending bodies for these
      // methods and, thus, chunked requests are not possible and we should not
      // try.
      isChunkableMethod =
          request.method != AWSHttpMethod.get &&
          request.method != AWSHttpMethod.head;
    }
    return chunked && isChunkableMethod;
  }

  @override
  void applySigned(
    Map<String, String> headers, {
    required AWSBaseHttpRequest request,
    required AWSCredentialScope credentialScope,
    required AWSCredentials credentials,
    required String payloadHash,
    required int contentLength,
  }) {
    super.applySigned(
      headers,
      request: request,
      credentialScope: credentialScope,
      credentials: credentials,
      payloadHash: payloadHash,
      contentLength: contentLength,
    );

    if (_shouldChunk(request)) {
      // Raw size of the data to be sent, before compression and without
      // metadata.
      headers[AWSHeaders.decodedContentLength] = contentLength.toString();

      if (encoding == S3PayloadEncoding.none) {
        headers[AWSHeaders.contentEncoding] = 'aws-chunked';
        headers[AWSHeaders.contentLength] = _calculateContentLength(
          contentLength,
        ).toString();
      } else {
        headers[AWSHeaders.contentEncoding] = 'aws-chunked,${encoding.name}';
      }
    }

    if (signBody) {
      headers[AWSHeaders.contentSHA256] = payloadHash;
    } else {
      headers[AWSHeaders.contentSHA256] = unsignedPayloadHash;
    }
  }

  @override
  Future<String> hashPayload(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) async {
    // Only unchunked, signed requests are hashed as other services would be.
    if (signBody && !_shouldChunk(request)) {
      return super.hashPayload(request, presignedUrl: presignedUrl);
    }
    return hashPayloadSync(request, presignedUrl: presignedUrl);
  }

  @override
  String hashPayloadSync(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) {
    if (presignedUrl || !signBody) {
      return unsignedPayloadHash;
    }
    if (_shouldChunk(request)) {
      return chunkedPayloadSeedHash;
    }
    return super.hashPayloadSync(request, presignedUrl: presignedUrl);
  }

  @override
  Stream<List<int>> transformBody({
    required AWSAlgorithm algorithm,
    required int contentLength,
    required List<int> signingKey,
    required String seedSignature,
    required AWSCredentialScope credentialScope,
    required CanonicalRequest canonicalRequest,
  }) async* {
    if (canonicalRequest.presignedUrl ||
        !signBody ||
        !_shouldChunk(canonicalRequest.request)) {
      yield* super.transformBody(
        algorithm: algorithm,
        contentLength: contentLength,
        signingKey: signingKey,
        seedSignature: seedSignature,
        credentialScope: credentialScope,
        canonicalRequest: canonicalRequest,
      );
      return;
    }

    final reader = ChunkedStreamReader(
      encoding == S3PayloadEncoding.none
          ? canonicalRequest.request.body
          : canonicalRequest.request.body.transform(encoding.encoding.encoder),
    );
    final decodedLength = contentLength;
    var previousSignature = seedSignature;
    var chunkedLength = 0;
    while (true) {
      final size = min(decodedLength - chunkedLength, chunkSize);
      final chunk = await reader.readBytes(size);
      final sb = StringBuffer()
        ..writeln('$algorithm-PAYLOAD')
        ..writeln(credentialScope.dateTime)
        ..writeln(credentialScope)
        ..writeln(previousSignature)
        ..writeln(emptyPayloadHash)
        ..write(payloadEncoder.convert(chunk));
      final stringToSign = sb.toString();

      final chunkSignature = algorithm.sign(stringToSign, signingKey);
      final bytes = BytesBuilder(copy: false)
        ..add(size.toRadixString(16).codeUnits)
        ..add(_sigSep)
        ..add(chunkSignature.codeUnits)
        ..add(_sep)
        ..add(chunk)
        ..add(_sep);
      yield bytes.takeBytes();

      previousSignature = chunkSignature;
      chunkedLength += size;

      if (size == 0) {
        break;
      }
    }
  }
}
