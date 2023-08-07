// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.entity_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/entity_info.dart';

part 'entity_details.g.dart';

/// An object that contains details about when the IAM entities (users or roles) were last used in an attempt to access the specified Amazon Web Services service.
///
/// This data type is a response element in the GetServiceLastAccessedDetailsWithEntities operation.
abstract class EntityDetails
    with _i1.AWSEquatable<EntityDetails>
    implements Built<EntityDetails, EntityDetailsBuilder> {
  /// An object that contains details about when the IAM entities (users or roles) were last used in an attempt to access the specified Amazon Web Services service.
  ///
  /// This data type is a response element in the GetServiceLastAccessedDetailsWithEntities operation.
  factory EntityDetails({
    required EntityInfo entityInfo,
    DateTime? lastAuthenticated,
  }) {
    return _$EntityDetails._(
      entityInfo: entityInfo,
      lastAuthenticated: lastAuthenticated,
    );
  }

  /// An object that contains details about when the IAM entities (users or roles) were last used in an attempt to access the specified Amazon Web Services service.
  ///
  /// This data type is a response element in the GetServiceLastAccessedDetailsWithEntities operation.
  factory EntityDetails.build([void Function(EntityDetailsBuilder) updates]) =
      _$EntityDetails;

  const EntityDetails._();

  static const List<_i2.SmithySerializer<EntityDetails>> serializers = [
    EntityDetailsAwsQuerySerializer()
  ];

  /// The `EntityInfo` object that contains details about the entity (user or role).
  EntityInfo get entityInfo;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the authenticated entity last attempted to access Amazon Web Services. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no IAM entities attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  DateTime? get lastAuthenticated;
  @override
  List<Object?> get props => [
        entityInfo,
        lastAuthenticated,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EntityDetails')
      ..add(
        'entityInfo',
        entityInfo,
      )
      ..add(
        'lastAuthenticated',
        lastAuthenticated,
      );
    return helper.toString();
  }
}

class EntityDetailsAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<EntityDetails> {
  const EntityDetailsAwsQuerySerializer() : super('EntityDetails');

  @override
  Iterable<Type> get types => const [
        EntityDetails,
        _$EntityDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EntityDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EntityInfo':
          result.entityInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EntityInfo),
          ) as EntityInfo));
        case 'LastAuthenticated':
          result.lastAuthenticated = (serializers.deserialize(
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
    EntityDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EntityDetailsResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final EntityDetails(:entityInfo, :lastAuthenticated) = object;
    result$
      ..add(const _i2.XmlElementName('EntityInfo'))
      ..add(serializers.serialize(
        entityInfo,
        specifiedType: const FullType(EntityInfo),
      ));
    if (lastAuthenticated != null) {
      result$
        ..add(const _i2.XmlElementName('LastAuthenticated'))
        ..add(serializers.serialize(
          lastAuthenticated,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
