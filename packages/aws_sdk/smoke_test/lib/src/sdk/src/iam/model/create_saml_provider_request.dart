// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_saml_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'create_saml_provider_request.g.dart';

abstract class CreateSamlProviderRequest
    with
        _i1.HttpInput<CreateSamlProviderRequest>,
        _i2.AWSEquatable<CreateSamlProviderRequest>
    implements
        Built<CreateSamlProviderRequest, CreateSamlProviderRequestBuilder> {
  factory CreateSamlProviderRequest({
    required String samlMetadataDocument,
    required String name,
    List<_i3.Tag>? tags,
  }) {
    return _$CreateSamlProviderRequest._(
      samlMetadataDocument: samlMetadataDocument,
      name: name,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory CreateSamlProviderRequest.build(
          [void Function(CreateSamlProviderRequestBuilder) updates]) =
      _$CreateSamlProviderRequest;

  const CreateSamlProviderRequest._();

  factory CreateSamlProviderRequest.fromRequest(
    CreateSamlProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateSamlProviderRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSamlProviderRequestBuilder b) {}

  /// An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.
  ///
  /// For more information, see [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) in the _IAM User Guide_
  String get samlMetadataDocument;

  /// The name of the provider to create.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get name;

  /// A list of tags that you want to attach to the new IAM SAML provider. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  CreateSamlProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        samlMetadataDocument,
        name,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSamlProviderRequest');
    helper.add(
      'samlMetadataDocument',
      samlMetadataDocument,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CreateSamlProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSamlProviderRequest> {
  const CreateSamlProviderRequestAwsQuerySerializer()
      : super('CreateSamlProviderRequest');

  @override
  Iterable<Type> get types => const [
        CreateSamlProviderRequest,
        _$CreateSamlProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateSamlProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSamlProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SAMLMetadataDocument':
          result.samlMetadataDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    CreateSamlProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateSamlProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateSamlProviderRequest(:samlMetadataDocument, :name, :tags) =
        object;
    result$
      ..add(const _i1.XmlElementName('SAMLMetadataDocument'))
      ..add(serializers.serialize(
        samlMetadataDocument,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('Name'))
      ..add(serializers.serialize(
        name,
        specifiedType: const FullType(String),
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
