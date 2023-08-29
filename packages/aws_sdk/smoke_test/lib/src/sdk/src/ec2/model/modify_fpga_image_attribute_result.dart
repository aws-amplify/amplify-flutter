// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_fpga_image_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute.dart';

part 'modify_fpga_image_attribute_result.g.dart';

abstract class ModifyFpgaImageAttributeResult
    with
        _i1.AWSEquatable<ModifyFpgaImageAttributeResult>
    implements
        Built<ModifyFpgaImageAttributeResult,
            ModifyFpgaImageAttributeResultBuilder> {
  factory ModifyFpgaImageAttributeResult(
      {FpgaImageAttribute? fpgaImageAttribute}) {
    return _$ModifyFpgaImageAttributeResult._(
        fpgaImageAttribute: fpgaImageAttribute);
  }

  factory ModifyFpgaImageAttributeResult.build(
          [void Function(ModifyFpgaImageAttributeResultBuilder) updates]) =
      _$ModifyFpgaImageAttributeResult;

  const ModifyFpgaImageAttributeResult._();

  /// Constructs a [ModifyFpgaImageAttributeResult] from a [payload] and [response].
  factory ModifyFpgaImageAttributeResult.fromResponse(
    ModifyFpgaImageAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyFpgaImageAttributeResult>>
      serializers = [ModifyFpgaImageAttributeResultEc2QuerySerializer()];

  /// Information about the attribute.
  FpgaImageAttribute? get fpgaImageAttribute;
  @override
  List<Object?> get props => [fpgaImageAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyFpgaImageAttributeResult')
      ..add(
        'fpgaImageAttribute',
        fpgaImageAttribute,
      );
    return helper.toString();
  }
}

class ModifyFpgaImageAttributeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyFpgaImageAttributeResult> {
  const ModifyFpgaImageAttributeResultEc2QuerySerializer()
      : super('ModifyFpgaImageAttributeResult');

  @override
  Iterable<Type> get types => const [
        ModifyFpgaImageAttributeResult,
        _$ModifyFpgaImageAttributeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyFpgaImageAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyFpgaImageAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fpgaImageAttribute':
          result.fpgaImageAttribute.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FpgaImageAttribute),
          ) as FpgaImageAttribute));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyFpgaImageAttributeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyFpgaImageAttributeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyFpgaImageAttributeResult(:fpgaImageAttribute) = object;
    if (fpgaImageAttribute != null) {
      result$
        ..add(const _i2.XmlElementName('FpgaImageAttribute'))
        ..add(serializers.serialize(
          fpgaImageAttribute,
          specifiedType: const FullType(FpgaImageAttribute),
        ));
    }
    return result$;
  }
}
