// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.glacier.model.upload_archive_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'upload_archive_input.g.dart';

abstract class UploadArchiveInput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<UploadArchiveInput>
    implements
        Built<UploadArchiveInput, UploadArchiveInputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory UploadArchiveInput(
      {required String accountId,
      String? archiveDescription,
      _i2.Stream<List<int>>? body,
      String? checksum,
      required String vaultName}) {
    return _$UploadArchiveInput._(
        accountId: accountId,
        archiveDescription: archiveDescription,
        body: body,
        checksum: checksum,
        vaultName: vaultName);
  }

  factory UploadArchiveInput.build(
          [void Function(UploadArchiveInputBuilder) updates]) =
      _$UploadArchiveInput;

  const UploadArchiveInput._();

  factory UploadArchiveInput.fromRequest(
          _i2.Stream<List<int>>? payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      UploadArchiveInput.build((b) {
        b.body = payload;
        if (request.headers['x-amz-archive-description'] != null) {
          b.archiveDescription = request.headers['x-amz-archive-description']!;
        }
        if (request.headers['x-amz-sha256-tree-hash'] != null) {
          b.checksum = request.headers['x-amz-sha256-tree-hash']!;
        }
        if (labels['vaultName'] != null) {
          b.vaultName = labels['vaultName']!;
        }
        if (labels['accountId'] != null) {
          b.accountId = labels['accountId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UploadArchiveInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadArchiveInputBuilder b) {}
  String get accountId;
  String? get archiveDescription;
  _i2.Stream<List<int>>? get body;
  String? get checksum;
  String get vaultName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'vaultName':
        return vaultName;
      case 'accountId':
        return accountId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props =>
      [accountId, archiveDescription, body, checksum, vaultName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadArchiveInput');
    helper.add('accountId', accountId);
    helper.add('archiveDescription', archiveDescription);
    helper.add('body', body);
    helper.add('checksum', checksum);
    helper.add('vaultName', vaultName);
    return helper.toString();
  }
}

class UploadArchiveInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const UploadArchiveInputRestJson1Serializer() : super('UploadArchiveInput');

  @override
  Iterable<Type> get types => const [UploadArchiveInput, _$UploadArchiveInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Stream<List<int>> deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UploadArchiveInput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}
