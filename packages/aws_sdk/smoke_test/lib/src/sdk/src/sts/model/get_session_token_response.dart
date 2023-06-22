// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_session_token_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/credentials.dart' as _i2;

part 'get_session_token_response.g.dart';

/// Contains the response to a successful GetSessionToken request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
abstract class GetSessionTokenResponse
    with _i1.AWSEquatable<GetSessionTokenResponse>
    implements Built<GetSessionTokenResponse, GetSessionTokenResponseBuilder> {
  /// Contains the response to a successful GetSessionToken request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory GetSessionTokenResponse({_i2.Credentials? credentials}) {
    return _$GetSessionTokenResponse._(credentials: credentials);
  }

  /// Contains the response to a successful GetSessionToken request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
  factory GetSessionTokenResponse.build(
          [void Function(GetSessionTokenResponseBuilder) updates]) =
      _$GetSessionTokenResponse;

  const GetSessionTokenResponse._();

  /// Constructs a [GetSessionTokenResponse] from a [payload] and [response].
  factory GetSessionTokenResponse.fromResponse(
    GetSessionTokenResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetSessionTokenResponse>> serializers =
      [GetSessionTokenResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSessionTokenResponseBuilder b) {}

  /// The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.
  ///
  /// The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.
  _i2.Credentials? get credentials;
  @override
  List<Object?> get props => [credentials];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSessionTokenResponse')
      ..add(
        'credentials',
        credentials,
      );
    return helper.toString();
  }
}

class GetSessionTokenResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetSessionTokenResponse> {
  const GetSessionTokenResponseAwsQuerySerializer()
      : super('GetSessionTokenResponse');

  @override
  Iterable<Type> get types => const [
        GetSessionTokenResponse,
        _$GetSessionTokenResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSessionTokenResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSessionTokenResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Credentials':
          result.credentials.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Credentials),
          ) as _i2.Credentials));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetSessionTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetSessionTokenResponseResponse',
        _i3.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetSessionTokenResponse(:credentials) = object;
    if (credentials != null) {
      result$
        ..add(const _i3.XmlElementName('Credentials'))
        ..add(serializers.serialize(
          credentials,
          specifiedType: const FullType(_i2.Credentials),
        ));
    }
    return result$;
  }
}
