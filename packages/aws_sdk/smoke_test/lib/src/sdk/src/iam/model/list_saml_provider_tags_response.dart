// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_saml_provider_tags_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'list_saml_provider_tags_response.g.dart';

abstract class ListSamlProviderTagsResponse
    with
        _i1.AWSEquatable<ListSamlProviderTagsResponse>
    implements
        Built<ListSamlProviderTagsResponse,
            ListSamlProviderTagsResponseBuilder> {
  factory ListSamlProviderTagsResponse({
    required List<_i2.Tag> tags,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListSamlProviderTagsResponse._(
      tags: _i3.BuiltList(tags),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  factory ListSamlProviderTagsResponse.build(
          [void Function(ListSamlProviderTagsResponseBuilder) updates]) =
      _$ListSamlProviderTagsResponse;

  const ListSamlProviderTagsResponse._();

  /// Constructs a [ListSamlProviderTagsResponse] from a [payload] and [response].
  factory ListSamlProviderTagsResponse.fromResponse(
    ListSamlProviderTagsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListSamlProviderTagsResponse>>
      serializers = [ListSamlProviderTagsResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListSamlProviderTagsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// The list of tags that are currently attached to the Security Assertion Markup Language (SAML) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
  _i3.BuiltList<_i2.Tag> get tags;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        tags,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListSamlProviderTagsResponse')
      ..add(
        'tags',
        tags,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'marker',
        marker,
      );
    return helper.toString();
  }
}

class ListSamlProviderTagsResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListSamlProviderTagsResponse> {
  const ListSamlProviderTagsResponseAwsQuerySerializer()
      : super('ListSamlProviderTagsResponse');

  @override
  Iterable<Type> get types => const [
        ListSamlProviderTagsResponse,
        _$ListSamlProviderTagsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListSamlProviderTagsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSamlProviderTagsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListSamlProviderTagsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListSamlProviderTagsResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListSamlProviderTagsResponse(:tags, :isTruncated, :marker) = object;
    result$
      ..add(const _i4.XmlElementName('Tags'))
      ..add(
          const _i4.XmlBuiltListSerializer(indexer: _i4.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.Tag)],
        ),
      ));
    result$
      ..add(const _i4.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
