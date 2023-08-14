// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fpga_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute_name.dart';

part 'describe_fpga_image_attribute_request.g.dart';

abstract class DescribeFpgaImageAttributeRequest
    with
        _i1.HttpInput<DescribeFpgaImageAttributeRequest>,
        _i2.AWSEquatable<DescribeFpgaImageAttributeRequest>
    implements
        Built<DescribeFpgaImageAttributeRequest,
            DescribeFpgaImageAttributeRequestBuilder> {
  factory DescribeFpgaImageAttributeRequest({
    bool? dryRun,
    String? fpgaImageId,
    FpgaImageAttributeName? attribute,
  }) {
    dryRun ??= false;
    return _$DescribeFpgaImageAttributeRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
      attribute: attribute,
    );
  }

  factory DescribeFpgaImageAttributeRequest.build(
          [void Function(DescribeFpgaImageAttributeRequestBuilder) updates]) =
      _$DescribeFpgaImageAttributeRequest;

  const DescribeFpgaImageAttributeRequest._();

  factory DescribeFpgaImageAttributeRequest.fromRequest(
    DescribeFpgaImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeFpgaImageAttributeRequest>>
      serializers = [DescribeFpgaImageAttributeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFpgaImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String? get fpgaImageId;

  /// The AFI attribute.
  FpgaImageAttributeName? get attribute;
  @override
  DescribeFpgaImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
        attribute,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFpgaImageAttributeRequest')
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

class DescribeFpgaImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFpgaImageAttributeRequest> {
  const DescribeFpgaImageAttributeRequestEc2QuerySerializer()
      : super('DescribeFpgaImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFpgaImageAttributeRequest,
        _$DescribeFpgaImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFpgaImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFpgaImageAttributeRequestBuilder();
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
            specifiedType: const FullType(FpgaImageAttributeName),
          ) as FpgaImageAttributeName);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFpgaImageAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeFpgaImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFpgaImageAttributeRequest(:dryRun, :fpgaImageId, :attribute) =
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
          specifiedType: const FullType.nullable(FpgaImageAttributeName),
        ));
    }
    return result$;
  }
}
