// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_saml_providers_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_saml_providers_request.g.dart';

abstract class ListSamlProvidersRequest
    with
        _i1.HttpInput<ListSamlProvidersRequest>,
        _i2.AWSEquatable<ListSamlProvidersRequest>
    implements
        Built<ListSamlProvidersRequest, ListSamlProvidersRequestBuilder>,
        _i1.EmptyPayload {
  factory ListSamlProvidersRequest() {
    return _$ListSamlProvidersRequest._();
  }

  factory ListSamlProvidersRequest.build(
          [void Function(ListSamlProvidersRequestBuilder) updates]) =
      _$ListSamlProvidersRequest;

  const ListSamlProvidersRequest._();

  factory ListSamlProvidersRequest.fromRequest(
    ListSamlProvidersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListSamlProvidersRequest>>
      serializers = [ListSamlProvidersRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListSamlProvidersRequestBuilder b) {}
  @override
  ListSamlProvidersRequest getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListSamlProvidersRequest');
    return helper.toString();
  }
}

class ListSamlProvidersRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListSamlProvidersRequest> {
  const ListSamlProvidersRequestAwsQuerySerializer()
      : super('ListSamlProvidersRequest');

  @override
  Iterable<Type> get types => const [
        ListSamlProvidersRequest,
        _$ListSamlProvidersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListSamlProvidersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ListSamlProvidersRequestBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListSamlProvidersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListSamlProvidersRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];

    return result$;
  }
}
