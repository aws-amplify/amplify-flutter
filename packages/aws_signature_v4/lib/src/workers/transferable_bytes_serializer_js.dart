// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_signature_v4/src/workers/transferable_bytes_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@template aws_signature_v4.workers.transferable_bytes_serializer_js}
/// On Web, we transfer the underlying buffer to avoid a copy by adding the
/// buffer to the worker bee's transferable array.
///
/// In effect, we end up doing this:
/// https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects#transferring_objects_between_threads
/// {@endtemplate}
class TransferableBytesSerializerImpl extends TransferableBytesSerializer {
  /// {@macro aws_signature_v4.workers.transferable_bytes_serializer_js}
  const TransferableBytesSerializerImpl() : super.protected();

  @override
  Object serialize(
    Serializers serializers,
    Uint8List bytes, {
    FullType specifiedType = FullType.unspecified,
  }) {
    WorkerBee.transfer(bytes.buffer);
    return bytes;
  }

  @override
  Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serialized as Uint8List;
  }
}
