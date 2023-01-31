// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:isolate';
import 'dart:typed_data';

import 'package:aws_signature_v4/src/workers/transferable_bytes_serializer.dart';
import 'package:built_value/serializer.dart';

/// {@template aws_signature_v4.workers.transferable_bytes_serializer_vm}
/// On VM, there is no way to transfer the byte array in O(1) time, so we have
/// to copy it.
///
/// We use [TransferableTypedData] even though it requires making a copy
/// because it saves on the return trip (worker -> main).
///
/// See more discussion here:
/// - https://github.com/dart-lang/sdk/issues/50277
/// - https://github.com/dart-lang/sdk/issues/49587
/// {@endtemplate}
class TransferableBytesSerializerImpl extends TransferableBytesSerializer {
  /// {@macro aws_signature_v4.workers.transferable_bytes_serializer_vm}
  const TransferableBytesSerializerImpl() : super.protected();

  @override
  Object serialize(
    Serializers serializers,
    Uint8List bytes, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return TransferableTypedData.fromList([bytes]);
  }

  @override
  Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serialized as TransferableTypedData).materialize().asUint8List();
  }
}
