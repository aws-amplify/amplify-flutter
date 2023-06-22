// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_caller_identity_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_caller_identity_response.g.dart';

/// Contains the response to a successful GetCallerIdentity request, including information about the entity making the request.
abstract class GetCallerIdentityResponse
    with _i1.AWSEquatable<GetCallerIdentityResponse>
    implements
        Built<GetCallerIdentityResponse, GetCallerIdentityResponseBuilder> {
  /// Contains the response to a successful GetCallerIdentity request, including information about the entity making the request.
  factory GetCallerIdentityResponse({
    String? userId,
    String? account,
    String? arn,
  }) {
    return _$GetCallerIdentityResponse._(
      userId: userId,
      account: account,
      arn: arn,
    );
  }

  /// Contains the response to a successful GetCallerIdentity request, including information about the entity making the request.
  factory GetCallerIdentityResponse.build(
          [void Function(GetCallerIdentityResponseBuilder) updates]) =
      _$GetCallerIdentityResponse;

  const GetCallerIdentityResponse._();

  /// Constructs a [GetCallerIdentityResponse] from a [payload] and [response].
  factory GetCallerIdentityResponse.fromResponse(
    GetCallerIdentityResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetCallerIdentityResponse>>
      serializers = [GetCallerIdentityResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCallerIdentityResponseBuilder b) {}

  /// The unique identifier of the calling entity. The exact value depends on the type of entity that is making the call. The values returned are those listed in the **aws:userid** column in the [Principal table](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable) found on the **Policy Variables** reference page in the _IAM User Guide_.
  String? get userId;

  /// The Amazon Web Services account ID number of the account that owns or contains the calling entity.
  String? get account;

  /// The Amazon Web Services ARN associated with the calling entity.
  String? get arn;
  @override
  List<Object?> get props => [
        userId,
        account,
        arn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCallerIdentityResponse')
      ..add(
        'userId',
        userId,
      )
      ..add(
        'account',
        account,
      )
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class GetCallerIdentityResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetCallerIdentityResponse> {
  const GetCallerIdentityResponseAwsQuerySerializer()
      : super('GetCallerIdentityResponse');

  @override
  Iterable<Type> get types => const [
        GetCallerIdentityResponse,
        _$GetCallerIdentityResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetCallerIdentityResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCallerIdentityResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserId':
          result.userId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Account':
          result.account = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Arn':
          result.arn = (serializers.deserialize(
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
    GetCallerIdentityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetCallerIdentityResponseResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetCallerIdentityResponse(:userId, :account, :arn) = object;
    if (userId != null) {
      result$
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    if (account != null) {
      result$
        ..add(const _i2.XmlElementName('Account'))
        ..add(serializers.serialize(
          account,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
