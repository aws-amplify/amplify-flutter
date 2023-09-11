// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_encryption_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_rule.dart';

part 'get_bucket_encryption_output.g.dart';

abstract class GetBucketEncryptionOutput
    with _i1.AWSEquatable<GetBucketEncryptionOutput>
    implements
        Built<GetBucketEncryptionOutput, GetBucketEncryptionOutputBuilder>,
        _i2.HasPayload<ServerSideEncryptionConfiguration> {
  factory GetBucketEncryptionOutput(
      {ServerSideEncryptionConfiguration? serverSideEncryptionConfiguration}) {
    return _$GetBucketEncryptionOutput._(
        serverSideEncryptionConfiguration: serverSideEncryptionConfiguration);
  }

  factory GetBucketEncryptionOutput.build(
          [void Function(GetBucketEncryptionOutputBuilder) updates]) =
      _$GetBucketEncryptionOutput;

  const GetBucketEncryptionOutput._();

  /// Constructs a [GetBucketEncryptionOutput] from a [payload] and [response].
  factory GetBucketEncryptionOutput.fromResponse(
    ServerSideEncryptionConfiguration? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketEncryptionOutput.build((b) {
        if (payload != null) {
          b.serverSideEncryptionConfiguration.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<ServerSideEncryptionConfiguration?>>
      serializers = [GetBucketEncryptionOutputRestXmlSerializer()];

  /// Specifies the default server-side-encryption configuration.
  ServerSideEncryptionConfiguration? get serverSideEncryptionConfiguration;
  @override
  ServerSideEncryptionConfiguration? getPayload() =>
      serverSideEncryptionConfiguration;
  @override
  List<Object?> get props => [serverSideEncryptionConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketEncryptionOutput')
      ..add(
        'serverSideEncryptionConfiguration',
        serverSideEncryptionConfiguration,
      );
    return helper.toString();
  }
}

class GetBucketEncryptionOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ServerSideEncryptionConfiguration> {
  const GetBucketEncryptionOutputRestXmlSerializer()
      : super('GetBucketEncryptionOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketEncryptionOutput,
        _$GetBucketEncryptionOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ServerSideEncryptionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSideEncryptionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ServerSideEncryptionRule),
          ) as ServerSideEncryptionRule));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServerSideEncryptionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ServerSideEncryptionConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ServerSideEncryptionConfiguration(:rules) = object;
    result$
        .addAll(const _i2.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      rules,
      specifiedType: const FullType(
        _i3.BuiltList,
        [FullType(ServerSideEncryptionRule)],
      ),
    ));
    return result$;
  }
}
