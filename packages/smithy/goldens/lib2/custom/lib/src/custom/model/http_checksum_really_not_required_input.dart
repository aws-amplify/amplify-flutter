// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library custom_v2.custom.model.http_checksum_really_not_required_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/model/checksum_algorithm.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_checksum_really_not_required_input.g.dart';

abstract class HttpChecksumReallyNotRequiredInput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<HttpChecksumReallyNotRequiredInput>
    implements
        Built<
          HttpChecksumReallyNotRequiredInput,
          HttpChecksumReallyNotRequiredInputBuilder
        >,
        _i1.HasPayload<_i2.Uint8List> {
  factory HttpChecksumReallyNotRequiredInput({
    ChecksumAlgorithm? checksumAlgorithm,
    _i2.Uint8List? content,
  }) {
    return _$HttpChecksumReallyNotRequiredInput._(
      checksumAlgorithm: checksumAlgorithm,
      content: content,
    );
  }

  factory HttpChecksumReallyNotRequiredInput.build([
    void Function(HttpChecksumReallyNotRequiredInputBuilder) updates,
  ]) = _$HttpChecksumReallyNotRequiredInput;

  const HttpChecksumReallyNotRequiredInput._();

  factory HttpChecksumReallyNotRequiredInput.fromRequest(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => HttpChecksumReallyNotRequiredInput.build((b) {
    b.content = payload;
    if (request.headers['x-amz-request-algorithm'] != null) {
      b.checksumAlgorithm = ChecksumAlgorithm.values.byValue(
        request.headers['x-amz-request-algorithm']!,
      );
    }
  });

  static const List<_i1.SmithySerializer<_i2.Uint8List?>> serializers = [
    HttpChecksumReallyNotRequiredInputRestJson1Serializer(),
  ];

  ChecksumAlgorithm? get checksumAlgorithm;
  _i2.Uint8List? get content;
  @override
  _i2.Uint8List? getPayload() => content;

  @override
  List<Object?> get props => [checksumAlgorithm, content];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpChecksumReallyNotRequiredInput')
          ..add('checksumAlgorithm', checksumAlgorithm)
          ..add('content', content);
    return helper.toString();
  }
}

class HttpChecksumReallyNotRequiredInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const HttpChecksumReallyNotRequiredInputRestJson1Serializer()
    : super('HttpChecksumReallyNotRequiredInput');

  @override
  Iterable<Type> get types => const [
    HttpChecksumReallyNotRequiredInput,
    _$HttpChecksumReallyNotRequiredInput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  _i2.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
          serialized,
          specifiedType: const FullType(_i2.Uint8List),
        )
        as _i2.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i2.Uint8List),
    )!;
  }
}
