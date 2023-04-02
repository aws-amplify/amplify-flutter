// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library request.chunk_hash;

import 'dart:typed_data';

import 'package:aws_signature_v4/src/request/canonical_request/canonical_request.dart';
import 'package:meta/meta.dart';

/// {@template aws_signature_v4.request.chunk_hash}
/// A tuple of a byte chunk and its corresponding hash, calculated with
/// [payloadEncoder].
/// {@endtemplate}
class ChunkHash {
  /// {@macro aws_signature_v4.request.chunk_hash}
  const ChunkHash(this.chunk, this.hash);

  /// The hashed chunk of bytes.
  final Uint8List chunk;

  /// The hash of [chunk], calculated with [payloadEncoder].
  final String hash;
}
