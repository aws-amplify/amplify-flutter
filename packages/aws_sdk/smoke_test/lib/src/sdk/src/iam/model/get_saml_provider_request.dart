// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_saml_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_saml_provider_request.g.dart';

abstract class GetSamlProviderRequest
    with
        _i1.HttpInput<GetSamlProviderRequest>,
        _i2.AWSEquatable<GetSamlProviderRequest>
    implements Built<GetSamlProviderRequest, GetSamlProviderRequestBuilder> {
  factory GetSamlProviderRequest({required String samlProviderArn}) {
    return _$GetSamlProviderRequest._(samlProviderArn: samlProviderArn);
  }

  factory GetSamlProviderRequest.build(
          [void Function(GetSamlProviderRequestBuilder) updates]) =
      _$GetSamlProviderRequest;

  const GetSamlProviderRequest._();

  factory GetSamlProviderRequest.fromRequest(
    GetSamlProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetSamlProviderRequest>> serializers =
      [GetSamlProviderRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSamlProviderRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get samlProviderArn;
  @override
  GetSamlProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [samlProviderArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSamlProviderRequest')
      ..add(
        'samlProviderArn',
        samlProviderArn,
      );
    return helper.toString();
  }
}

class GetSamlProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetSamlProviderRequest> {
  const GetSamlProviderRequestAwsQuerySerializer()
      : super('GetSamlProviderRequest');

  @override
  Iterable<Type> get types => const [
        GetSamlProviderRequest,
        _$GetSamlProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSamlProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSamlProviderRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetSamlProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetSamlProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetSamlProviderRequest(:samlProviderArn) = object;
    result$
      ..add(const _i1.XmlElementName('SAMLProviderArn'))
      ..add(serializers.serialize(
        samlProviderArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
