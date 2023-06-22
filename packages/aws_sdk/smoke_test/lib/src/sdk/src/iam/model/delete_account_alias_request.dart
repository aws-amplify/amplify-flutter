// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_account_alias_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_account_alias_request.g.dart';

abstract class DeleteAccountAliasRequest
    with
        _i1.HttpInput<DeleteAccountAliasRequest>,
        _i2.AWSEquatable<DeleteAccountAliasRequest>
    implements
        Built<DeleteAccountAliasRequest, DeleteAccountAliasRequestBuilder> {
  factory DeleteAccountAliasRequest({required String accountAlias}) {
    return _$DeleteAccountAliasRequest._(accountAlias: accountAlias);
  }

  factory DeleteAccountAliasRequest.build(
          [void Function(DeleteAccountAliasRequestBuilder) updates]) =
      _$DeleteAccountAliasRequest;

  const DeleteAccountAliasRequest._();

  factory DeleteAccountAliasRequest.fromRequest(
    DeleteAccountAliasRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteAccountAliasRequest>>
      serializers = [DeleteAccountAliasRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteAccountAliasRequestBuilder b) {}

  /// The name of the account alias to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.
  String get accountAlias;
  @override
  DeleteAccountAliasRequest getPayload() => this;
  @override
  List<Object?> get props => [accountAlias];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteAccountAliasRequest')
      ..add(
        'accountAlias',
        accountAlias,
      );
    return helper.toString();
  }
}

class DeleteAccountAliasRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteAccountAliasRequest> {
  const DeleteAccountAliasRequestAwsQuerySerializer()
      : super('DeleteAccountAliasRequest');

  @override
  Iterable<Type> get types => const [
        DeleteAccountAliasRequest,
        _$DeleteAccountAliasRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteAccountAliasRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteAccountAliasRequestBuilder();
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
    DeleteAccountAliasRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteAccountAliasRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteAccountAliasRequest(:accountAlias) = object;
    result$
      ..add(const _i1.XmlElementName('AccountAlias'))
      ..add(serializers.serialize(
        accountAlias,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
