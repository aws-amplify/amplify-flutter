// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_open_id_connect_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_open_id_connect_provider_request.g.dart';

abstract class CreateOpenIdConnectProviderRequest
    with
        _i1.HttpInput<CreateOpenIdConnectProviderRequest>,
        _i2.AWSEquatable<CreateOpenIdConnectProviderRequest>
    implements
        Built<CreateOpenIdConnectProviderRequest,
            CreateOpenIdConnectProviderRequestBuilder> {
  factory CreateOpenIdConnectProviderRequest({
    required String url,
    List<String>? clientIdList,
    required List<String> thumbprintList,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateOpenIdConnectProviderRequest._(
      url: url,
      clientIdList: clientIdList == null ? null : _i4.BuiltList(clientIdList),
      thumbprintList: _i4.BuiltList(thumbprintList),
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateOpenIdConnectProviderRequest.build(
          [void Function(CreateOpenIdConnectProviderRequestBuilder) updates]) =
      _$CreateOpenIdConnectProviderRequest;

  const CreateOpenIdConnectProviderRequest._();

  factory CreateOpenIdConnectProviderRequest.fromRequest(
    CreateOpenIdConnectProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateOpenIdConnectProviderRequest>>
      serializers = [CreateOpenIdConnectProviderRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateOpenIdConnectProviderRequestBuilder b) {}

  /// The URL of the identity provider. The URL must begin with `https://` and should correspond to the `iss` claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a hostname, like `https://server.example.org` or `https://example.com`. The URL should not contain a port number.
  ///
  /// You cannot register the same provider multiple times in a single Amazon Web Services account. If you try to submit a URL that has already been used for an OpenID Connect provider in the Amazon Web Services account, you will get an error.
  String get url;

  /// Provides a list of client IDs, also known as audiences. When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. This is the value that's sent as the `client_id` parameter on OAuth requests.
  ///
  /// You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider.
  ///
  /// There is no defined format for a client ID. The `CreateOpenIDConnectProviderRequest` operation accepts client IDs up to 255 characters long.
  _i4.BuiltList<String>? get clientIdList;

  /// A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificates. Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates.
  ///
  /// The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.
  ///
  /// You must provide at least one thumbprint when creating an IAM OIDC provider. For example, assume that the OIDC provider is `server.example.com` and the provider stores its keys at https://keys.server.example.com/openid-connect. In that case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by `https://keys.server.example.com.`
  ///
  /// For more information about obtaining the OIDC provider thumbprint, see [Obtaining the thumbprint for an OpenID Connect provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html) in the _IAM user Guide_.
  _i4.BuiltList<String> get thumbprintList;

  /// A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateOpenIdConnectProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        url,
        clientIdList,
        thumbprintList,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateOpenIdConnectProviderRequest')
          ..add(
            'url',
            url,
          )
          ..add(
            'clientIdList',
            clientIdList,
          )
          ..add(
            'thumbprintList',
            thumbprintList,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class CreateOpenIdConnectProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateOpenIdConnectProviderRequest> {
  const CreateOpenIdConnectProviderRequestAwsQuerySerializer()
      : super('CreateOpenIdConnectProviderRequest');

  @override
  Iterable<Type> get types => const [
        CreateOpenIdConnectProviderRequest,
        _$CreateOpenIdConnectProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateOpenIdConnectProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOpenIdConnectProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Url':
          result.url = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientIDList':
          result.clientIdList.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ThumbprintList':
          result.thumbprintList.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateOpenIdConnectProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateOpenIdConnectProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateOpenIdConnectProviderRequest(
      :url,
      :clientIdList,
      :thumbprintList,
      :tags
    ) = object;
    result$
      ..add(const _i1.XmlElementName('Url'))
      ..add(serializers.serialize(
        url,
        specifiedType: const FullType(String),
      ));
    if (clientIdList != null) {
      result$
        ..add(const _i1.XmlElementName('ClientIDList'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          clientIdList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ThumbprintList'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        thumbprintList,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result$;
  }
}
