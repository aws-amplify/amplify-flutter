// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_open_id_connect_provider_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'create_open_id_connect_provider_response.g.dart';

/// Contains the response to a successful CreateOpenIDConnectProvider request.
abstract class CreateOpenIdConnectProviderResponse
    with
        _i1.AWSEquatable<CreateOpenIdConnectProviderResponse>
    implements
        Built<CreateOpenIdConnectProviderResponse,
            CreateOpenIdConnectProviderResponseBuilder> {
  /// Contains the response to a successful CreateOpenIDConnectProvider request.
  factory CreateOpenIdConnectProviderResponse({
    String? openIdConnectProviderArn,
    List<_i2.Tag>? tags,
  }) {
    return _$CreateOpenIdConnectProviderResponse._(
      openIdConnectProviderArn: openIdConnectProviderArn,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Contains the response to a successful CreateOpenIDConnectProvider request.
  factory CreateOpenIdConnectProviderResponse.build(
          [void Function(CreateOpenIdConnectProviderResponseBuilder) updates]) =
      _$CreateOpenIdConnectProviderResponse;

  const CreateOpenIdConnectProviderResponse._();

  /// Constructs a [CreateOpenIdConnectProviderResponse] from a [payload] and [response].
  factory CreateOpenIdConnectProviderResponse.fromResponse(
    CreateOpenIdConnectProviderResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<CreateOpenIdConnectProviderResponse>>
      serializers = [CreateOpenIdConnectProviderResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateOpenIdConnectProviderResponseBuilder b) {}

  /// The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see OpenIDConnectProviderListEntry.
  String? get openIdConnectProviderArn;

  /// A list of tags that are attached to the new IAM OIDC provider. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        openIdConnectProviderArn,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateOpenIdConnectProviderResponse')
          ..add(
            'openIdConnectProviderArn',
            openIdConnectProviderArn,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class CreateOpenIdConnectProviderResponseAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<CreateOpenIdConnectProviderResponse> {
  const CreateOpenIdConnectProviderResponseAwsQuerySerializer()
      : super('CreateOpenIdConnectProviderResponse');

  @override
  Iterable<Type> get types => const [
        CreateOpenIdConnectProviderResponse,
        _$CreateOpenIdConnectProviderResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateOpenIdConnectProviderResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOpenIdConnectProviderResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OpenIDConnectProviderArn':
          result.openIdConnectProviderArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Tag)],
            ),
          ) as _i3.BuiltList<_i2.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateOpenIdConnectProviderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'CreateOpenIdConnectProviderResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateOpenIdConnectProviderResponse(
      :openIdConnectProviderArn,
      :tags
    ) = object;
    if (openIdConnectProviderArn != null) {
      result$
        ..add(const _i4.XmlElementName('OpenIDConnectProviderArn'))
        ..add(serializers.serialize(
          openIdConnectProviderArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i4.XmlElementName('Tags'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result$;
  }
}
