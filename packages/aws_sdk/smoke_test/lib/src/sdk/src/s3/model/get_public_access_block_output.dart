// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_public_access_block_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/public_access_block_configuration.dart'
    as _i3;

part 'get_public_access_block_output.g.dart';

abstract class GetPublicAccessBlockOutput
    with _i1.AWSEquatable<GetPublicAccessBlockOutput>
    implements
        Built<GetPublicAccessBlockOutput, GetPublicAccessBlockOutputBuilder>,
        _i2.HasPayload<_i3.PublicAccessBlockConfiguration> {
  factory GetPublicAccessBlockOutput(
      {_i3.PublicAccessBlockConfiguration? publicAccessBlockConfiguration}) {
    return _$GetPublicAccessBlockOutput._(
        publicAccessBlockConfiguration: publicAccessBlockConfiguration);
  }

  factory GetPublicAccessBlockOutput.build(
          [void Function(GetPublicAccessBlockOutputBuilder) updates]) =
      _$GetPublicAccessBlockOutput;

  const GetPublicAccessBlockOutput._();

  /// Constructs a [GetPublicAccessBlockOutput] from a [payload] and [response].
  factory GetPublicAccessBlockOutput.fromResponse(
    _i3.PublicAccessBlockConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetPublicAccessBlockOutput.build((b) {
        if (payload != null) {
          b.publicAccessBlockConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetPublicAccessBlockOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetPublicAccessBlockOutputBuilder b) {}

  /// The `PublicAccessBlock` configuration currently in effect for this Amazon S3 bucket.
  _i3.PublicAccessBlockConfiguration? get publicAccessBlockConfiguration;
  @override
  _i3.PublicAccessBlockConfiguration? getPayload() =>
      publicAccessBlockConfiguration ?? _i3.PublicAccessBlockConfiguration();
  @override
  List<Object?> get props => [publicAccessBlockConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetPublicAccessBlockOutput');
    helper.add(
      'publicAccessBlockConfiguration',
      publicAccessBlockConfiguration,
    );
    return helper.toString();
  }
}

class GetPublicAccessBlockOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.PublicAccessBlockConfiguration> {
  const GetPublicAccessBlockOutputRestXmlSerializer()
      : super('GetPublicAccessBlockOutput');

  @override
  Iterable<Type> get types => const [
        GetPublicAccessBlockOutput,
        _$GetPublicAccessBlockOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.PublicAccessBlockConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.PublicAccessBlockConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BlockPublicAcls':
          if (value != null) {
            result.blockPublicAcls = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'IgnorePublicAcls':
          if (value != null) {
            result.ignorePublicAcls = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'BlockPublicPolicy':
          if (value != null) {
            result.blockPublicPolicy = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'RestrictPublicBuckets':
          if (value != null) {
            result.restrictPublicBuckets = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
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
    final payload = object is GetPublicAccessBlockOutput
        ? object.getPayload()
        : (object as _i3.PublicAccessBlockConfiguration?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PublicAccessBlockConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.blockPublicAcls != null) {
      result
        ..add(const _i2.XmlElementName('BlockPublicAcls'))
        ..add(serializers.serialize(
          payload.blockPublicAcls!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.ignorePublicAcls != null) {
      result
        ..add(const _i2.XmlElementName('IgnorePublicAcls'))
        ..add(serializers.serialize(
          payload.ignorePublicAcls!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.blockPublicPolicy != null) {
      result
        ..add(const _i2.XmlElementName('BlockPublicPolicy'))
        ..add(serializers.serialize(
          payload.blockPublicPolicy!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.restrictPublicBuckets != null) {
      result
        ..add(const _i2.XmlElementName('RestrictPublicBuckets'))
        ..add(serializers.serialize(
          payload.restrictPublicBuckets!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
