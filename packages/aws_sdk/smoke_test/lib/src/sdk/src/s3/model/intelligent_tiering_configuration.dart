// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.intelligent_tiering_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart';

part 'intelligent_tiering_configuration.g.dart';

/// Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.
///
/// For information about the S3 Intelligent-Tiering storage class, see [Storage class for automatically optimizing frequently and infrequently accessed objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).
abstract class IntelligentTieringConfiguration
    with
        _i1.AWSEquatable<IntelligentTieringConfiguration>
    implements
        Built<IntelligentTieringConfiguration,
            IntelligentTieringConfigurationBuilder> {
  /// Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.
  ///
  /// For information about the S3 Intelligent-Tiering storage class, see [Storage class for automatically optimizing frequently and infrequently accessed objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).
  factory IntelligentTieringConfiguration({
    required String id,
    IntelligentTieringFilter? filter,
    required IntelligentTieringStatus status,
    required List<Tiering> tierings,
  }) {
    return _$IntelligentTieringConfiguration._(
      id: id,
      filter: filter,
      status: status,
      tierings: _i2.BuiltList(tierings),
    );
  }

  /// Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.
  ///
  /// For information about the S3 Intelligent-Tiering storage class, see [Storage class for automatically optimizing frequently and infrequently accessed objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access).
  factory IntelligentTieringConfiguration.build(
          [void Function(IntelligentTieringConfigurationBuilder) updates]) =
      _$IntelligentTieringConfiguration;

  const IntelligentTieringConfiguration._();

  static const List<_i3.SmithySerializer<IntelligentTieringConfiguration>>
      serializers = [IntelligentTieringConfigurationRestXmlSerializer()];

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  String get id;

  /// Specifies a bucket filter. The configuration only includes objects that meet the filter's criteria.
  IntelligentTieringFilter? get filter;

  /// Specifies the status of the configuration.
  IntelligentTieringStatus get status;

  /// Specifies the S3 Intelligent-Tiering storage class tier of the configuration.
  _i2.BuiltList<Tiering> get tierings;
  @override
  List<Object?> get props => [
        id,
        filter,
        status,
        tierings,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('IntelligentTieringConfiguration')
          ..add(
            'id',
            id,
          )
          ..add(
            'filter',
            filter,
          )
          ..add(
            'status',
            status,
          )
          ..add(
            'tierings',
            tierings,
          );
    return helper.toString();
  }
}

class IntelligentTieringConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<IntelligentTieringConfiguration> {
  const IntelligentTieringConfigurationRestXmlSerializer()
      : super('IntelligentTieringConfiguration');

  @override
  Iterable<Type> get types => const [
        IntelligentTieringConfiguration,
        _$IntelligentTieringConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  IntelligentTieringConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligentTieringConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringFilter),
          ) as IntelligentTieringFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringStatus),
          ) as IntelligentTieringStatus);
        case 'Tiering':
          result.tierings.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Tiering),
          ) as Tiering));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IntelligentTieringConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IntelligentTieringConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final IntelligentTieringConfiguration(:filter, :id, :status, :tierings) =
        object;
    if (filter != null) {
      result$
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(IntelligentTieringFilter),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(IntelligentTieringStatus),
      ));
    result$.addAll(
        const _i3.XmlBuiltListSerializer(memberName: 'Tiering').serialize(
      serializers,
      tierings,
      specifiedType: const FullType.nullable(
        _i2.BuiltList,
        [FullType(Tiering)],
      ),
    ));
    return result$;
  }
}
