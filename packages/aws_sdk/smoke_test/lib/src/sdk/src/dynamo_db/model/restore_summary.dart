// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    required DateTime restoreDateTime,
    bool? restoreInProgress,
    String? sourceBackupArn,
    String? sourceTableArn,
  }) {
    restoreInProgress ??= false;
    return _$RestoreSummary._(
      restoreDateTime: restoreDateTime,
      restoreInProgress: restoreInProgress,
      sourceBackupArn: sourceBackupArn,
      sourceTableArn: sourceTableArn,
    );
  }

  /// Contains details for the restore.
  factory RestoreSummary.build([void Function(RestoreSummaryBuilder) updates]) =
      _$RestoreSummary;

  const RestoreSummary._();

  static const List<_i2.SmithySerializer> serializers = [
    RestoreSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreSummaryBuilder b) {
    b.restoreInProgress = false;
  }

  /// Point in time or source backup time.
  DateTime get restoreDateTime;

  /// Indicates if a restore is in progress or not.
  bool get restoreInProgress;

  /// The Amazon Resource Name (ARN) of the backup from which the table was restored.
  String? get sourceBackupArn;

  /// The ARN of the source table of the backup that is being restored.
  String? get sourceTableArn;
  @override
  List<Object?> get props => [
        restoreDateTime,
        restoreInProgress,
        sourceBackupArn,
        sourceTableArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreSummary');
    helper.add(
      'restoreDateTime',
      restoreDateTime,
    );
    helper.add(
      'restoreInProgress',
      restoreInProgress,
    );
    helper.add(
      'sourceBackupArn',
      sourceBackupArn,
    );
    helper.add(
      'sourceTableArn',
      sourceTableArn,
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
      switch (key) {
        case 'RestoreDateTime':
          result.restoreDateTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'RestoreInProgress':
          result.restoreInProgress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'SourceBackupArn':
          if (value != null) {
            result.sourceBackupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceTableArn':
          if (value != null) {
            result.sourceTableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RestoreSummary);
    final result = <Object?>[
      'RestoreDateTime',
      serializers.serialize(
        payload.restoreDateTime,
        specifiedType: const FullType(DateTime),
      ),
      'RestoreInProgress',
      serializers.serialize(
        payload.restoreInProgress,
        specifiedType: const FullType(bool),
      ),
    ];
    if (payload.sourceBackupArn != null) {
      result
        ..add('SourceBackupArn')
        ..add(serializers.serialize(
          payload.sourceBackupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceTableArn != null) {
      result
        ..add('SourceTableArn')
        ..add(serializers.serialize(
          payload.sourceTableArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
