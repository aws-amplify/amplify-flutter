// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.list_bucket_inventory_configurations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_configuration.dart'
    as _i2;

part 'list_bucket_inventory_configurations_output.g.dart';

abstract class ListBucketInventoryConfigurationsOutput
    with
        _i1.AWSEquatable<ListBucketInventoryConfigurationsOutput>
    implements
        Built<ListBucketInventoryConfigurationsOutput,
            ListBucketInventoryConfigurationsOutputBuilder> {
  factory ListBucketInventoryConfigurationsOutput({
    String? continuationToken,
    List<_i2.InventoryConfiguration>? inventoryConfigurationList,
    bool? isTruncated,
    String? nextContinuationToken,
  }) {
    return _$ListBucketInventoryConfigurationsOutput._(
      continuationToken: continuationToken,
      inventoryConfigurationList: inventoryConfigurationList == null
          ? null
          : _i3.BuiltList(inventoryConfigurationList),
      isTruncated: isTruncated,
      nextContinuationToken: nextContinuationToken,
    );
  }

  factory ListBucketInventoryConfigurationsOutput.build(
      [void Function(ListBucketInventoryConfigurationsOutputBuilder)
          updates]) = _$ListBucketInventoryConfigurationsOutput;

  const ListBucketInventoryConfigurationsOutput._();

  /// Constructs a [ListBucketInventoryConfigurationsOutput] from a [payload] and [response].
  factory ListBucketInventoryConfigurationsOutput.fromResponse(
    ListBucketInventoryConfigurationsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<ListBucketInventoryConfigurationsOutput>>
      serializers = [
    ListBucketInventoryConfigurationsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketInventoryConfigurationsOutputBuilder b) {}

  /// If sent in the request, the marker that is used as a starting point for this inventory configuration list response.
  String? get continuationToken;

  /// The list of inventory configurations for a bucket.
  _i3.BuiltList<_i2.InventoryConfiguration>? get inventoryConfigurationList;

  /// Tells whether the returned list of inventory configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken is provided for a subsequent request.
  bool? get isTruncated;

  /// The marker used to continue this inventory configuration listing. Use the `NextContinuationToken` from this response to continue the listing in a subsequent request. The continuation token is an opaque value that Amazon S3 understands.
  String? get nextContinuationToken;
  @override
  List<Object?> get props => [
        continuationToken,
        inventoryConfigurationList,
        isTruncated,
        nextContinuationToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketInventoryConfigurationsOutput')
          ..add(
            'continuationToken',
            continuationToken,
          )
          ..add(
            'inventoryConfigurationList',
            inventoryConfigurationList,
          )
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'nextContinuationToken',
            nextContinuationToken,
          );
    return helper.toString();
  }
}

class ListBucketInventoryConfigurationsOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<ListBucketInventoryConfigurationsOutput> {
  const ListBucketInventoryConfigurationsOutputRestXmlSerializer()
      : super('ListBucketInventoryConfigurationsOutput');

  @override
  Iterable<Type> get types => const [
        ListBucketInventoryConfigurationsOutput,
        _$ListBucketInventoryConfigurationsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketInventoryConfigurationsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBucketInventoryConfigurationsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ContinuationToken':
          result.continuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InventoryConfiguration':
          result.inventoryConfigurationList.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InventoryConfiguration),
          ) as _i2.InventoryConfiguration));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NextContinuationToken':
          result.nextContinuationToken = (serializers.deserialize(
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
    ListBucketInventoryConfigurationsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListInventoryConfigurationsResult',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListBucketInventoryConfigurationsOutput(
      :continuationToken,
      :inventoryConfigurationList,
      :isTruncated,
      :nextContinuationToken
    ) = object;
    if (continuationToken != null) {
      result$
        ..add(const _i4.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          continuationToken,
          specifiedType: const FullType(String),
        ));
    }
    if (inventoryConfigurationList != null) {
      result$.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'InventoryConfiguration')
              .serialize(
        serializers,
        inventoryConfigurationList,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.InventoryConfiguration)],
        ),
      ));
    }
    if (isTruncated != null) {
      result$
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (nextContinuationToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextContinuationToken'))
        ..add(serializers.serialize(
          nextContinuationToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
