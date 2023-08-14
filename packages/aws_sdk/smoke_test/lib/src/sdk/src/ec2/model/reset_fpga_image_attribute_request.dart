// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_fpga_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_name.dart';

part 'reset_fpga_image_attribute_request.g.dart';

abstract class ResetFpgaImageAttributeRequest
    with
        _i1.HttpInput<ResetFpgaImageAttributeRequest>,
        _i2.AWSEquatable<ResetFpgaImageAttributeRequest>
    implements
        Built<ResetFpgaImageAttributeRequest,
            ResetFpgaImageAttributeRequestBuilder> {
  factory ResetFpgaImageAttributeRequest({
    bool? dryRun,
    String? fpgaImageId,
    ResetFpgaImageAttributeName? attribute,
  }) {
    dryRun ??= false;
    return _$ResetFpgaImageAttributeRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
      attribute: attribute,
    );
  }

  factory ResetFpgaImageAttributeRequest.build(
          [void Function(ResetFpgaImageAttributeRequestBuilder) updates]) =
      _$ResetFpgaImageAttributeRequest;

  const ResetFpgaImageAttributeRequest._();

  factory ResetFpgaImageAttributeRequest.fromRequest(
    ResetFpgaImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResetFpgaImageAttributeRequest>>
      serializers = [ResetFpgaImageAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetFpgaImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String? get fpgaImageId;

  /// The attribute.
  ResetFpgaImageAttributeName? get attribute;
  @override
  ResetFpgaImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
        attribute,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetFpgaImageAttributeRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'fpgaImageId',
        fpgaImageId,
      )
      ..add(
        'attribute',
        attribute,
      );
    return helper.toString();
  }
}

class ResetFpgaImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetFpgaImageAttributeRequest> {
  const ResetFpgaImageAttributeRequestEc2QuerySerializer()
      : super('ResetFpgaImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetFpgaImageAttributeRequest,
        _$ResetFpgaImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetFpgaImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetFpgaImageAttributeRequestBuilder();
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
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(ResetFpgaImageAttributeName),
          ) as ResetFpgaImageAttributeName);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResetFpgaImageAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ResetFpgaImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResetFpgaImageAttributeRequest(:dryRun, :fpgaImageId, :attribute) =
        object;
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
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType.nullable(ResetFpgaImageAttributeName),
        ));
    }
    return result$;
  }
}
