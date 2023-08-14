// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.sts.model.provided_context; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'provided_context.g.dart';

/// Reserved for future use.
abstract class ProvidedContext
    with _i1.AWSEquatable<ProvidedContext>
    implements Built<ProvidedContext, ProvidedContextBuilder> {
  /// Reserved for future use.
  factory ProvidedContext({
    String? providerArn,
    String? contextAssertion,
  }) {
    return _$ProvidedContext._(
      providerArn: providerArn,
      contextAssertion: contextAssertion,
    );
  }

  /// Reserved for future use.
  factory ProvidedContext.build(
      [void Function(ProvidedContextBuilder) updates]) = _$ProvidedContext;

  const ProvidedContext._();

  static const List<_i2.SmithySerializer<ProvidedContext>> serializers = [
    ProvidedContextAwsQuerySerializer()
  ];

  /// Reserved for future use.
  String? get providerArn;

  /// Reserved for future use.
  String? get contextAssertion;
  @override
  List<Object?> get props => [
        providerArn,
        contextAssertion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvidedContext')
      ..add(
        'providerArn',
        providerArn,
      )
      ..add(
        'contextAssertion',
        contextAssertion,
      );
    return helper.toString();
  }
}

class ProvidedContextAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ProvidedContext> {
  const ProvidedContextAwsQuerySerializer() : super('ProvidedContext');

  @override
  Iterable<Type> get types => const [
        ProvidedContext,
        _$ProvidedContext,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ProvidedContext deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvidedContextBuilder();
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
        case 'ProviderArn':
          result.providerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ContextAssertion':
          result.contextAssertion = (serializers.deserialize(
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
    ProvidedContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProvidedContextResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final ProvidedContext(:providerArn, :contextAssertion) = object;
    if (providerArn != null) {
      result$
        ..add(const _i2.XmlElementName('ProviderArn'))
        ..add(serializers.serialize(
          providerArn,
          specifiedType: const FullType(String),
        ));
    }
    if (contextAssertion != null) {
      result$
        ..add(const _i2.XmlElementName('ContextAssertion'))
        ..add(serializers.serialize(
          contextAssertion,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
