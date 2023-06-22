// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.untag_saml_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'untag_saml_provider_request.g.dart';

abstract class UntagSamlProviderRequest
    with
        _i1.HttpInput<UntagSamlProviderRequest>,
        _i2.AWSEquatable<UntagSamlProviderRequest>
    implements
        Built<UntagSamlProviderRequest, UntagSamlProviderRequestBuilder> {
  factory UntagSamlProviderRequest({
    required String samlProviderArn,
    required List<String> tagKeys,
  }) {
    return _$UntagSamlProviderRequest._(
      samlProviderArn: samlProviderArn,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  factory UntagSamlProviderRequest.build(
          [void Function(UntagSamlProviderRequestBuilder) updates]) =
      _$UntagSamlProviderRequest;

  const UntagSamlProviderRequest._();

  factory UntagSamlProviderRequest.fromRequest(
    UntagSamlProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UntagSamlProviderRequest>>
      serializers = [UntagSamlProviderRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagSamlProviderRequestBuilder b) {}

  /// The ARN of the SAML identity provider in IAM from which you want to remove tags.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get samlProviderArn;

  /// A list of key names as a simple array of strings. The tags with matching keys are removed from the specified SAML identity provider.
  _i3.BuiltList<String> get tagKeys;
  @override
  UntagSamlProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        samlProviderArn,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagSamlProviderRequest')
      ..add(
        'samlProviderArn',
        samlProviderArn,
      )
      ..add(
        'tagKeys',
        tagKeys,
      );
    return helper.toString();
  }
}

class UntagSamlProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UntagSamlProviderRequest> {
  const UntagSamlProviderRequestAwsQuerySerializer()
      : super('UntagSamlProviderRequest');

  @override
  Iterable<Type> get types => const [
        UntagSamlProviderRequest,
        _$UntagSamlProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UntagSamlProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UntagSamlProviderRequestBuilder();
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
        case 'TagKeys':
          result.tagKeys.replace((const _i1.XmlBuiltListSerializer(
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
    UntagSamlProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UntagSamlProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UntagSamlProviderRequest(:samlProviderArn, :tagKeys) = object;
    result$
      ..add(const _i1.XmlElementName('SAMLProviderArn'))
      ..add(serializers.serialize(
        samlProviderArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('TagKeys'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tagKeys,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result$;
  }
}
