// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_account_alias_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_account_alias_request.g.dart';

abstract class CreateAccountAliasRequest
    with
        _i1.HttpInput<CreateAccountAliasRequest>,
        _i2.AWSEquatable<CreateAccountAliasRequest>
    implements
        Built<CreateAccountAliasRequest, CreateAccountAliasRequestBuilder> {
  factory CreateAccountAliasRequest({required String accountAlias}) {
    return _$CreateAccountAliasRequest._(accountAlias: accountAlias);
  }

  factory CreateAccountAliasRequest.build(
          [void Function(CreateAccountAliasRequestBuilder) updates]) =
      _$CreateAccountAliasRequest;

  const CreateAccountAliasRequest._();

  factory CreateAccountAliasRequest.fromRequest(
    CreateAccountAliasRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateAccountAliasRequest>>
      serializers = [CreateAccountAliasRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateAccountAliasRequestBuilder b) {}

  /// The account alias to create.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.
  String get accountAlias;
  @override
  CreateAccountAliasRequest getPayload() => this;
  @override
  List<Object?> get props => [accountAlias];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateAccountAliasRequest')
      ..add(
        'accountAlias',
        accountAlias,
      );
    return helper.toString();
  }
}

class CreateAccountAliasRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateAccountAliasRequest> {
  const CreateAccountAliasRequestAwsQuerySerializer()
      : super('CreateAccountAliasRequest');

  @override
  Iterable<Type> get types => const [
        CreateAccountAliasRequest,
        _$CreateAccountAliasRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateAccountAliasRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccountAliasRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountAlias':
          result.accountAlias = (serializers.deserialize(
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
    CreateAccountAliasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateAccountAliasRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateAccountAliasRequest(:accountAlias) = object;
    result$
      ..add(const _i1.XmlElementName('AccountAlias'))
      ..add(serializers.serialize(
        accountAlias,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
