// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_service_specific_credentials_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential_metadata.dart';

part 'list_service_specific_credentials_response.g.dart';

abstract class ListServiceSpecificCredentialsResponse
    with
        _i1.AWSEquatable<ListServiceSpecificCredentialsResponse>
    implements
        Built<ListServiceSpecificCredentialsResponse,
            ListServiceSpecificCredentialsResponseBuilder> {
  factory ListServiceSpecificCredentialsResponse(
      {List<ServiceSpecificCredentialMetadata>? serviceSpecificCredentials}) {
    return _$ListServiceSpecificCredentialsResponse._(
        serviceSpecificCredentials: serviceSpecificCredentials == null
            ? null
            : _i2.BuiltList(serviceSpecificCredentials));
  }

  factory ListServiceSpecificCredentialsResponse.build(
      [void Function(ListServiceSpecificCredentialsResponseBuilder)
          updates]) = _$ListServiceSpecificCredentialsResponse;

  const ListServiceSpecificCredentialsResponse._();

  /// Constructs a [ListServiceSpecificCredentialsResponse] from a [payload] and [response].
  factory ListServiceSpecificCredentialsResponse.fromResponse(
    ListServiceSpecificCredentialsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<ListServiceSpecificCredentialsResponse>>
      serializers = [
    ListServiceSpecificCredentialsResponseAwsQuerySerializer()
  ];

  /// A list of structures that each contain details about a service-specific credential.
  _i2.BuiltList<ServiceSpecificCredentialMetadata>?
      get serviceSpecificCredentials;
  @override
  List<Object?> get props => [serviceSpecificCredentials];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListServiceSpecificCredentialsResponse')
          ..add(
            'serviceSpecificCredentials',
            serviceSpecificCredentials,
          );
    return helper.toString();
  }
}

class ListServiceSpecificCredentialsResponseAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<ListServiceSpecificCredentialsResponse> {
  const ListServiceSpecificCredentialsResponseAwsQuerySerializer()
      : super('ListServiceSpecificCredentialsResponse');

  @override
  Iterable<Type> get types => const [
        ListServiceSpecificCredentialsResponse,
        _$ListServiceSpecificCredentialsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListServiceSpecificCredentialsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListServiceSpecificCredentialsResponseBuilder();
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
        case 'ServiceSpecificCredentials':
          result.serviceSpecificCredentials.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServiceSpecificCredentialMetadata)],
            ),
          ) as _i2.BuiltList<ServiceSpecificCredentialMetadata>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListServiceSpecificCredentialsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListServiceSpecificCredentialsResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListServiceSpecificCredentialsResponse(:serviceSpecificCredentials) =
        object;
    if (serviceSpecificCredentials != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceSpecificCredentials'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          serviceSpecificCredentials,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ServiceSpecificCredentialMetadata)],
          ),
        ));
    }
    return result$;
  }
}
