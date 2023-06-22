// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_saml_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_saml_provider_request.g.dart';

abstract class DeleteSamlProviderRequest
    with
        _i1.HttpInput<DeleteSamlProviderRequest>,
        _i2.AWSEquatable<DeleteSamlProviderRequest>
    implements
        Built<DeleteSamlProviderRequest, DeleteSamlProviderRequestBuilder> {
  factory DeleteSamlProviderRequest({required String samlProviderArn}) {
    return _$DeleteSamlProviderRequest._(samlProviderArn: samlProviderArn);
  }

  factory DeleteSamlProviderRequest.build(
          [void Function(DeleteSamlProviderRequestBuilder) updates]) =
      _$DeleteSamlProviderRequest;

  const DeleteSamlProviderRequest._();

  factory DeleteSamlProviderRequest.fromRequest(
    DeleteSamlProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteSamlProviderRequest>>
      serializers = [DeleteSamlProviderRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSamlProviderRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the SAML provider to delete.
  String get samlProviderArn;
  @override
  DeleteSamlProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [samlProviderArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteSamlProviderRequest')
      ..add(
        'samlProviderArn',
        samlProviderArn,
      );
    return helper.toString();
  }
}

class DeleteSamlProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSamlProviderRequest> {
  const DeleteSamlProviderRequestAwsQuerySerializer()
      : super('DeleteSamlProviderRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSamlProviderRequest,
        _$DeleteSamlProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteSamlProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSamlProviderRequestBuilder();
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
    DeleteSamlProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteSamlProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteSamlProviderRequest(:samlProviderArn) = object;
    result$
      ..add(const _i1.XmlElementName('SAMLProviderArn'))
      ..add(serializers.serialize(
        samlProviderArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
