// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instances; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';

part 'reserved_instances.g.dart';

/// Describes a Reserved Instance.
abstract class ReservedInstances
    with _i1.AWSEquatable<ReservedInstances>
    implements Built<ReservedInstances, ReservedInstancesBuilder> {
  /// Describes a Reserved Instance.
  factory ReservedInstances({
    String? availabilityZone,
    _i2.Int64? duration,
    DateTime? end,
    double? fixedPrice,
    int? instanceCount,
    InstanceType? instanceType,
    RiProductDescription? productDescription,
    String? reservedInstancesId,
    DateTime? start,
    ReservedInstanceState? state,
    double? usagePrice,
    CurrencyCodeValues? currencyCode,
    Tenancy? instanceTenancy,
    OfferingClassType? offeringClass,
    OfferingTypeValues? offeringType,
    List<RecurringCharge>? recurringCharges,
    Scope? scope,
    List<Tag>? tags,
  }) {
    duration ??= _i2.Int64.ZERO;
    fixedPrice ??= 0;
    instanceCount ??= 0;
    usagePrice ??= 0;
    return _$ReservedInstances._(
      availabilityZone: availabilityZone,
      duration: duration,
      end: end,
      fixedPrice: fixedPrice,
      instanceCount: instanceCount,
      instanceType: instanceType,
      productDescription: productDescription,
      reservedInstancesId: reservedInstancesId,
      start: start,
      state: state,
      usagePrice: usagePrice,
      currencyCode: currencyCode,
      instanceTenancy: instanceTenancy,
      offeringClass: offeringClass,
      offeringType: offeringType,
      recurringCharges:
          recurringCharges == null ? null : _i3.BuiltList(recurringCharges),
      scope: scope,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a Reserved Instance.
  factory ReservedInstances.build(
      [void Function(ReservedInstancesBuilder) updates]) = _$ReservedInstances;

  const ReservedInstances._();

  static const List<_i4.SmithySerializer<ReservedInstances>> serializers = [
    ReservedInstancesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesBuilder b) {
    b
      ..duration = _i2.Int64.ZERO
      ..fixedPrice = 0
      ..instanceCount = 0
      ..usagePrice = 0;
  }

  /// The Availability Zone in which the Reserved Instance can be used.
  String? get availabilityZone;

  /// The duration of the Reserved Instance, in seconds.
  _i2.Int64 get duration;

  /// The time when the Reserved Instance expires.
  DateTime? get end;

  /// The purchase price of the Reserved Instance.
  double get fixedPrice;

  /// The number of reservations purchased.
  int get instanceCount;

  /// The instance type on which the Reserved Instance can be used.
  InstanceType? get instanceType;

  /// The Reserved Instance product platform description.
  RiProductDescription? get productDescription;

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;

  /// The date and time the Reserved Instance started.
  DateTime? get start;

  /// The state of the Reserved Instance purchase.
  ReservedInstanceState? get state;

  /// The usage price of the Reserved Instance, per hour.
  double get usagePrice;

  /// The currency of the Reserved Instance. It's specified using ISO 4217 standard currency codes. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;

  /// The tenancy of the instance.
  Tenancy? get instanceTenancy;

  /// The offering class of the Reserved Instance.
  OfferingClassType? get offeringClass;

  /// The Reserved Instance offering type.
  OfferingTypeValues? get offeringType;

  /// The recurring charge tag assigned to the resource.
  _i3.BuiltList<RecurringCharge>? get recurringCharges;

  /// The scope of the Reserved Instance.
  Scope? get scope;

  /// Any tags assigned to the resource.
  _i3.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        availabilityZone,
        duration,
        end,
        fixedPrice,
        instanceCount,
        instanceType,
        productDescription,
        reservedInstancesId,
        start,
        state,
        usagePrice,
        currencyCode,
        instanceTenancy,
        offeringClass,
        offeringType,
        recurringCharges,
        scope,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstances')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'duration',
        duration,
      )
      ..add(
        'end',
        end,
      )
      ..add(
        'fixedPrice',
        fixedPrice,
      )
      ..add(
        'instanceCount',
        instanceCount,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'productDescription',
        productDescription,
      )
      ..add(
        'reservedInstancesId',
        reservedInstancesId,
      )
      ..add(
        'start',
        start,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'usagePrice',
        usagePrice,
      )
      ..add(
        'currencyCode',
        currencyCode,
      )
      ..add(
        'instanceTenancy',
        instanceTenancy,
      )
      ..add(
        'offeringClass',
        offeringClass,
      )
      ..add(
        'offeringType',
        offeringType,
      )
      ..add(
        'recurringCharges',
        recurringCharges,
      )
      ..add(
        'scope',
        scope,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ReservedInstancesEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ReservedInstances> {
  const ReservedInstancesEc2QuerySerializer() : super('ReservedInstances');

  @override
  Iterable<Type> get types => const [
        ReservedInstances,
        _$ReservedInstances,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstances deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'duration':
          result.duration = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'end':
          result.end = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'fixedPrice':
          result.fixedPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'productDescription':
          result.productDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(RiProductDescription),
          ) as RiProductDescription);
        case 'reservedInstancesId':
          result.reservedInstancesId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'start':
          result.start = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReservedInstanceState),
          ) as ReservedInstanceState);
        case 'usagePrice':
          result.usagePrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'currencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(CurrencyCodeValues),
          ) as CurrencyCodeValues);
        case 'instanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tenancy),
          ) as Tenancy);
        case 'offeringClass':
          result.offeringClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(OfferingClassType),
          ) as OfferingClassType);
        case 'offeringType':
          result.offeringType = (serializers.deserialize(
            value,
            specifiedType: const FullType(OfferingTypeValues),
          ) as OfferingTypeValues);
        case 'recurringCharges':
          result.recurringCharges.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(RecurringCharge)],
            ),
          ) as _i3.BuiltList<RecurringCharge>));
        case 'scope':
          result.scope = (serializers.deserialize(
            value,
            specifiedType: const FullType(Scope),
          ) as Scope);
        case 'tagSet':
          result.tags.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReservedInstances object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ReservedInstancesResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstances(
      :availabilityZone,
      :duration,
      :end,
      :fixedPrice,
      :instanceCount,
      :instanceType,
      :productDescription,
      :reservedInstancesId,
      :start,
      :state,
      :usagePrice,
      :currencyCode,
      :instanceTenancy,
      :offeringClass,
      :offeringType,
      :recurringCharges,
      :scope,
      :tags
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i4.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('Duration'))
      ..add(serializers.serialize(
        duration,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (end != null) {
      result$
        ..add(const _i4.XmlElementName('End'))
        ..add(serializers.serialize(
          end,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('FixedPrice'))
      ..add(serializers.serialize(
        fixedPrice,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i4.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i4.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    if (productDescription != null) {
      result$
        ..add(const _i4.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          productDescription,
          specifiedType: const FullType(RiProductDescription),
        ));
    }
    if (reservedInstancesId != null) {
      result$
        ..add(const _i4.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    if (start != null) {
      result$
        ..add(const _i4.XmlElementName('Start'))
        ..add(serializers.serialize(
          start,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(ReservedInstanceState),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('UsagePrice'))
      ..add(serializers.serialize(
        usagePrice,
        specifiedType: const FullType(double),
      ));
    if (currencyCode != null) {
      result$
        ..add(const _i4.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType(CurrencyCodeValues),
        ));
    }
    if (instanceTenancy != null) {
      result$
        ..add(const _i4.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType(Tenancy),
        ));
    }
    if (offeringClass != null) {
      result$
        ..add(const _i4.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          offeringClass,
          specifiedType: const FullType(OfferingClassType),
        ));
    }
    if (offeringType != null) {
      result$
        ..add(const _i4.XmlElementName('OfferingType'))
        ..add(serializers.serialize(
          offeringType,
          specifiedType: const FullType(OfferingTypeValues),
        ));
    }
    if (recurringCharges != null) {
      result$
        ..add(const _i4.XmlElementName('RecurringCharges'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          recurringCharges,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(RecurringCharge)],
          ),
        ));
    }
    if (scope != null) {
      result$
        ..add(const _i4.XmlElementName('Scope'))
        ..add(serializers.serialize(
          scope,
          specifiedType: const FullType(Scope),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
