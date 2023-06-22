// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_open_id_connect_providers_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_open_id_connect_providers_request.g.dart';

abstract class ListOpenIdConnectProvidersRequest
    with
        _i1.HttpInput<ListOpenIdConnectProvidersRequest>,
        _i2.AWSEquatable<ListOpenIdConnectProvidersRequest>
    implements
        Built<ListOpenIdConnectProvidersRequest,
            ListOpenIdConnectProvidersRequestBuilder>,
        _i1.EmptyPayload {
  factory ListOpenIdConnectProvidersRequest() {
    return _$ListOpenIdConnectProvidersRequest._();
  }

  factory ListOpenIdConnectProvidersRequest.build(
          [void Function(ListOpenIdConnectProvidersRequestBuilder) updates]) =
      _$ListOpenIdConnectProvidersRequest;

  const ListOpenIdConnectProvidersRequest._();

  factory ListOpenIdConnectProvidersRequest.fromRequest(
    ListOpenIdConnectProvidersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListOpenIdConnectProvidersRequest>>
      serializers = [ListOpenIdConnectProvidersRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListOpenIdConnectProvidersRequestBuilder b) {}
  @override
  ListOpenIdConnectProvidersRequest getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListOpenIdConnectProvidersRequest');
    return helper.toString();
  }
}

class ListOpenIdConnectProvidersRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListOpenIdConnectProvidersRequest> {
  const ListOpenIdConnectProvidersRequestAwsQuerySerializer()
      : super('ListOpenIdConnectProvidersRequest');

  @override
  Iterable<Type> get types => const [
        ListOpenIdConnectProvidersRequest,
        _$ListOpenIdConnectProvidersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListOpenIdConnectProvidersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListOpenIdConnectProvidersRequestBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListOpenIdConnectProvidersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListOpenIdConnectProvidersRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];

    return result$;
  }
}
