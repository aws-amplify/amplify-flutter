// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_fpga_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_fpga_image_result.g.dart';

abstract class CreateFpgaImageResult
    with _i1.AWSEquatable<CreateFpgaImageResult>
    implements Built<CreateFpgaImageResult, CreateFpgaImageResultBuilder> {
  factory CreateFpgaImageResult({
    String? fpgaImageId,
    String? fpgaImageGlobalId,
  }) {
    return _$CreateFpgaImageResult._(
      fpgaImageId: fpgaImageId,
      fpgaImageGlobalId: fpgaImageGlobalId,
    );
  }

  factory CreateFpgaImageResult.build(
          [void Function(CreateFpgaImageResultBuilder) updates]) =
      _$CreateFpgaImageResult;

  const CreateFpgaImageResult._();

  /// Constructs a [CreateFpgaImageResult] from a [payload] and [response].
  factory CreateFpgaImageResult.fromResponse(
    CreateFpgaImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateFpgaImageResult>> serializers = [
    CreateFpgaImageResultEc2QuerySerializer()
  ];

  /// The FPGA image identifier (AFI ID).
  String? get fpgaImageId;

  /// The global FPGA image identifier (AGFI ID).
  String? get fpgaImageGlobalId;
  @override
  List<Object?> get props => [
        fpgaImageId,
        fpgaImageGlobalId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFpgaImageResult')
      ..add(
        'fpgaImageId',
        fpgaImageId,
      )
      ..add(
        'fpgaImageGlobalId',
        fpgaImageGlobalId,
      );
    return helper.toString();
  }
}

class CreateFpgaImageResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateFpgaImageResult> {
  const CreateFpgaImageResultEc2QuerySerializer()
      : super('CreateFpgaImageResult');

  @override
  Iterable<Type> get types => const [
        CreateFpgaImageResult,
        _$CreateFpgaImageResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFpgaImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFpgaImageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fpgaImageId':
          result.fpgaImageId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fpgaImageGlobalId':
          result.fpgaImageGlobalId = (serializers.deserialize(
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
    CreateFpgaImageResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateFpgaImageResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateFpgaImageResult(:fpgaImageId, :fpgaImageGlobalId) = object;
    if (fpgaImageId != null) {
      result$
        ..add(const _i2.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          fpgaImageId,
          specifiedType: const FullType(String),
        ));
    }
    if (fpgaImageGlobalId != null) {
      result$
        ..add(const _i2.XmlElementName('FpgaImageGlobalId'))
        ..add(serializers.serialize(
          fpgaImageGlobalId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
