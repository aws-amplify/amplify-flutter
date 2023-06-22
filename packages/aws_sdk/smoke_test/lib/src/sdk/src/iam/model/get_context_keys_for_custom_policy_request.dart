// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_context_keys_for_custom_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_context_keys_for_custom_policy_request.g.dart';

abstract class GetContextKeysForCustomPolicyRequest
    with
        _i1.HttpInput<GetContextKeysForCustomPolicyRequest>,
        _i2.AWSEquatable<GetContextKeysForCustomPolicyRequest>
    implements
        Built<GetContextKeysForCustomPolicyRequest,
            GetContextKeysForCustomPolicyRequestBuilder> {
  factory GetContextKeysForCustomPolicyRequest(
      {required List<String> policyInputList}) {
    return _$GetContextKeysForCustomPolicyRequest._(
        policyInputList: _i3.BuiltList(policyInputList));
  }

  factory GetContextKeysForCustomPolicyRequest.build(
      [void Function(GetContextKeysForCustomPolicyRequestBuilder)
          updates]) = _$GetContextKeysForCustomPolicyRequest;

  const GetContextKeysForCustomPolicyRequest._();

  factory GetContextKeysForCustomPolicyRequest.fromRequest(
    GetContextKeysForCustomPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetContextKeysForCustomPolicyRequest>>
      serializers = [GetContextKeysForCustomPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetContextKeysForCustomPolicyRequestBuilder b) {}

  /// A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  _i3.BuiltList<String> get policyInputList;
  @override
  GetContextKeysForCustomPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [policyInputList];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetContextKeysForCustomPolicyRequest')
          ..add(
            'policyInputList',
            policyInputList,
          );
    return helper.toString();
  }
}

class GetContextKeysForCustomPolicyRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<GetContextKeysForCustomPolicyRequest> {
  const GetContextKeysForCustomPolicyRequestAwsQuerySerializer()
      : super('GetContextKeysForCustomPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetContextKeysForCustomPolicyRequest,
        _$GetContextKeysForCustomPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetContextKeysForCustomPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContextKeysForCustomPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    GetContextKeysForCustomPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetContextKeysForCustomPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetContextKeysForCustomPolicyRequest(:policyInputList) = object;
    result$
      ..add(const _i1.XmlElementName('PolicyInputList'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        policyInputList,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result$;
  }
}
