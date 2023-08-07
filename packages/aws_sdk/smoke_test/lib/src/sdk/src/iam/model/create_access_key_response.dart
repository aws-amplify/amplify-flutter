// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_access_key_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/access_key.dart';

part 'create_access_key_response.g.dart';

/// Contains the response to a successful CreateAccessKey request.
abstract class CreateAccessKeyResponse
    with _i1.AWSEquatable<CreateAccessKeyResponse>
    implements Built<CreateAccessKeyResponse, CreateAccessKeyResponseBuilder> {
  /// Contains the response to a successful CreateAccessKey request.
  factory CreateAccessKeyResponse({required AccessKey accessKey}) {
    return _$CreateAccessKeyResponse._(accessKey: accessKey);
  }

  /// Contains the response to a successful CreateAccessKey request.
  factory CreateAccessKeyResponse.build(
          [void Function(CreateAccessKeyResponseBuilder) updates]) =
      _$CreateAccessKeyResponse;

  const CreateAccessKeyResponse._();

  /// Constructs a [CreateAccessKeyResponse] from a [payload] and [response].
  factory CreateAccessKeyResponse.fromResponse(
    CreateAccessKeyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateAccessKeyResponse>> serializers =
      [CreateAccessKeyResponseAwsQuerySerializer()];

  /// A structure with details about the access key.
  AccessKey get accessKey;
  @override
  List<Object?> get props => [accessKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateAccessKeyResponse')
      ..add(
        'accessKey',
        accessKey,
      );
    return helper.toString();
  }
}

class CreateAccessKeyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateAccessKeyResponse> {
  const CreateAccessKeyResponseAwsQuerySerializer()
      : super('CreateAccessKeyResponse');

  @override
  Iterable<Type> get types => const [
        CreateAccessKeyResponse,
        _$CreateAccessKeyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateAccessKeyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccessKeyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessKey':
          result.accessKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AccessKey),
          ) as AccessKey));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateAccessKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateAccessKeyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateAccessKeyResponse(:accessKey) = object;
    result$
      ..add(const _i2.XmlElementName('AccessKey'))
      ..add(serializers.serialize(
        accessKey,
        specifiedType: const FullType(AccessKey),
      ));
    return result$;
  }
}
