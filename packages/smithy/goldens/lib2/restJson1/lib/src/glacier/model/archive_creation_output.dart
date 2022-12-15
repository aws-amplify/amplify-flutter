// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? archiveId,
    String? checksum,
    String? location,
  }) {
    return _$ArchiveCreationOutput._(
      archiveId: archiveId,
      checksum: checksum,
      location: location,
    );
  }

  factory ArchiveCreationOutput.build(
          [void Function(ArchiveCreationOutputBuilder) updates]) =
      _$ArchiveCreationOutput;

  const ArchiveCreationOutput._();

  /// Constructs a [ArchiveCreationOutput] from a [payload] and [response].
  factory ArchiveCreationOutput.fromResponse(
    ArchiveCreationOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      ArchiveCreationOutput.build((b) {
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

  static const List<_i2.SmithySerializer> serializers = [
    ArchiveCreationOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ArchiveCreationOutputBuilder b) {}
  String? get archiveId;
  String? get checksum;
  String? get location;
  @override
  ArchiveCreationOutputPayload getPayload() => ArchiveCreationOutputPayload();
  @override
  List<Object?> get props => [
        archiveId,
        checksum,
        location,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ArchiveCreationOutput');
    helper.add(
      'archiveId',
      archiveId,
    );
    helper.add(
      'checksum',
      checksum,
    );
    helper.add(
      'location',
      location,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class ArchiveCreationOutputPayload
    with
        _i1.AWSEquatable<ArchiveCreationOutputPayload>
    implements
        Built<ArchiveCreationOutputPayload,
            ArchiveCreationOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory ArchiveCreationOutputPayload(
          [void Function(ArchiveCreationOutputPayloadBuilder) updates]) =
      _$ArchiveCreationOutputPayload;

  const ArchiveCreationOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ArchiveCreationOutputPayloadBuilder b) {}
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
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
