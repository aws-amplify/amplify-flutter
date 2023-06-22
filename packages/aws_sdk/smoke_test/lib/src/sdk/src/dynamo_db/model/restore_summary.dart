// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.restore_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'restore_summary.g.dart';

/// Contains details for the restore.
abstract class RestoreSummary
    with _i1.AWSEquatable<RestoreSummary>
    implements Built<RestoreSummary, RestoreSummaryBuilder> {
  /// Contains details for the restore.
  factory RestoreSummary({
    String? sourceBackupArn,
    String? sourceTableArn,
    required DateTime restoreDateTime,
    bool? restoreInProgress,
  }) {
    restoreInProgress ??= false;
    return _$RestoreSummary._(
      sourceBackupArn: sourceBackupArn,
      sourceTableArn: sourceTableArn,
      restoreDateTime: restoreDateTime,
      restoreInProgress: restoreInProgress,
    );
  }

  /// Contains details for the restore.
  factory RestoreSummary.build([void Function(RestoreSummaryBuilder) updates]) =
      _$RestoreSummary;

  const RestoreSummary._();

  static const List<_i2.SmithySerializer<RestoreSummary>> serializers = [
    RestoreSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreSummaryBuilder b) {
    b.restoreInProgress = false;
  }

  /// The Amazon Resource Name (ARN) of the backup from which the table was restored.
  String? get sourceBackupArn;

  /// The ARN of the source table of the backup that is being restored.
  String? get sourceTableArn;

  /// Point in time or source backup time.
  DateTime get restoreDateTime;

  /// Indicates if a restore is in progress or not.
  bool get restoreInProgress;
  @override
  List<Object?> get props => [
        sourceBackupArn,
        sourceTableArn,
        restoreDateTime,
        restoreInProgress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreSummary')
      ..add(
        'sourceBackupArn',
        sourceBackupArn,
      )
      ..add(
        'sourceTableArn',
        sourceTableArn,
      )
      ..add(
        'restoreDateTime',
        restoreDateTime,
      )
      ..add(
        'restoreInProgress',
        restoreInProgress,
      );
    return helper.toString();
  }
}

class RestoreSummaryAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<RestoreSummary> {
  const RestoreSummaryAwsJson10Serializer() : super('RestoreSummary');

  @override
  Iterable<Type> get types => const [
        RestoreSummary,
        _$RestoreSummary,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceBackupArn':
          result.sourceBackupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceTableArn':
          result.sourceTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RestoreDateTime':
          result.restoreDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'RestoreInProgress':
          result.restoreInProgress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestoreSummary(
      :sourceBackupArn,
      :sourceTableArn,
      :restoreDateTime,
      :restoreInProgress
    ) = object;
    result$.addAll([
      'RestoreDateTime',
      serializers.serialize(
        restoreDateTime,
        specifiedType: const FullType(DateTime),
      ),
      'RestoreInProgress',
      serializers.serialize(
        restoreInProgress,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (sourceBackupArn != null) {
      result$
        ..add('SourceBackupArn')
        ..add(serializers.serialize(
          sourceBackupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceTableArn != null) {
      result$
        ..add('SourceTableArn')
        ..add(serializers.serialize(
          sourceTableArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
