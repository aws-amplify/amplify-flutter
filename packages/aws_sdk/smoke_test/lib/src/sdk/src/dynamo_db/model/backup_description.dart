// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.backup_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/backup_details.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/source_table_details.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/source_table_feature_details.dart';

part 'backup_description.g.dart';

/// Contains the description of the backup created for the table.
abstract class BackupDescription
    with _i1.AWSEquatable<BackupDescription>
    implements Built<BackupDescription, BackupDescriptionBuilder> {
  /// Contains the description of the backup created for the table.
  factory BackupDescription({
    BackupDetails? backupDetails,
    SourceTableDetails? sourceTableDetails,
    SourceTableFeatureDetails? sourceTableFeatureDetails,
  }) {
    return _$BackupDescription._(
      backupDetails: backupDetails,
      sourceTableDetails: sourceTableDetails,
      sourceTableFeatureDetails: sourceTableFeatureDetails,
    );
  }

  /// Contains the description of the backup created for the table.
  factory BackupDescription.build(
      [void Function(BackupDescriptionBuilder) updates]) = _$BackupDescription;

  const BackupDescription._();

  static const List<_i2.SmithySerializer<BackupDescription>> serializers = [
    BackupDescriptionAwsJson10Serializer()
  ];

  /// Contains the details of the backup created for the table.
  BackupDetails? get backupDetails;

  /// Contains the details of the table when the backup was created.
  SourceTableDetails? get sourceTableDetails;

  /// Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.
  SourceTableFeatureDetails? get sourceTableFeatureDetails;
  @override
  List<Object?> get props => [
        backupDetails,
        sourceTableDetails,
        sourceTableFeatureDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupDescription')
      ..add(
        'backupDetails',
        backupDetails,
      )
      ..add(
        'sourceTableDetails',
        sourceTableDetails,
      )
      ..add(
        'sourceTableFeatureDetails',
        sourceTableFeatureDetails,
      );
    return helper.toString();
  }
}

class BackupDescriptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<BackupDescription> {
  const BackupDescriptionAwsJson10Serializer() : super('BackupDescription');

  @override
  Iterable<Type> get types => const [
        BackupDescription,
        _$BackupDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BackupDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BackupDetails':
          result.backupDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BackupDetails),
          ) as BackupDetails));
        case 'SourceTableDetails':
          result.sourceTableDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SourceTableDetails),
          ) as SourceTableDetails));
        case 'SourceTableFeatureDetails':
          result.sourceTableFeatureDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SourceTableFeatureDetails),
          ) as SourceTableFeatureDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BackupDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BackupDescription(
      :backupDetails,
      :sourceTableDetails,
      :sourceTableFeatureDetails
    ) = object;
    if (backupDetails != null) {
      result$
        ..add('BackupDetails')
        ..add(serializers.serialize(
          backupDetails,
          specifiedType: const FullType(BackupDetails),
        ));
    }
    if (sourceTableDetails != null) {
      result$
        ..add('SourceTableDetails')
        ..add(serializers.serialize(
          sourceTableDetails,
          specifiedType: const FullType(SourceTableDetails),
        ));
    }
    if (sourceTableFeatureDetails != null) {
      result$
        ..add('SourceTableFeatureDetails')
        ..add(serializers.serialize(
          sourceTableFeatureDetails,
          specifiedType: const FullType(SourceTableFeatureDetails),
        ));
    }
    return result$;
  }
}
