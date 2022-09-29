// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.parquet_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'parquet_input.g.dart';

/// Container for Parquet.
abstract class ParquetInput
    with _i1.AWSEquatable<ParquetInput>
    implements Built<ParquetInput, ParquetInputBuilder>, _i2.EmptyPayload {
  /// Container for Parquet.
  factory ParquetInput() {
    return _$ParquetInput._();
  }

  /// Container for Parquet.
  factory ParquetInput.build([void Function(ParquetInputBuilder) updates]) =
      _$ParquetInput;

  const ParquetInput._();

  static const List<_i2.SmithySerializer> serializers = [
    ParquetInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ParquetInputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ParquetInput');
    return helper.toString();
  }
}

class ParquetInputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ParquetInput> {
  const ParquetInputRestXmlSerializer() : super('ParquetInput');

  @override
  Iterable<Type> get types => const [
        ParquetInput,
        _$ParquetInput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ParquetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ParquetInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'ParquetInput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
