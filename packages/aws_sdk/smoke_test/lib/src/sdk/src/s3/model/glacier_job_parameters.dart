// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.glacier_job_parameters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/tier.dart' as _i2;

part 'glacier_job_parameters.g.dart';

/// Container for S3 Glacier job parameters.
abstract class GlacierJobParameters
    with _i1.AWSEquatable<GlacierJobParameters>
    implements Built<GlacierJobParameters, GlacierJobParametersBuilder> {
  /// Container for S3 Glacier job parameters.
  factory GlacierJobParameters({required _i2.Tier tier}) {
    return _$GlacierJobParameters._(tier: tier);
  }

  /// Container for S3 Glacier job parameters.
  factory GlacierJobParameters.build(
          [void Function(GlacierJobParametersBuilder) updates]) =
      _$GlacierJobParameters;

  const GlacierJobParameters._();

  static const List<_i3.SmithySerializer> serializers = [
    GlacierJobParametersRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlacierJobParametersBuilder b) {}

  /// Retrieval tier at which the restore will be processed.
  _i2.Tier get tier;
  @override
  List<Object?> get props => [tier];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlacierJobParameters');
    helper.add(
      'tier',
      tier,
    );
    return helper.toString();
  }
}

class GlacierJobParametersRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GlacierJobParameters> {
  const GlacierJobParametersRestXmlSerializer() : super('GlacierJobParameters');

  @override
  Iterable<Type> get types => const [
        GlacierJobParameters,
        _$GlacierJobParameters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Tier':
          result.tier = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Tier),
          ) as _i2.Tier);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GlacierJobParameters);
    final result = <Object?>[
      const _i3.XmlElementName(
        'GlacierJobParameters',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Tier'))
      ..add(serializers.serialize(
        payload.tier,
        specifiedType: const FullType.nullable(_i2.Tier),
      ));
    return result;
  }
}
