// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_saml_provider_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart';

part 'create_saml_provider_response.g.dart';

/// Contains the response to a successful CreateSAMLProvider request.
abstract class CreateSamlProviderResponse
    with _i1.AWSEquatable<CreateSamlProviderResponse>
    implements
        Built<CreateSamlProviderResponse, CreateSamlProviderResponseBuilder> {
  /// Contains the response to a successful CreateSAMLProvider request.
  factory CreateSamlProviderResponse({
    String? samlProviderArn,
    List<Tag>? tags,
  }) {
    return _$CreateSamlProviderResponse._(
      samlProviderArn: samlProviderArn,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Contains the response to a successful CreateSAMLProvider request.
  factory CreateSamlProviderResponse.build(
          [void Function(CreateSamlProviderResponseBuilder) updates]) =
      _$CreateSamlProviderResponse;

  const CreateSamlProviderResponse._();

  /// Constructs a [CreateSamlProviderResponse] from a [payload] and [response].
  factory CreateSamlProviderResponse.fromResponse(
    CreateSamlProviderResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateSamlProviderResponse>>
      serializers = [CreateSamlProviderResponseAwsQuerySerializer()];

  /// The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.
  String? get samlProviderArn;

  /// A list of tags that are attached to the new IAM SAML provider. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        samlProviderArn,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSamlProviderResponse')
      ..add(
        'samlProviderArn',
        samlProviderArn,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CreateSamlProviderResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<CreateSamlProviderResponse> {
  const CreateSamlProviderResponseAwsQuerySerializer()
      : super('CreateSamlProviderResponse');

  @override
  Iterable<Type> get types => const [
        CreateSamlProviderResponse,
        _$CreateSamlProviderResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateSamlProviderResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSamlProviderResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SAMLProviderArn':
          result.samlProviderArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateSamlProviderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateSamlProviderResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateSamlProviderResponse(:samlProviderArn, :tags) = object;
    if (samlProviderArn != null) {
      result$
        ..add(const _i3.XmlElementName('SAMLProviderArn'))
        ..add(serializers.serialize(
          samlProviderArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('Tags'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}