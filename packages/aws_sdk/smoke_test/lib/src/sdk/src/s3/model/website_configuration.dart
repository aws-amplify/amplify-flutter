// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.website_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/error_document.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/index_document.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/redirect_all_requests_to.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/routing_rule.dart' as _i5;

part 'website_configuration.g.dart';

/// Specifies website configuration parameters for an Amazon S3 bucket.
abstract class WebsiteConfiguration
    with _i1.AWSEquatable<WebsiteConfiguration>
    implements Built<WebsiteConfiguration, WebsiteConfigurationBuilder> {
  /// Specifies website configuration parameters for an Amazon S3 bucket.
  factory WebsiteConfiguration({
    _i2.ErrorDocument? errorDocument,
    _i3.IndexDocument? indexDocument,
    _i4.RedirectAllRequestsTo? redirectAllRequestsTo,
    List<_i5.RoutingRule>? routingRules,
  }) {
    return _$WebsiteConfiguration._(
      errorDocument: errorDocument,
      indexDocument: indexDocument,
      redirectAllRequestsTo: redirectAllRequestsTo,
      routingRules: routingRules == null ? null : _i6.BuiltList(routingRules),
    );
  }

  /// Specifies website configuration parameters for an Amazon S3 bucket.
  factory WebsiteConfiguration.build(
          [void Function(WebsiteConfigurationBuilder) updates]) =
      _$WebsiteConfiguration;

  const WebsiteConfiguration._();

  static const List<_i7.SmithySerializer<WebsiteConfiguration>> serializers = [
    WebsiteConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(WebsiteConfigurationBuilder b) {}

  /// The name of the error document for the website.
  _i2.ErrorDocument? get errorDocument;

  /// The name of the index document for the website.
  _i3.IndexDocument? get indexDocument;

  /// The redirect behavior for every request to this bucket's website endpoint.
  ///
  /// If you specify this property, you can't specify any other property.
  _i4.RedirectAllRequestsTo? get redirectAllRequestsTo;

  /// Rules that define when a redirect is applied and the redirect behavior.
  _i6.BuiltList<_i5.RoutingRule>? get routingRules;
  @override
  List<Object?> get props => [
        errorDocument,
        indexDocument,
        redirectAllRequestsTo,
        routingRules,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('WebsiteConfiguration')
      ..add(
        'errorDocument',
        errorDocument,
      )
      ..add(
        'indexDocument',
        indexDocument,
      )
      ..add(
        'redirectAllRequestsTo',
        redirectAllRequestsTo,
      )
      ..add(
        'routingRules',
        routingRules,
      );
    return helper.toString();
  }
}

class WebsiteConfigurationRestXmlSerializer
    extends _i7.StructuredSmithySerializer<WebsiteConfiguration> {
  const WebsiteConfigurationRestXmlSerializer() : super('WebsiteConfiguration');

  @override
  Iterable<Type> get types => const [
        WebsiteConfiguration,
        _$WebsiteConfiguration,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  WebsiteConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebsiteConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ErrorDocument':
          result.errorDocument.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ErrorDocument),
          ) as _i2.ErrorDocument));
        case 'IndexDocument':
          result.indexDocument.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IndexDocument),
          ) as _i3.IndexDocument));
        case 'RedirectAllRequestsTo':
          result.redirectAllRequestsTo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.RedirectAllRequestsTo),
          ) as _i4.RedirectAllRequestsTo));
        case 'RoutingRules':
          result.routingRules.replace(
              (const _i7.XmlBuiltListSerializer(memberName: 'RoutingRule')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i5.RoutingRule)],
            ),
          ) as _i6.BuiltList<_i5.RoutingRule>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    WebsiteConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'WebsiteConfiguration',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final WebsiteConfiguration(
      :errorDocument,
      :indexDocument,
      :redirectAllRequestsTo,
      :routingRules
    ) = object;
    if (errorDocument != null) {
      result$
        ..add(const _i7.XmlElementName('ErrorDocument'))
        ..add(serializers.serialize(
          errorDocument,
          specifiedType: const FullType(_i2.ErrorDocument),
        ));
    }
    if (indexDocument != null) {
      result$
        ..add(const _i7.XmlElementName('IndexDocument'))
        ..add(serializers.serialize(
          indexDocument,
          specifiedType: const FullType(_i3.IndexDocument),
        ));
    }
    if (redirectAllRequestsTo != null) {
      result$
        ..add(const _i7.XmlElementName('RedirectAllRequestsTo'))
        ..add(serializers.serialize(
          redirectAllRequestsTo,
          specifiedType: const FullType(_i4.RedirectAllRequestsTo),
        ));
    }
    if (routingRules != null) {
      result$
        ..add(const _i7.XmlElementName('RoutingRules'))
        ..add(const _i7.XmlBuiltListSerializer(memberName: 'RoutingRule')
            .serialize(
          serializers,
          routingRules,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.RoutingRule)],
          ),
        ));
    }
    return result$;
  }
}
