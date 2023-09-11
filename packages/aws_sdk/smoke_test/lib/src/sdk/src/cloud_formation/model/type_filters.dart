// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.type_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/category.dart';

part 'type_filters.g.dart';

/// Filter criteria to use in determining which extensions to return.
abstract class TypeFilters
    with _i1.AWSEquatable<TypeFilters>
    implements Built<TypeFilters, TypeFiltersBuilder> {
  /// Filter criteria to use in determining which extensions to return.
  factory TypeFilters({
    Category? category,
    String? publisherId,
    String? typeNamePrefix,
  }) {
    return _$TypeFilters._(
      category: category,
      publisherId: publisherId,
      typeNamePrefix: typeNamePrefix,
    );
  }

  /// Filter criteria to use in determining which extensions to return.
  factory TypeFilters.build([void Function(TypeFiltersBuilder) updates]) =
      _$TypeFilters;

  const TypeFilters._();

  static const List<_i2.SmithySerializer<TypeFilters>> serializers = [
    TypeFiltersAwsQuerySerializer()
  ];

  /// The category of extensions to return.
  ///
  /// *   `REGISTERED`: Private extensions that have been registered for this account and Region.
  ///
  /// *   `ACTIVATED`: Public extensions that have been activated for this account and Region.
  ///
  /// *   `THIRD_PARTY`: Extensions available for use from publishers other than Amazon. This includes:
  ///
  ///     *   Private extensions registered in the account.
  ///
  ///     *   Public extensions from publishers other than Amazon, whether activated or not.
  ///
  /// *   `AWS_TYPES`: Extensions available for use from Amazon.
  Category? get category;

  /// The id of the publisher of the extension.
  ///
  /// Extensions published by Amazon aren't assigned a publisher ID. Use the `AWS_TYPES` category to specify a list of types published by Amazon.
  String? get publisherId;

  /// A prefix to use as a filter for results.
  String? get typeNamePrefix;
  @override
  List<Object?> get props => [
        category,
        publisherId,
        typeNamePrefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TypeFilters')
      ..add(
        'category',
        category,
      )
      ..add(
        'publisherId',
        publisherId,
      )
      ..add(
        'typeNamePrefix',
        typeNamePrefix,
      );
    return helper.toString();
  }
}

class TypeFiltersAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TypeFilters> {
  const TypeFiltersAwsQuerySerializer() : super('TypeFilters');

  @override
  Iterable<Type> get types => const [
        TypeFilters,
        _$TypeFilters,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TypeFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeFiltersBuilder();
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
        case 'Category':
          result.category = (serializers.deserialize(
            value,
            specifiedType: const FullType(Category),
          ) as Category);
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeNamePrefix':
          result.typeNamePrefix = (serializers.deserialize(
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
    TypeFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TypeFiltersResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TypeFilters(:category, :publisherId, :typeNamePrefix) = object;
    if (category != null) {
      result$
        ..add(const _i2.XmlElementName('Category'))
        ..add(serializers.serialize(
          category,
          specifiedType: const FullType(Category),
        ));
    }
    if (publisherId != null) {
      result$
        ..add(const _i2.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    if (typeNamePrefix != null) {
      result$
        ..add(const _i2.XmlElementName('TypeNamePrefix'))
        ..add(serializers.serialize(
          typeNamePrefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
