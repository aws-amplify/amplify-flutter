// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_open_id_connect_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_open_id_connect_provider_request.g.dart';

abstract class GetOpenIdConnectProviderRequest
    with
        _i1.HttpInput<GetOpenIdConnectProviderRequest>,
        _i2.AWSEquatable<GetOpenIdConnectProviderRequest>
    implements
        Built<GetOpenIdConnectProviderRequest,
            GetOpenIdConnectProviderRequestBuilder> {
  factory GetOpenIdConnectProviderRequest(
      {required String openIdConnectProviderArn}) {
    return _$GetOpenIdConnectProviderRequest._(
        openIdConnectProviderArn: openIdConnectProviderArn);
  }

  factory GetOpenIdConnectProviderRequest.build(
          [void Function(GetOpenIdConnectProviderRequestBuilder) updates]) =
      _$GetOpenIdConnectProviderRequest;

  const GetOpenIdConnectProviderRequest._();

  factory GetOpenIdConnectProviderRequest.fromRequest(
    GetOpenIdConnectProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetOpenIdConnectProviderRequest>>
      serializers = [GetOpenIdConnectProviderRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOpenIdConnectProviderRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the ListOpenIDConnectProviders operation.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get openIdConnectProviderArn;
  @override
  GetOpenIdConnectProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [openIdConnectProviderArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetOpenIdConnectProviderRequest')
          ..add(
            'openIdConnectProviderArn',
            openIdConnectProviderArn,
          );
    return helper.toString();
  }
}

class GetOpenIdConnectProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetOpenIdConnectProviderRequest> {
  const GetOpenIdConnectProviderRequestAwsQuerySerializer()
      : super('GetOpenIdConnectProviderRequest');

  @override
  Iterable<Type> get types => const [
        GetOpenIdConnectProviderRequest,
        _$GetOpenIdConnectProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetOpenIdConnectProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOpenIdConnectProviderRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetOpenIdConnectProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetOpenIdConnectProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetOpenIdConnectProviderRequest(:openIdConnectProviderArn) = object;
    result$
      ..add(const _i1.XmlElementName('OpenIDConnectProviderArn'))
      ..add(serializers.serialize(
        openIdConnectProviderArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
