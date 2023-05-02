// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.update_saml_provider_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_saml_provider_response.g.dart';

/// Contains the response to a successful UpdateSAMLProvider request.
abstract class UpdateSamlProviderResponse
    with _i1.AWSEquatable<UpdateSamlProviderResponse>
    implements
        Built<UpdateSamlProviderResponse, UpdateSamlProviderResponseBuilder> {
  /// Contains the response to a successful UpdateSAMLProvider request.
  factory UpdateSamlProviderResponse({String? samlProviderArn}) {
    return _$UpdateSamlProviderResponse._(samlProviderArn: samlProviderArn);
  }

  /// Contains the response to a successful UpdateSAMLProvider request.
  factory UpdateSamlProviderResponse.build(
          [void Function(UpdateSamlProviderResponseBuilder) updates]) =
      _$UpdateSamlProviderResponse;

  const UpdateSamlProviderResponse._();

  /// Constructs a [UpdateSamlProviderResponse] from a [payload] and [response].
  factory UpdateSamlProviderResponse.fromResponse(
    UpdateSamlProviderResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    UpdateSamlProviderResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateSamlProviderResponseBuilder b) {}

  /// The Amazon Resource Name (ARN) of the SAML provider that was updated.
  String? get samlProviderArn;
  @override
  List<Object?> get props => [samlProviderArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateSamlProviderResponse');
    helper.add(
      'samlProviderArn',
      samlProviderArn,
    );
    return helper.toString();
  }
}

class UpdateSamlProviderResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<UpdateSamlProviderResponse> {
  const UpdateSamlProviderResponseAwsQuerySerializer()
      : super('UpdateSamlProviderResponse');

  @override
  Iterable<Type> get types => const [
        UpdateSamlProviderResponse,
        _$UpdateSamlProviderResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateSamlProviderResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSamlProviderResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SAMLProviderArn':
          if (value != null) {
            result.samlProviderArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as UpdateSamlProviderResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'UpdateSamlProviderResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.samlProviderArn != null) {
      result
        ..add(const _i2.XmlElementName('SAMLProviderArn'))
        ..add(serializers.serialize(
          payload.samlProviderArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
