// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_fpga_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_fpga_image_request.g.dart';

abstract class DeleteFpgaImageRequest
    with
        _i1.HttpInput<DeleteFpgaImageRequest>,
        _i2.AWSEquatable<DeleteFpgaImageRequest>
    implements Built<DeleteFpgaImageRequest, DeleteFpgaImageRequestBuilder> {
  factory DeleteFpgaImageRequest({
    bool? dryRun,
    String? fpgaImageId,
  }) {
    dryRun ??= false;
    return _$DeleteFpgaImageRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
    );
  }

  factory DeleteFpgaImageRequest.build(
          [void Function(DeleteFpgaImageRequestBuilder) updates]) =
      _$DeleteFpgaImageRequest;

  const DeleteFpgaImageRequest._();

  factory DeleteFpgaImageRequest.fromRequest(
    DeleteFpgaImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteFpgaImageRequest>> serializers =
      [DeleteFpgaImageRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFpgaImageRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String? get fpgaImageId;
  @override
  DeleteFpgaImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFpgaImageRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'fpgaImageId',
        fpgaImageId,
      );
    return helper.toString();
  }
}

class DeleteFpgaImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteFpgaImageRequest> {
  const DeleteFpgaImageRequestEc2QuerySerializer()
      : super('DeleteFpgaImageRequest');

  @override
  Iterable<Type> get types => const [
        DeleteFpgaImageRequest,
        _$DeleteFpgaImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFpgaImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFpgaImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'FpgaImageId':
          result.fpgaImageId = (serializers.deserialize(
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
    DeleteFpgaImageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteFpgaImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteFpgaImageRequest(:dryRun, :fpgaImageId) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (fpgaImageId != null) {
      result$
        ..add(const _i1.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          fpgaImageId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
