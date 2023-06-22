// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<_i3.PublicAccessBlockConfiguration?>>
      serializers = [GetPublicAccessBlockOutputRestXmlSerializer()];

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
    final helper = newBuiltValueToStringHelper('GetPublicAccessBlockOutput')
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BlockPublicAcls':
          result.blockPublicAcls = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IgnorePublicAcls':
          result.ignorePublicAcls = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'BlockPublicPolicy':
          result.blockPublicPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RestrictPublicBuckets':
          result.restrictPublicBuckets = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i3.PublicAccessBlockConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PublicAccessBlockConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i3.PublicAccessBlockConfiguration(
      :blockPublicAcls,
      :ignorePublicAcls,
      :blockPublicPolicy,
      :restrictPublicBuckets
    ) = object;
    if (blockPublicAcls != null) {
      result$
        ..add(const _i2.XmlElementName('BlockPublicAcls'))
        ..add(serializers.serialize(
          blockPublicAcls,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (ignorePublicAcls != null) {
      result$
        ..add(const _i2.XmlElementName('IgnorePublicAcls'))
        ..add(serializers.serialize(
          ignorePublicAcls,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (blockPublicPolicy != null) {
      result$
        ..add(const _i2.XmlElementName('BlockPublicPolicy'))
        ..add(serializers.serialize(
          blockPublicPolicy,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (restrictPublicBuckets != null) {
      result$
        ..add(const _i2.XmlElementName('RestrictPublicBuckets'))
        ..add(serializers.serialize(
          restrictPublicBuckets,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
