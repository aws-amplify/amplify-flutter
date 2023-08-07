// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.glacier_job_parameters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart';

part 'glacier_job_parameters.g.dart';

/// Container for S3 Glacier job parameters.
abstract class GlacierJobParameters
    with _i1.AWSEquatable<GlacierJobParameters>
    implements Built<GlacierJobParameters, GlacierJobParametersBuilder> {
  /// Container for S3 Glacier job parameters.
  factory GlacierJobParameters({required Tier tier}) {
    return _$GlacierJobParameters._(tier: tier);
  }

  /// Container for S3 Glacier job parameters.
  factory GlacierJobParameters.build(
          [void Function(GlacierJobParametersBuilder) updates]) =
      _$GlacierJobParameters;

  const GlacierJobParameters._();

  static const List<_i2.SmithySerializer<GlacierJobParameters>> serializers = [
    GlacierJobParametersRestXmlSerializer()
  ];

  /// Retrieval tier at which the restore will be processed.
  Tier get tier;
  @override
  List<Object?> get props => [tier];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlacierJobParameters')
      ..add(
        'tier',
        tier,
      );
    return helper.toString();
  }
}

class GlacierJobParametersRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GlacierJobParameters> {
  const GlacierJobParametersRestXmlSerializer() : super('GlacierJobParameters');

  @override
  Iterable<Type> get types => const [
        GlacierJobParameters,
        _$GlacierJobParameters,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GlacierJobParameters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlacierJobParametersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Tier':
          result.tier = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tier),
          ) as Tier);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlacierJobParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GlacierJobParameters',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GlacierJobParameters(:tier) = object;
    result$
      ..add(const _i2.XmlElementName('Tier'))
      ..add(serializers.serialize(
        tier,
        specifiedType: const FullType.nullable(Tier),
      ));
    return result$;
  }
}
