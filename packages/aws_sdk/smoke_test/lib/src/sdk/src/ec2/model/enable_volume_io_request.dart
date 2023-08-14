// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_volume_io_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_volume_io_request.g.dart';

abstract class EnableVolumeIoRequest
    with
        _i1.HttpInput<EnableVolumeIoRequest>,
        _i2.AWSEquatable<EnableVolumeIoRequest>
    implements Built<EnableVolumeIoRequest, EnableVolumeIoRequestBuilder> {
  factory EnableVolumeIoRequest({
    bool? dryRun,
    String? volumeId,
  }) {
    dryRun ??= false;
    return _$EnableVolumeIoRequest._(
      dryRun: dryRun,
      volumeId: volumeId,
    );
  }

  factory EnableVolumeIoRequest.build(
          [void Function(EnableVolumeIoRequestBuilder) updates]) =
      _$EnableVolumeIoRequest;

  const EnableVolumeIoRequest._();

  factory EnableVolumeIoRequest.fromRequest(
    EnableVolumeIoRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<EnableVolumeIoRequest>> serializers = [
    EnableVolumeIoRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableVolumeIoRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the volume.
  String? get volumeId;
  @override
  EnableVolumeIoRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableVolumeIoRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'volumeId',
        volumeId,
      );
    return helper.toString();
  }
}

class EnableVolumeIoRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableVolumeIoRequest> {
  const EnableVolumeIoRequestEc2QuerySerializer()
      : super('EnableVolumeIoRequest');

  @override
  Iterable<Type> get types => const [
        EnableVolumeIoRequest,
        _$EnableVolumeIoRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableVolumeIoRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableVolumeIoRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnableVolumeIoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableVolumeIoRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableVolumeIoRequest(:dryRun, :volumeId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (volumeId != null) {
      result$
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
