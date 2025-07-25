// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v2.glacier.model.archive_creation_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'archive_creation_output.g.dart';

abstract class ArchiveCreationOutput
    with _i1.AWSEquatable<ArchiveCreationOutput>
    implements
        Built<ArchiveCreationOutput, ArchiveCreationOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<ArchiveCreationOutputPayload> {
  factory ArchiveCreationOutput({
    String? location,
    String? checksum,
    String? archiveId,
  }) {
    return _$ArchiveCreationOutput._(
      location: location,
      checksum: checksum,
      archiveId: archiveId,
    );
  }

  factory ArchiveCreationOutput.build([
    void Function(ArchiveCreationOutputBuilder) updates,
  ]) = _$ArchiveCreationOutput;

  const ArchiveCreationOutput._();

  /// Constructs a [ArchiveCreationOutput] from a [payload] and [response].
  factory ArchiveCreationOutput.fromResponse(
    ArchiveCreationOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) => ArchiveCreationOutput.build((b) {
    if (response.headers['Location'] != null) {
      b.location = response.headers['Location']!;
    }
    if (response.headers['x-amz-sha256-tree-hash'] != null) {
      b.checksum = response.headers['x-amz-sha256-tree-hash']!;
    }
    if (response.headers['x-amz-archive-id'] != null) {
      b.archiveId = response.headers['x-amz-archive-id']!;
    }
  });

  static const List<_i2.SmithySerializer<ArchiveCreationOutputPayload>>
  serializers = [ArchiveCreationOutputRestJson1Serializer()];

  String? get location;
  String? get checksum;
  String? get archiveId;
  @override
  ArchiveCreationOutputPayload getPayload() => ArchiveCreationOutputPayload();

  @override
  List<Object?> get props => [location, checksum, archiveId];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ArchiveCreationOutput')
      ..add('location', location)
      ..add('checksum', checksum)
      ..add('archiveId', archiveId);
    return helper.toString();
  }
}

@_i3.internal
abstract class ArchiveCreationOutputPayload
    with _i1.AWSEquatable<ArchiveCreationOutputPayload>
    implements
        Built<
          ArchiveCreationOutputPayload,
          ArchiveCreationOutputPayloadBuilder
        >,
        _i2.EmptyPayload {
  factory ArchiveCreationOutputPayload([
    void Function(ArchiveCreationOutputPayloadBuilder) updates,
  ]) = _$ArchiveCreationOutputPayload;

  const ArchiveCreationOutputPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ArchiveCreationOutputPayload');
    return helper.toString();
  }
}

class ArchiveCreationOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ArchiveCreationOutputPayload> {
  const ArchiveCreationOutputRestJson1Serializer()
    : super('ArchiveCreationOutput');

  @override
  Iterable<Type> get types => const [
    ArchiveCreationOutput,
    _$ArchiveCreationOutput,
    ArchiveCreationOutputPayload,
    _$ArchiveCreationOutputPayload,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  ArchiveCreationOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ArchiveCreationOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ArchiveCreationOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) => const <Object?>[];
}
