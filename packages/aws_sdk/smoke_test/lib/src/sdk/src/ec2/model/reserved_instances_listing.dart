// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instances_listing; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_count.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/listing_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'reserved_instances_listing.g.dart';

/// Describes a Reserved Instance listing.
abstract class ReservedInstancesListing
    with _i1.AWSEquatable<ReservedInstancesListing>
    implements
        Built<ReservedInstancesListing, ReservedInstancesListingBuilder> {
  /// Describes a Reserved Instance listing.
  factory ReservedInstancesListing({
    String? clientToken,
    DateTime? createDate,
    List<InstanceCount>? instanceCounts,
    List<PriceSchedule>? priceSchedules,
    String? reservedInstancesId,
    String? reservedInstancesListingId,
    ListingStatus? status,
    String? statusMessage,
    List<Tag>? tags,
    DateTime? updateDate,
  }) {
    return _$ReservedInstancesListing._(
      clientToken: clientToken,
      createDate: createDate,
      instanceCounts:
          instanceCounts == null ? null : _i2.BuiltList(instanceCounts),
      priceSchedules:
          priceSchedules == null ? null : _i2.BuiltList(priceSchedules),
      reservedInstancesId: reservedInstancesId,
      reservedInstancesListingId: reservedInstancesListingId,
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i2.BuiltList(tags),
      updateDate: updateDate,
    );
  }

  /// Describes a Reserved Instance listing.
  factory ReservedInstancesListing.build(
          [void Function(ReservedInstancesListingBuilder) updates]) =
      _$ReservedInstancesListing;

  const ReservedInstancesListing._();

  static const List<_i3.SmithySerializer<ReservedInstancesListing>>
      serializers = [ReservedInstancesListingEc2QuerySerializer()];

  /// A unique, case-sensitive key supplied by the client to ensure that the request is idempotent. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The time the listing was created.
  DateTime? get createDate;

  /// The number of instances in this state.
  _i2.BuiltList<InstanceCount>? get instanceCounts;

  /// The price of the Reserved Instance listing.
  _i2.BuiltList<PriceSchedule>? get priceSchedules;

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;

  /// The ID of the Reserved Instance listing.
  String? get reservedInstancesListingId;

  /// The status of the Reserved Instance listing.
  ListingStatus? get status;

  /// The reason for the current status of the Reserved Instance listing. The response can be blank.
  String? get statusMessage;

  /// Any tags assigned to the resource.
  _i2.BuiltList<Tag>? get tags;

  /// The last modified timestamp of the listing.
  DateTime? get updateDate;
  @override
  List<Object?> get props => [
        clientToken,
        createDate,
        instanceCounts,
        priceSchedules,
        reservedInstancesId,
        reservedInstancesListingId,
        status,
        statusMessage,
        tags,
        updateDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesListing')
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'instanceCounts',
        instanceCounts,
      )
      ..add(
        'priceSchedules',
        priceSchedules,
      )
      ..add(
        'reservedInstancesId',
        reservedInstancesId,
      )
      ..add(
        'reservedInstancesListingId',
        reservedInstancesListingId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'updateDate',
        updateDate,
      );
    return helper.toString();
  }
}

class ReservedInstancesListingEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReservedInstancesListing> {
  const ReservedInstancesListingEc2QuerySerializer()
      : super('ReservedInstancesListing');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesListing,
        _$ReservedInstancesListing,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesListing deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesListingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'instanceCounts':
          result.instanceCounts.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceCount)],
            ),
          ) as _i2.BuiltList<InstanceCount>));
        case 'priceSchedules':
          result.priceSchedules.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PriceSchedule)],
            ),
          ) as _i2.BuiltList<PriceSchedule>));
        case 'reservedInstancesId':
          result.reservedInstancesId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'reservedInstancesListingId':
          result.reservedInstancesListingId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ListingStatus),
          ) as ListingStatus);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'updateDate':
          result.updateDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReservedInstancesListing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ReservedInstancesListingResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstancesListing(
      :clientToken,
      :createDate,
      :instanceCounts,
      :priceSchedules,
      :reservedInstancesId,
      :reservedInstancesListingId,
      :status,
      :statusMessage,
      :tags,
      :updateDate
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i3.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (instanceCounts != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceCounts'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceCounts,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceCount)],
          ),
        ));
    }
    if (priceSchedules != null) {
      result$
        ..add(const _i3.XmlElementName('PriceSchedules'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          priceSchedules,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PriceSchedule)],
          ),
        ));
    }
    if (reservedInstancesId != null) {
      result$
        ..add(const _i3.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    if (reservedInstancesListingId != null) {
      result$
        ..add(const _i3.XmlElementName('ReservedInstancesListingId'))
        ..add(serializers.serialize(
          reservedInstancesListingId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ListingStatus),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (updateDate != null) {
      result$
        ..add(const _i3.XmlElementName('UpdateDate'))
        ..add(serializers.serialize(
          updateDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
