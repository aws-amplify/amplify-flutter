// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_saml_provider_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'get_saml_provider_response.g.dart';

/// Contains the response to a successful GetSAMLProvider request.
abstract class GetSamlProviderResponse
    with _i1.AWSEquatable<GetSamlProviderResponse>
    implements Built<GetSamlProviderResponse, GetSamlProviderResponseBuilder> {
  /// Contains the response to a successful GetSAMLProvider request.
  factory GetSamlProviderResponse({
    String? samlMetadataDocument,
    DateTime? createDate,
    DateTime? validUntil,
    List<_i2.Tag>? tags,
  }) {
    return _$GetSamlProviderResponse._(
      samlMetadataDocument: samlMetadataDocument,
      createDate: createDate,
      validUntil: validUntil,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Contains the response to a successful GetSAMLProvider request.
  factory GetSamlProviderResponse.build(
          [void Function(GetSamlProviderResponseBuilder) updates]) =
      _$GetSamlProviderResponse;

  const GetSamlProviderResponse._();

  /// Constructs a [GetSamlProviderResponse] from a [payload] and [response].
  factory GetSamlProviderResponse.fromResponse(
    GetSamlProviderResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<GetSamlProviderResponse>> serializers =
      [GetSamlProviderResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSamlProviderResponseBuilder b) {}

  /// The XML metadata document that includes information about an identity provider.
  String? get samlMetadataDocument;

  /// The date and time when the SAML provider was created.
  DateTime? get createDate;

  /// The expiration date and time for the SAML provider.
  DateTime? get validUntil;

  /// A list of tags that are attached to the specified IAM SAML provider. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        samlMetadataDocument,
        createDate,
        validUntil,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSamlProviderResponse')
      ..add(
        'samlMetadataDocument',
        samlMetadataDocument,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'validUntil',
        validUntil,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class GetSamlProviderResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<GetSamlProviderResponse> {
  const GetSamlProviderResponseAwsQuerySerializer()
      : super('GetSamlProviderResponse');

  @override
  Iterable<Type> get types => const [
        GetSamlProviderResponse,
        _$GetSamlProviderResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSamlProviderResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSamlProviderResponseBuilder();
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
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ValidUntil':
          result.validUntil = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    GetSamlProviderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetSamlProviderResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetSamlProviderResponse(
      :samlMetadataDocument,
      :createDate,
      :validUntil,
      :tags
    ) = object;
    if (samlMetadataDocument != null) {
      result$
        ..add(const _i4.XmlElementName('SAMLMetadataDocument'))
        ..add(serializers.serialize(
          samlMetadataDocument,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i4.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (validUntil != null) {
      result$
        ..add(const _i4.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          validUntil,
          specifiedType: const FullType.nullable(DateTime),
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
