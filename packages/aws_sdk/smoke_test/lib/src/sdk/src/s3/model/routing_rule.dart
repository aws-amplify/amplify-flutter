// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.routing_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/condition.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/redirect.dart' as _i3;

part 'routing_rule.g.dart';

/// Specifies the redirect behavior and when a redirect is applied. For more information about routing rules, see [Configuring advanced conditional redirects](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects) in the _Amazon S3 User Guide_.
abstract class RoutingRule
    with _i1.AWSEquatable<RoutingRule>
    implements Built<RoutingRule, RoutingRuleBuilder> {
  /// Specifies the redirect behavior and when a redirect is applied. For more information about routing rules, see [Configuring advanced conditional redirects](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects) in the _Amazon S3 User Guide_.
  factory RoutingRule({
    _i2.Condition? condition,
    required _i3.Redirect redirect,
  }) {
    return _$RoutingRule._(
      condition: condition,
      redirect: redirect,
    );
  }

  /// Specifies the redirect behavior and when a redirect is applied. For more information about routing rules, see [Configuring advanced conditional redirects](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects) in the _Amazon S3 User Guide_.
  factory RoutingRule.build([void Function(RoutingRuleBuilder) updates]) =
      _$RoutingRule;

  const RoutingRule._();

  static const List<_i4.SmithySerializer> serializers = [
    RoutingRuleRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RoutingRuleBuilder b) {}

  /// A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the `/docs` folder, redirect to the `/documents` folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
  _i2.Condition? get condition;

  /// Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can specify a different error code to return.
  _i3.Redirect get redirect;
  @override
  List<Object?> get props => [
        condition,
        redirect,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RoutingRule');
    helper.add(
      'condition',
      condition,
    );
    helper.add(
      'redirect',
      redirect,
    );
    return helper.toString();
  }
}

class RoutingRuleRestXmlSerializer
    extends _i4.StructuredSmithySerializer<RoutingRule> {
  const RoutingRuleRestXmlSerializer() : super('RoutingRule');

  @override
  Iterable<Type> get types => const [
        RoutingRule,
        _$RoutingRule,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RoutingRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoutingRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Condition':
          if (value != null) {
            result.condition.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Condition),
            ) as _i2.Condition));
          }
          break;
        case 'Redirect':
          result.redirect.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Redirect),
          ) as _i3.Redirect));
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
    final payload = (object as RoutingRule);
    final result = <Object?>[
      const _i4.XmlElementName(
        'RoutingRule',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.condition != null) {
      result
        ..add(const _i4.XmlElementName('Condition'))
        ..add(serializers.serialize(
          payload.condition!,
          specifiedType: const FullType(_i2.Condition),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Redirect'))
      ..add(serializers.serialize(
        payload.redirect,
        specifiedType: const FullType(_i3.Redirect),
      ));
    return result;
  }
}
