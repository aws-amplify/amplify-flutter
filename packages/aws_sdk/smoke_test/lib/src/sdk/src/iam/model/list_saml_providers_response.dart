// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_saml_providers_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/saml_provider_list_entry.dart';

part 'list_saml_providers_response.g.dart';

/// Contains the response to a successful ListSAMLProviders request.
abstract class ListSamlProvidersResponse
    with _i1.AWSEquatable<ListSamlProvidersResponse>
    implements
        Built<ListSamlProvidersResponse, ListSamlProvidersResponseBuilder> {
  /// Contains the response to a successful ListSAMLProviders request.
  factory ListSamlProvidersResponse(
      {List<SamlProviderListEntry>? samlProviderList}) {
    return _$ListSamlProvidersResponse._(
        samlProviderList:
            samlProviderList == null ? null : _i2.BuiltList(samlProviderList));
  }

  /// Contains the response to a successful ListSAMLProviders request.
  factory ListSamlProvidersResponse.build(
          [void Function(ListSamlProvidersResponseBuilder) updates]) =
      _$ListSamlProvidersResponse;

  const ListSamlProvidersResponse._();

  /// Constructs a [ListSamlProvidersResponse] from a [payload] and [response].
  factory ListSamlProvidersResponse.fromResponse(
    ListSamlProvidersResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListSamlProvidersResponse>>
      serializers = [ListSamlProvidersResponseAwsQuerySerializer()];

  /// The list of SAML provider resource objects defined in IAM for this Amazon Web Services account.
  _i2.BuiltList<SamlProviderListEntry>? get samlProviderList;
  @override
  List<Object?> get props => [samlProviderList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListSamlProvidersResponse')
      ..add(
        'samlProviderList',
        samlProviderList,
      );
    return helper.toString();
  }
}

class ListSamlProvidersResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListSamlProvidersResponse> {
  const ListSamlProvidersResponseAwsQuerySerializer()
      : super('ListSamlProvidersResponse');

  @override
  Iterable<Type> get types => const [
        ListSamlProvidersResponse,
        _$ListSamlProvidersResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListSamlProvidersResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSamlProvidersResponseBuilder();
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
        case 'SAMLProviderList':
          result.samlProviderList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SamlProviderListEntry)],
            ),
          ) as _i2.BuiltList<SamlProviderListEntry>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListSamlProvidersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListSamlProvidersResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListSamlProvidersResponse(:samlProviderList) = object;
    if (samlProviderList != null) {
      result$
        ..add(const _i3.XmlElementName('SAMLProviderList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          samlProviderList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(SamlProviderListEntry)],
          ),
        ));
    }
    return result$;
  }
}
