// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_context_keys_for_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'get_context_keys_for_policy_response.g.dart';

/// Contains the response to a successful GetContextKeysForPrincipalPolicy or GetContextKeysForCustomPolicy request.
abstract class GetContextKeysForPolicyResponse
    with
        _i1.AWSEquatable<GetContextKeysForPolicyResponse>
    implements
        Built<GetContextKeysForPolicyResponse,
            GetContextKeysForPolicyResponseBuilder> {
  /// Contains the response to a successful GetContextKeysForPrincipalPolicy or GetContextKeysForCustomPolicy request.
  factory GetContextKeysForPolicyResponse({List<String>? contextKeyNames}) {
    return _$GetContextKeysForPolicyResponse._(
        contextKeyNames:
            contextKeyNames == null ? null : _i2.BuiltList(contextKeyNames));
  }

  /// Contains the response to a successful GetContextKeysForPrincipalPolicy or GetContextKeysForCustomPolicy request.
  factory GetContextKeysForPolicyResponse.build(
          [void Function(GetContextKeysForPolicyResponseBuilder) updates]) =
      _$GetContextKeysForPolicyResponse;

  const GetContextKeysForPolicyResponse._();

  /// Constructs a [GetContextKeysForPolicyResponse] from a [payload] and [response].
  factory GetContextKeysForPolicyResponse.fromResponse(
    GetContextKeysForPolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetContextKeysForPolicyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetContextKeysForPolicyResponseBuilder b) {}

  /// The list of context keys that are referenced in the input policies.
  _i2.BuiltList<String>? get contextKeyNames;
  @override
  List<Object?> get props => [contextKeyNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetContextKeysForPolicyResponse');
    helper.add(
      'contextKeyNames',
      contextKeyNames,
    );
    return helper.toString();
  }
}

class GetContextKeysForPolicyResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetContextKeysForPolicyResponse> {
  const GetContextKeysForPolicyResponseAwsQuerySerializer()
      : super('GetContextKeysForPolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetContextKeysForPolicyResponse,
        _$GetContextKeysForPolicyResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetContextKeysForPolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetContextKeysForPolicyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ContextKeyNames':
          if (value != null) {
            result.contextKeyNames.replace((const _i3.XmlBuiltListSerializer(
                    indexer: _i3.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
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
    final payload = (object as GetContextKeysForPolicyResponse);
    final result = <Object?>[
      const _i3.XmlElementName(
        'GetContextKeysForPolicyResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.contextKeyNames != null) {
      result
        ..add(const _i3.XmlElementName('ContextKeyNames'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.contextKeyNames!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
