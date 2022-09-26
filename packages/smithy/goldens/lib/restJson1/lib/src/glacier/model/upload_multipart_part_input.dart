// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.glacier.model.upload_multipart_part_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'upload_multipart_part_input.g.dart';

abstract class UploadMultipartPartInput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<UploadMultipartPartInput>
    implements
        Built<UploadMultipartPartInput, UploadMultipartPartInputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory UploadMultipartPartInput({
    required String accountId,
    _i2.Stream<List<int>>? body,
    String? checksum,
    String? range,
    required String uploadId,
    required String vaultName,
  }) {
    return _$UploadMultipartPartInput._(
      accountId: accountId,
      body: body,
      checksum: checksum,
      range: range,
      uploadId: uploadId,
      vaultName: vaultName,
    );
  }

  factory UploadMultipartPartInput.build(
          [void Function(UploadMultipartPartInputBuilder) updates]) =
      _$UploadMultipartPartInput;

  const UploadMultipartPartInput._();

  factory UploadMultipartPartInput.fromRequest(
    _i2.Stream<List<int>>? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UploadMultipartPartInput.build((b) {
        b.body = payload;
        if (request.headers['x-amz-sha256-tree-hash'] != null) {
          b.checksum = request.headers['x-amz-sha256-tree-hash']!;
        }
        if (request.headers['Content-Range'] != null) {
          b.range = request.headers['Content-Range']!;
        }
        if (labels['accountId'] != null) {
          b.accountId = labels['accountId']!;
        }
        if (labels['vaultName'] != null) {
          b.vaultName = labels['vaultName']!;
        }
        if (labels['uploadId'] != null) {
          b.uploadId = labels['uploadId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UploadMultipartPartInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadMultipartPartInputBuilder b) {}
  String get accountId;
  _i2.Stream<List<int>>? get body;
  String? get checksum;
  String? get range;
  String get uploadId;
  String get vaultName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'accountId':
        return accountId;
      case 'vaultName':
        return vaultName;
      case 'uploadId':
        return uploadId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props => [
        accountId,
        body,
        checksum,
        range,
        uploadId,
        vaultName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadMultipartPartInput');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'body',
      body,
    );
    helper.add(
      'checksum',
      checksum,
    );
    helper.add(
      'range',
      range,
    );
    helper.add(
      'uploadId',
      uploadId,
    );
    helper.add(
      'vaultName',
      vaultName,
    );
    return helper.toString();
  }
}

class UploadMultipartPartInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const UploadMultipartPartInputRestJson1Serializer()
      : super('UploadMultipartPartInput');

  @override
  Iterable<Type> get types => const [
        UploadMultipartPartInput,
        _$UploadMultipartPartInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is UploadMultipartPartInput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as Object);
  }
}
