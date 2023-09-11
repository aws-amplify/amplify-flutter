// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_website_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/error_document.dart';
import 'package:smoke_test/src/sdk/src/s3/model/index_document.dart';
import 'package:smoke_test/src/sdk/src/s3/model/redirect_all_requests_to.dart';
import 'package:smoke_test/src/sdk/src/s3/model/routing_rule.dart';

part 'get_bucket_website_output.g.dart';

abstract class GetBucketWebsiteOutput
    with _i1.AWSEquatable<GetBucketWebsiteOutput>
    implements Built<GetBucketWebsiteOutput, GetBucketWebsiteOutputBuilder> {
  factory GetBucketWebsiteOutput({
    RedirectAllRequestsTo? redirectAllRequestsTo,
    IndexDocument? indexDocument,
    ErrorDocument? errorDocument,
    List<RoutingRule>? routingRules,
  }) {
    return _$GetBucketWebsiteOutput._(
      redirectAllRequestsTo: redirectAllRequestsTo,
      indexDocument: indexDocument,
      errorDocument: errorDocument,
      routingRules: routingRules == null ? null : _i2.BuiltList(routingRules),
    );
  }

  factory GetBucketWebsiteOutput.build(
          [void Function(GetBucketWebsiteOutputBuilder) updates]) =
      _$GetBucketWebsiteOutput;

  const GetBucketWebsiteOutput._();

  /// Constructs a [GetBucketWebsiteOutput] from a [payload] and [response].
  factory GetBucketWebsiteOutput.fromResponse(
    GetBucketWebsiteOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetBucketWebsiteOutput>> serializers =
      [GetBucketWebsiteOutputRestXmlSerializer()];

  /// Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  RedirectAllRequestsTo? get redirectAllRequestsTo;

  /// The name of the index document for the website (for example `index.html`).
  IndexDocument? get indexDocument;

  /// The object key name of the website error document to use for 4XX class errors.
  ErrorDocument? get errorDocument;

  /// Rules that define when a redirect is applied and the redirect behavior.
  _i2.BuiltList<RoutingRule>? get routingRules;
  @override
  List<Object?> get props => [
        redirectAllRequestsTo,
        indexDocument,
        errorDocument,
        routingRules,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketWebsiteOutput')
      ..add(
        'redirectAllRequestsTo',
        redirectAllRequestsTo,
      )
      ..add(
        'indexDocument',
        indexDocument,
      )
      ..add(
        'errorDocument',
        errorDocument,
      )
      ..add(
        'routingRules',
        routingRules,
      );
    return helper.toString();
  }
}

class GetBucketWebsiteOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GetBucketWebsiteOutput> {
  const GetBucketWebsiteOutputRestXmlSerializer()
      : super('GetBucketWebsiteOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketWebsiteOutput,
        _$GetBucketWebsiteOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketWebsiteOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketWebsiteOutputBuilder();
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
            specifiedType: const FullType(ErrorDocument),
          ) as ErrorDocument));
        case 'IndexDocument':
          result.indexDocument.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IndexDocument),
          ) as IndexDocument));
        case 'RedirectAllRequestsTo':
          result.redirectAllRequestsTo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RedirectAllRequestsTo),
          ) as RedirectAllRequestsTo));
        case 'RoutingRules':
          result.routingRules.replace(
              (const _i3.XmlBuiltListSerializer(memberName: 'RoutingRule')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RoutingRule)],
            ),
          ) as _i2.BuiltList<RoutingRule>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketWebsiteOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'WebsiteConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketWebsiteOutput(
      :errorDocument,
      :indexDocument,
      :redirectAllRequestsTo,
      :routingRules
    ) = object;
    if (errorDocument != null) {
      result$
        ..add(const _i3.XmlElementName('ErrorDocument'))
        ..add(serializers.serialize(
          errorDocument,
          specifiedType: const FullType(ErrorDocument),
        ));
    }
    if (indexDocument != null) {
      result$
        ..add(const _i3.XmlElementName('IndexDocument'))
        ..add(serializers.serialize(
          indexDocument,
          specifiedType: const FullType(IndexDocument),
        ));
    }
    if (redirectAllRequestsTo != null) {
      result$
        ..add(const _i3.XmlElementName('RedirectAllRequestsTo'))
        ..add(serializers.serialize(
          redirectAllRequestsTo,
          specifiedType: const FullType(RedirectAllRequestsTo),
        ));
    }
    if (routingRules != null) {
      result$
        ..add(const _i3.XmlElementName('RoutingRules'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'RoutingRule')
            .serialize(
          serializers,
          routingRules,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(RoutingRule)],
          ),
        ));
    }
    return result$;
  }
}
