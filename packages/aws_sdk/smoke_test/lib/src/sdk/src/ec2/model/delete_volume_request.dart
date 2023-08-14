// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_volume_request.g.dart';

abstract class DeleteVolumeRequest
    with
        _i1.HttpInput<DeleteVolumeRequest>,
        _i2.AWSEquatable<DeleteVolumeRequest>
    implements Built<DeleteVolumeRequest, DeleteVolumeRequestBuilder> {
  factory DeleteVolumeRequest({
    String? volumeId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteVolumeRequest._(
      volumeId: volumeId,
      dryRun: dryRun,
    );
  }

  factory DeleteVolumeRequest.build(
          [void Function(DeleteVolumeRequestBuilder) updates]) =
      _$DeleteVolumeRequest;

  const DeleteVolumeRequest._();

  factory DeleteVolumeRequest.fromRequest(
    DeleteVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVolumeRequest>> serializers = [
    DeleteVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVolumeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the volume.
  String? get volumeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        volumeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVolumeRequest')
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVolumeRequest> {
  const DeleteVolumeRequestEc2QuerySerializer() : super('DeleteVolumeRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVolumeRequest,
        _$DeleteVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteVolumeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVolumeRequest(:volumeId, :dryRun) = object;
    if (volumeId != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
