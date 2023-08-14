// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_intelligent_tiering_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart';

part 'get_bucket_intelligent_tiering_configuration_output.g.dart';

abstract class GetBucketIntelligentTieringConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketIntelligentTieringConfigurationOutput>
    implements
        Built<GetBucketIntelligentTieringConfigurationOutput,
            GetBucketIntelligentTieringConfigurationOutputBuilder>,
        _i2.HasPayload<IntelligentTieringConfiguration> {
  factory GetBucketIntelligentTieringConfigurationOutput(
      {IntelligentTieringConfiguration? intelligentTieringConfiguration}) {
    return _$GetBucketIntelligentTieringConfigurationOutput._(
        intelligentTieringConfiguration: intelligentTieringConfiguration);
  }

  factory GetBucketIntelligentTieringConfigurationOutput.build(
      [void Function(GetBucketIntelligentTieringConfigurationOutputBuilder)
          updates]) = _$GetBucketIntelligentTieringConfigurationOutput;

  const GetBucketIntelligentTieringConfigurationOutput._();

  /// Constructs a [GetBucketIntelligentTieringConfigurationOutput] from a [payload] and [response].
  factory GetBucketIntelligentTieringConfigurationOutput.fromResponse(
    IntelligentTieringConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketIntelligentTieringConfigurationOutput.build((b) {
        if (payload != null) {
          b.intelligentTieringConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<IntelligentTieringConfiguration?>>
      serializers = [
    GetBucketIntelligentTieringConfigurationOutputRestXmlSerializer()
  ];

  /// Container for S3 Intelligent-Tiering configuration.
  IntelligentTieringConfiguration? get intelligentTieringConfiguration;
  @override
  IntelligentTieringConfiguration? getPayload() =>
      intelligentTieringConfiguration;
  @override
  List<Object?> get props => [intelligentTieringConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketIntelligentTieringConfigurationOutput')
      ..add(
        'intelligentTieringConfiguration',
        intelligentTieringConfiguration,
      );
    return helper.toString();
  }
}

class GetBucketIntelligentTieringConfigurationOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<IntelligentTieringConfiguration> {
  const GetBucketIntelligentTieringConfigurationOutputRestXmlSerializer()
      : super('GetBucketIntelligentTieringConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketIntelligentTieringConfigurationOutput,
        _$GetBucketIntelligentTieringConfigurationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  IntelligentTieringConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligentTieringConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringFilter),
          ) as IntelligentTieringFilter));
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringStatus),
          ) as IntelligentTieringStatus);
        case 'Tiering':
          result.tierings.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Tiering),
          ) as Tiering));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IntelligentTieringConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IntelligentTieringConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final IntelligentTieringConfiguration(:id, :filter, :status, :tierings) =
        object;
    result$
      ..add(const _i2.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    if (filter != null) {
      result$
        ..add(const _i2.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(IntelligentTieringFilter),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(IntelligentTieringStatus),
      ));
    result$.addAll(
        const _i2.XmlBuiltListSerializer(memberName: 'Tiering').serialize(
      serializers,
      tierings,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(Tiering)],
      ),
    ));
    return result$;
  }
}
