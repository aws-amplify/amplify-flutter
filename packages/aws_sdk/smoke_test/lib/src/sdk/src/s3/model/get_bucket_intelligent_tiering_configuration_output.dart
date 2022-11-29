// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_intelligent_tiering_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart' as _i6;

part 'get_bucket_intelligent_tiering_configuration_output.g.dart';

abstract class GetBucketIntelligentTieringConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketIntelligentTieringConfigurationOutput>
    implements
        Built<GetBucketIntelligentTieringConfigurationOutput,
            GetBucketIntelligentTieringConfigurationOutputBuilder>,
        _i2.HasPayload<_i3.IntelligentTieringConfiguration> {
  factory GetBucketIntelligentTieringConfigurationOutput(
      {_i3.IntelligentTieringConfiguration? intelligentTieringConfiguration}) {
    return _$GetBucketIntelligentTieringConfigurationOutput._(
        intelligentTieringConfiguration: intelligentTieringConfiguration);
  }

  factory GetBucketIntelligentTieringConfigurationOutput.build(
      [void Function(GetBucketIntelligentTieringConfigurationOutputBuilder)
          updates]) = _$GetBucketIntelligentTieringConfigurationOutput;

  const GetBucketIntelligentTieringConfigurationOutput._();

  /// Constructs a [GetBucketIntelligentTieringConfigurationOutput] from a [payload] and [response].
  factory GetBucketIntelligentTieringConfigurationOutput.fromResponse(
    _i3.IntelligentTieringConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketIntelligentTieringConfigurationOutput.build((b) {
        if (payload != null) {
          b.intelligentTieringConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetBucketIntelligentTieringConfigurationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketIntelligentTieringConfigurationOutputBuilder b) {}

  /// Container for S3 Intelligent-Tiering configuration.
  _i3.IntelligentTieringConfiguration? get intelligentTieringConfiguration;
  @override
  _i3.IntelligentTieringConfiguration? getPayload() =>
      intelligentTieringConfiguration;
  @override
  List<Object?> get props => [intelligentTieringConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketIntelligentTieringConfigurationOutput');
    helper.add(
      'intelligentTieringConfiguration',
      intelligentTieringConfiguration,
    );
    return helper.toString();
  }
}

class GetBucketIntelligentTieringConfigurationOutputRestXmlSerializer
    extends _i2
        .StructuredSmithySerializer<_i3.IntelligentTieringConfiguration> {
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
  _i3.IntelligentTieringConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.IntelligentTieringConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Filter':
          if (value != null) {
            result.filter.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IntelligentTieringFilter),
            ) as _i4.IntelligentTieringFilter));
          }
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i5.IntelligentTieringStatus),
          ) as _i5.IntelligentTieringStatus);
          break;
        case 'Tiering':
          result.tierings.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Tiering),
          ) as _i6.Tiering));
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
    final payload = object is GetBucketIntelligentTieringConfigurationOutput
        ? object.getPayload()
        : (object as _i3.IntelligentTieringConfiguration?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'IntelligentTieringConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    result
      ..add(const _i2.XmlElementName('Id'))
      ..add(serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ));
    if (payload.filter != null) {
      result
        ..add(const _i2.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i4.IntelligentTieringFilter),
        ));
    }
    result
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i5.IntelligentTieringStatus),
      ));
    result.addAll(
        const _i2.XmlBuiltListSerializer(memberName: 'Tiering').serialize(
      serializers,
      payload.tierings,
      specifiedType: const FullType.nullable(
        _i7.BuiltList,
        [FullType(_i6.Tiering)],
      ),
    ));
    return result;
  }
}
