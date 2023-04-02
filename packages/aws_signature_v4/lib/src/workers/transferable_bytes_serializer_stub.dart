// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_signature_v4/src/workers/transferable_bytes_serializer.dart';
import 'package:built_value/serializer.dart';

/// {@macro aws_signature_v4.workers.transferable_byte_serializer}
class TransferableBytesSerializerImpl extends TransferableBytesSerializer {
  /// {@macro aws_signature_v4.workers.transferable_byte_serializer}
  const TransferableBytesSerializerImpl() : super.protected();

  @override
  Object serialize(
    Serializers serializers,
    Uint8List bytes, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw UnimplementedError(
      'This platform does not support transferring bytes',
    );
  }

  @override
  Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw UnimplementedError(
      'This platform does not support transferring bytes',
    );
  }
}
