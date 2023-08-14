// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.unsuccessful_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item_error.dart';

part 'unsuccessful_item.g.dart';

/// Information about items that were not successfully processed in a batch call.
abstract class UnsuccessfulItem
    with _i1.AWSEquatable<UnsuccessfulItem>
    implements Built<UnsuccessfulItem, UnsuccessfulItemBuilder> {
  /// Information about items that were not successfully processed in a batch call.
  factory UnsuccessfulItem({
    UnsuccessfulItemError? error,
    String? resourceId,
  }) {
    return _$UnsuccessfulItem._(
      error: error,
      resourceId: resourceId,
    );
  }

  /// Information about items that were not successfully processed in a batch call.
  factory UnsuccessfulItem.build(
      [void Function(UnsuccessfulItemBuilder) updates]) = _$UnsuccessfulItem;

  const UnsuccessfulItem._();

  static const List<_i2.SmithySerializer<UnsuccessfulItem>> serializers = [
    UnsuccessfulItemEc2QuerySerializer()
  ];

  /// Information about the error.
  UnsuccessfulItemError? get error;

  /// The ID of the resource.
  String? get resourceId;
  @override
  List<Object?> get props => [
        error,
        resourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnsuccessfulItem')
      ..add(
        'error',
        error,
      )
      ..add(
        'resourceId',
        resourceId,
      );
    return helper.toString();
  }
}

class UnsuccessfulItemEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<UnsuccessfulItem> {
  const UnsuccessfulItemEc2QuerySerializer() : super('UnsuccessfulItem');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulItem,
        _$UnsuccessfulItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(UnsuccessfulItemError),
          ) as UnsuccessfulItemError));
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
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
    UnsuccessfulItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UnsuccessfulItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UnsuccessfulItem(:error, :resourceId) = object;
    if (error != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(UnsuccessfulItemError),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
