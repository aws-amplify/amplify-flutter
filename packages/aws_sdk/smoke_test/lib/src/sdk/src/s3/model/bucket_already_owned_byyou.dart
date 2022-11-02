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

library smoke_test.s3.model.bucket_already_owned_byyou; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'bucket_already_owned_byyou.g.dart';

/// The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
abstract class BucketAlreadyOwnedByyou
    with _i1.AWSEquatable<BucketAlreadyOwnedByyou>
    implements
        Built<BucketAlreadyOwnedByyou, BucketAlreadyOwnedByyouBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
  factory BucketAlreadyOwnedByyou() {
    return _$BucketAlreadyOwnedByyou._();
  }

  /// The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).
  factory BucketAlreadyOwnedByyou.build(
          [void Function(BucketAlreadyOwnedByyouBuilder) updates]) =
      _$BucketAlreadyOwnedByyou;

  const BucketAlreadyOwnedByyou._();

  /// Constructs a [BucketAlreadyOwnedByyou] from a [payload] and [response].
  factory BucketAlreadyOwnedByyou.fromResponse(
    BucketAlreadyOwnedByyou payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    BucketAlreadyOwnedByyouRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketAlreadyOwnedByyouBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'BucketAlreadyOwnedByYou',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BucketAlreadyOwnedByyou');
    return helper.toString();
  }
}

class BucketAlreadyOwnedByyouRestXmlSerializer
    extends _i2.StructuredSmithySerializer<BucketAlreadyOwnedByyou> {
  const BucketAlreadyOwnedByyouRestXmlSerializer()
      : super('BucketAlreadyOwnedByyou');

  @override
  Iterable<Type> get types => const [
        BucketAlreadyOwnedByyou,
        _$BucketAlreadyOwnedByyou,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketAlreadyOwnedByyou deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return BucketAlreadyOwnedByyouBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'BucketAlreadyOwnedByyou',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
