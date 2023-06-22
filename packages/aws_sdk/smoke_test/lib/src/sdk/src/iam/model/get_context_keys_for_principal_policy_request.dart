// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_context_keys_for_principal_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_context_keys_for_principal_policy_request.g.dart';

abstract class GetContextKeysForPrincipalPolicyRequest
    with
        _i1.HttpInput<GetContextKeysForPrincipalPolicyRequest>,
        _i2.AWSEquatable<GetContextKeysForPrincipalPolicyRequest>
    implements
        Built<GetContextKeysForPrincipalPolicyRequest,
            GetContextKeysForPrincipalPolicyRequestBuilder> {
  factory GetContextKeysForPrincipalPolicyRequest({
    required String policySourceArn,
    List<String>? policyInputList,
  }) {
    return _$GetContextKeysForPrincipalPolicyRequest._(
      policySourceArn: policySourceArn,
      policyInputList:
          policyInputList == null ? null : _i3.BuiltList(policyInputList),
    );
  }

  factory GetContextKeysForPrincipalPolicyRequest.build(
      [void Function(GetContextKeysForPrincipalPolicyRequestBuilder)
          updates]) = _$GetContextKeysForPrincipalPolicyRequest;

  const GetContextKeysForPrincipalPolicyRequest._();

  factory GetContextKeysForPrincipalPolicyRequest.fromRequest(
    GetContextKeysForPrincipalPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetContextKeysForPrincipalPolicyRequest>>
      serializers = [
    GetContextKeysForPrincipalPolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetContextKeysForPrincipalPolicyRequestBuilder b) {}

  /// The ARN of a user, group, or role whose policies contain the context keys that you want listed. If you specify a user, the list includes context keys that are found in all policies that are attached to the user. The list also includes all groups that the user is a member of. If you pick a group or a role, then it includes only those context keys that are found in policies attached to that entity. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policySourceArn;

  /// An optional list of additional policies for which you want the list of context keys that are referenced.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  _i3.BuiltList<String>? get policyInputList;
  @override
  GetContextKeysForPrincipalPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policySourceArn,
        policyInputList,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetContextKeysForPrincipalPolicyRequest')
          ..add(
            'policySourceArn',
            policySourceArn,
          )
          ..add(
            'policyInputList',
            policyInputList,
          );
    return helper.toString();
  }
}

class GetContextKeysForPrincipalPolicyRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GetContextKeysForPrincipalPolicyRequest> {
  const GetContextKeysForPrincipalPolicyRequestAwsQuerySerializer()
      : super('GetContextKeysForPrincipalPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetContextKeysForPrincipalPolicyRequest,
        _$GetContextKeysForPrincipalPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetContextKeysForPrincipalPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContextKeysForPrincipalPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicySourceArn':
          result.policySourceArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyInputList':
          result.policyInputList.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetContextKeysForPrincipalPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetContextKeysForPrincipalPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetContextKeysForPrincipalPolicyRequest(
      :policySourceArn,
      :policyInputList
    ) = object;
    result$
      ..add(const _i1.XmlElementName('PolicySourceArn'))
      ..add(serializers.serialize(
        policySourceArn,
        specifiedType: const FullType(String),
      ));
    if (policyInputList != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyInputList'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policyInputList,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
