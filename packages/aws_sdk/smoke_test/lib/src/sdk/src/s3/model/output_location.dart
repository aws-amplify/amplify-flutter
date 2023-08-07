// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.output_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/s3_location.dart';

part 'output_location.g.dart';

/// Describes the location where the restore job's output is stored.
abstract class OutputLocation
    with _i1.AWSEquatable<OutputLocation>
    implements Built<OutputLocation, OutputLocationBuilder> {
  /// Describes the location where the restore job's output is stored.
  factory OutputLocation({S3Location? s3}) {
    return _$OutputLocation._(s3: s3);
  }

  /// Describes the location where the restore job's output is stored.
  factory OutputLocation.build([void Function(OutputLocationBuilder) updates]) =
      _$OutputLocation;

  const OutputLocation._();

  static const List<_i2.SmithySerializer<OutputLocation>> serializers = [
    OutputLocationRestXmlSerializer()
  ];

  /// Describes an S3 location that will receive the results of the restore request.
  S3Location? get s3;
  @override
  List<Object?> get props => [s3];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OutputLocation')
      ..add(
        's3',
        s3,
      );
    return helper.toString();
  }
}

class OutputLocationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<OutputLocation> {
  const OutputLocationRestXmlSerializer() : super('OutputLocation');

  @override
  Iterable<Type> get types => const [
        OutputLocation,
        _$OutputLocation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  OutputLocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputLocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(S3Location),
          ) as S3Location));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OutputLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OutputLocation',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final OutputLocation(:s3) = object;
    if (s3 != null) {
      result$
        ..add(const _i2.XmlElementName('S3'))
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(S3Location),
        ));
    }
    return result$;
  }
}
