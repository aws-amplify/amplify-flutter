// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library workers.hash_worker;

import 'dart:async';
import 'dart:typed_data';

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:aws_signature_v4/src/workers/hash_worker.worker.dart';
import 'package:aws_signature_v4/src/workers/transferable_bytes_serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:worker_bee/worker_bee.dart';

part 'hash_worker.g.dart';

/// {@template aws_signature_v4.workers.hash_worker_request}
/// A request to hash a chunk.
/// {@endtemplate}
abstract class HashWorkerRequest
    implements Built<HashWorkerRequest, HashWorkerRequestBuilder> {
  /// {@macro aws_signature_v4.workers.hash_worker_request}
  factory HashWorkerRequest([void Function(HashWorkerRequestBuilder) updates]) =
      _$HashWorkerRequest;
  HashWorkerRequest._();

  /// A unique identifier for the request, used to correlate a returned
  /// [HashWorkerResponse].
  int get id;

  /// The chunk to hash.
  Uint8List get chunk;

  /// The serializer for [HashWorkerRequest].
  static Serializer<HashWorkerRequest> get serializer =>
      _$hashWorkerRequestSerializer;
}

/// {@template aws_signature_v4.workers.hash_worker_response}
/// A response to hashing a chunk.
/// {@endtemplate}
abstract class HashWorkerResponse
    implements Built<HashWorkerResponse, HashWorkerResponseBuilder> {
  /// {@macro aws_signature_v4.workers.hash_worker_response}
  factory HashWorkerResponse([
    void Function(HashWorkerResponseBuilder) updates,
  ]) = _$HashWorkerResponse;
  HashWorkerResponse._();

  /// The ID for the corresponding [HashWorkerRequest].
  int get id;

  /// The chunk which was hashed and is being transferred back to the
  /// originating thread.
  Uint8List get chunk;

  /// The hash of [chunk].
  String get hash;

  /// The serializer for [HashWorkerResponse].
  static Serializer<HashWorkerResponse> get serializer =>
      _$hashWorkerResponseSerializer;
}

/// {@template aws_signature_v4.workers.hash_worker}
/// A worker which hashes chunks of bytes using [payloadEncoder].
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
abstract class HashWorker
    extends WorkerBeeBase<HashWorkerRequest, HashWorkerResponse> {
  /// {@macro aws_signature_v4.workers.hash_worker}
  HashWorker() : super(serializers: _serializers);

  /// {@macro aws_signature_v4.workers.hash_worker}
  factory HashWorker.create() = HashWorkerImpl;

  @override
  Future<HashWorkerResponse?> run(
    Stream<HashWorkerRequest> listen,
    StreamSink<HashWorkerResponse> respond,
  ) async {
    await for (final request in listen) {
      respond.add(
        HashWorkerResponse(
          (b) => b
            ..chunk = request.chunk
            ..hash = payloadEncoder.convert(request.chunk)
            ..id = request.id,
        ),
      );
    }
    return null;
  }
}

@SerializersFor([
  HashWorkerRequest,
  HashWorkerResponse,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..add(const TransferableBytesSerializer()))
    .build();
