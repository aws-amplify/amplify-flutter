// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_user_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/user.dart';

part 'create_user_response.g.dart';

/// Contains the response to a successful CreateUser request.
abstract class CreateUserResponse
    with _i1.AWSEquatable<CreateUserResponse>
    implements Built<CreateUserResponse, CreateUserResponseBuilder> {
  /// Contains the response to a successful CreateUser request.
  factory CreateUserResponse({User? user}) {
    return _$CreateUserResponse._(user: user);
  }

  /// Contains the response to a successful CreateUser request.
  factory CreateUserResponse.build(
          [void Function(CreateUserResponseBuilder) updates]) =
      _$CreateUserResponse;

  const CreateUserResponse._();

  /// Constructs a [CreateUserResponse] from a [payload] and [response].
  factory CreateUserResponse.fromResponse(
    CreateUserResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateUserResponse>> serializers = [
    CreateUserResponseAwsQuerySerializer()
  ];

  /// A structure with details about the new IAM user.
  User? get user;
  @override
  List<Object?> get props => [user];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateUserResponse')
      ..add(
        'user',
        user,
      );
    return helper.toString();
  }
}

class CreateUserResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateUserResponse> {
  const CreateUserResponseAwsQuerySerializer() : super('CreateUserResponse');

  @override
  Iterable<Type> get types => const [
        CreateUserResponse,
        _$CreateUserResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateUserResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUserResponseBuilder();
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
        case 'User':
          result.user.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateUserResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateUserResponse(:user) = object;
    if (user != null) {
      result$
        ..add(const _i2.XmlElementName('User'))
        ..add(serializers.serialize(
          user,
          specifiedType: const FullType(User),
        ));
    }
    return result$;
  }
}
