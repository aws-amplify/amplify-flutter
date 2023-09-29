// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.s3.model.copy_object_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/copy_object_result.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'copy_object_output.g.dart';

abstract class CopyObjectOutput
    with _i1.AWSEquatable<CopyObjectOutput>
    implements
        Built<CopyObjectOutput, CopyObjectOutputBuilder>,
        _i2.HasPayload<CopyObjectResult> {
  factory CopyObjectOutput({CopyObjectResult? copyObjectResult}) {
    return _$CopyObjectOutput._(copyObjectResult: copyObjectResult);
  }

  factory CopyObjectOutput.build(
      [void Function(CopyObjectOutputBuilder) updates]) = _$CopyObjectOutput;

  const CopyObjectOutput._();

  /// Constructs a [CopyObjectOutput] from a [payload] and [response].
  factory CopyObjectOutput.fromResponse(
    CopyObjectResult? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      CopyObjectOutput.build((b) {
        if (payload != null) {
          b.copyObjectResult.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<CopyObjectResult?>> serializers = [
    CopyObjectOutputRestXmlSerializer()
  ];

  CopyObjectResult? get copyObjectResult;
  @override
  CopyObjectResult? getPayload() => copyObjectResult ?? CopyObjectResult();

  @override
  List<Object?> get props => [copyObjectResult];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectOutput')
      ..add(
        'copyObjectResult',
        copyObjectResult,
      );
    return helper.toString();
  }
}

class CopyObjectOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CopyObjectResult> {
  const CopyObjectOutputRestXmlSerializer() : super('CopyObjectOutput');

  @override
  Iterable<Type> get types => const [
        CopyObjectOutput,
        _$CopyObjectOutput,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  CopyObjectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyObjectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ETag':
          result.eTag = (serializers.deserialize(
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
    CopyObjectResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CopyObjectResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CopyObjectResult(:eTag) = object;
    if (eTag != null) {
      result$
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
