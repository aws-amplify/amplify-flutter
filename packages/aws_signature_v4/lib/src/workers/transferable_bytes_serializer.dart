// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library workers.transferable_bytes_serializer;

import 'dart:typed_data';

import 'package:aws_signature_v4/src/workers/transferable_bytes_serializer_stub.dart'
    if (dart.library.io) 'transferable_bytes_serializer_vm.dart'
    if (dart.library.js_util) 'transferable_bytes_serializer_js.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

/// {@template aws_signature_v4.workers.transferable_byte_serializer}
/// A built_value serializer which can serialize and deserialize [Uint8List].
///
/// On Web, a [Uint8List] is transferred to its destination without copying.
/// On VM, no such mechanism exists, so we must make a copy.
/// {@endtemplate}
abstract class TransferableBytesSerializer
    implements PrimitiveSerializer<Uint8List> {
  /// {@macro aws_signature_v4.workers.transferable_byte_serializer}
  const factory TransferableBytesSerializer() = TransferableBytesSerializerImpl;

  /// {@macro aws_signature_v4.workers.transferable_byte_serializer}
  const TransferableBytesSerializer.protected();

  @override
  Iterable<Type> get types => const [Uint8List];

  @override
  String get wireName => 'Uint8List';
}
