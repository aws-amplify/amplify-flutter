// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_image_attribute_name.dart';

part 'reset_image_attribute_request.g.dart';

/// Contains the parameters for ResetImageAttribute.
abstract class ResetImageAttributeRequest
    with
        _i1.HttpInput<ResetImageAttributeRequest>,
        _i2.AWSEquatable<ResetImageAttributeRequest>
    implements
        Built<ResetImageAttributeRequest, ResetImageAttributeRequestBuilder> {
  /// Contains the parameters for ResetImageAttribute.
  factory ResetImageAttributeRequest({
    ResetImageAttributeName? attribute,
    String? imageId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ResetImageAttributeRequest._(
      attribute: attribute,
      imageId: imageId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for ResetImageAttribute.
  factory ResetImageAttributeRequest.build(
          [void Function(ResetImageAttributeRequestBuilder) updates]) =
      _$ResetImageAttributeRequest;

  const ResetImageAttributeRequest._();

  factory ResetImageAttributeRequest.fromRequest(
    ResetImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResetImageAttributeRequest>>
      serializers = [ResetImageAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The attribute to reset (currently you can only reset the launch permission attribute).
  ResetImageAttributeName? get attribute;

  /// The ID of the AMI.
  String? get imageId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ResetImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        imageId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetImageAttributeRequest')
      ..add(
        'attribute',
        attribute,
      )
      ..add(
        'imageId',
        imageId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ResetImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetImageAttributeRequest> {
  const ResetImageAttributeRequestEc2QuerySerializer()
      : super('ResetImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetImageAttributeRequest,
        _$ResetImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetImageAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(ResetImageAttributeName),
          ) as ResetImageAttributeName);
        case 'ImageId':
          result.imageId = (serializers.deserialize(
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
    ResetImageAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ResetImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResetImageAttributeRequest(:attribute, :imageId, :dryRun) = object;
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType.nullable(ResetImageAttributeName),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
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
