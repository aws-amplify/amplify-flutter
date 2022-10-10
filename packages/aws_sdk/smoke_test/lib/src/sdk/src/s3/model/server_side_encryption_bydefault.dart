// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.s3.model.server_side_encryption_bydefault; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i2;

part 'server_side_encryption_bydefault.g.dart';

/// Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates an Amazon Web Services KMS key in your Amazon Web Services account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more information, see [PUT Bucket encryption](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html) in the _Amazon S3 API Reference_.
abstract class ServerSideEncryptionBydefault
    with
        _i1.AWSEquatable<ServerSideEncryptionBydefault>
    implements
        Built<ServerSideEncryptionBydefault,
            ServerSideEncryptionBydefaultBuilder> {
  /// Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates an Amazon Web Services KMS key in your Amazon Web Services account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more information, see [PUT Bucket encryption](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html) in the _Amazon S3 API Reference_.
  factory ServerSideEncryptionBydefault({
    String? kmsMasterKeyId,
    required _i2.ServerSideEncryption sseAlgorithm,
  }) {
    return _$ServerSideEncryptionBydefault._(
      kmsMasterKeyId: kmsMasterKeyId,
      sseAlgorithm: sseAlgorithm,
    );
  }

  /// Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates an Amazon Web Services KMS key in your Amazon Web Services account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more information, see [PUT Bucket encryption](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html) in the _Amazon S3 API Reference_.
  factory ServerSideEncryptionBydefault.build(
          [void Function(ServerSideEncryptionBydefaultBuilder) updates]) =
      _$ServerSideEncryptionBydefault;

  const ServerSideEncryptionBydefault._();

  static const List<_i3.SmithySerializer> serializers = [
    ServerSideEncryptionBydefaultRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerSideEncryptionBydefaultBuilder b) {}

  /// Amazon Web Services Key Management Service (KMS) customer Amazon Web Services KMS key ID to use for the default encryption. This parameter is allowed if and only if `SSEAlgorithm` is set to `aws:kms`.
  ///
  /// You can specify the key ID or the Amazon Resource Name (ARN) of the KMS key. However, if you are using encryption with cross-account or Amazon Web Services service operations you must use a fully qualified KMS key ARN. For more information, see [Using encryption for cross-account operations](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html#bucket-encryption-update-bucket-policy).
  ///
  /// **For example:**
  ///
  /// *   Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
  ///
  /// *   Key ARN: `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
  ///
  ///
  /// Amazon S3 only supports symmetric KMS keys and not asymmetric KMS keys. For more information, see [Using symmetric and asymmetric keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html) in the _Amazon Web Services Key Management Service Developer Guide_.
  String? get kmsMasterKeyId;

  /// Server-side encryption algorithm to use for the default encryption.
  _i2.ServerSideEncryption get sseAlgorithm;
  @override
  List<Object?> get props => [
        kmsMasterKeyId,
        sseAlgorithm,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServerSideEncryptionBydefault');
    helper.add(
      'kmsMasterKeyId',
      '***SENSITIVE***',
    );
    helper.add(
      'sseAlgorithm',
      sseAlgorithm,
    );
    return helper.toString();
  }
}

class ServerSideEncryptionBydefaultRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ServerSideEncryptionBydefault> {
  const ServerSideEncryptionBydefaultRestXmlSerializer()
      : super('ServerSideEncryptionBydefault');

  @override
  Iterable<Type> get types => const [
        ServerSideEncryptionBydefault,
        _$ServerSideEncryptionBydefault,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ServerSideEncryptionBydefault deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSideEncryptionBydefaultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'KMSMasterKeyID':
          if (value != null) {
            result.kmsMasterKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SSEAlgorithm':
          result.sseAlgorithm = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ServerSideEncryption),
          ) as _i2.ServerSideEncryption);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ServerSideEncryptionBydefault);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ServerSideEncryptionBydefault',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.kmsMasterKeyId != null) {
      result
        ..add(const _i3.XmlElementName('KMSMasterKeyID'))
        ..add(serializers.serialize(
          payload.kmsMasterKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('SSEAlgorithm'))
      ..add(serializers.serialize(
        payload.sseAlgorithm,
        specifiedType: const FullType.nullable(_i2.ServerSideEncryption),
      ));
    return result;
  }
}
