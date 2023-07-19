// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.log_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/data_protection_status.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'log_group.g.dart';

/// Represents a log group.
abstract class LogGroup
    with _i1.AWSEquatable<LogGroup>
    implements Built<LogGroup, LogGroupBuilder> {
  /// Represents a log group.
  factory LogGroup({
    String? logGroupName,
    _i2.Int64? creationTime,
    int? retentionInDays,
    int? metricFilterCount,
    String? arn,
    _i2.Int64? storedBytes,
    String? kmsKeyId,
    _i3.DataProtectionStatus? dataProtectionStatus,
  }) {
    return _$LogGroup._(
      logGroupName: logGroupName,
      creationTime: creationTime,
      retentionInDays: retentionInDays,
      metricFilterCount: metricFilterCount,
      arn: arn,
      storedBytes: storedBytes,
      kmsKeyId: kmsKeyId,
      dataProtectionStatus: dataProtectionStatus,
    );
  }

  /// Represents a log group.
  factory LogGroup.build([void Function(LogGroupBuilder) updates]) = _$LogGroup;

  const LogGroup._();

  static const List<_i4.SmithySerializer<LogGroup>> serializers = [
    LogGroupAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LogGroupBuilder b) {}

  /// The name of the log group.
  String? get logGroupName;

  /// The creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
  _i2.Int64? get creationTime;

  /// The number of days to retain the log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 2192, 2557, 2922, 3288, and 3653.
  ///
  /// To set a log group so that its log events do not expire, use [DeleteRetentionPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html).
  int? get retentionInDays;

  /// The number of metric filters.
  int? get metricFilterCount;

  /// The Amazon Resource Name (ARN) of the log group.
  String? get arn;

  /// The number of bytes stored.
  _i2.Int64? get storedBytes;

  /// The Amazon Resource Name (ARN) of the KMS key to use when encrypting log data.
  String? get kmsKeyId;

  /// Displays whether this log group has a protection policy, or whether it had one in the past. For more information, see [PutDataProtectionPolicy](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDataProtectionPolicy.html).
  _i3.DataProtectionStatus? get dataProtectionStatus;
  @override
  List<Object?> get props => [
        logGroupName,
        creationTime,
        retentionInDays,
        metricFilterCount,
        arn,
        storedBytes,
        kmsKeyId,
        dataProtectionStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LogGroup')
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'retentionInDays',
        retentionInDays,
      )
      ..add(
        'metricFilterCount',
        metricFilterCount,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'storedBytes',
        storedBytes,
      )
      ..add(
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'dataProtectionStatus',
        dataProtectionStatus,
      );
    return helper.toString();
  }
}

class LogGroupAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<LogGroup> {
  const LogGroupAwsJson11Serializer() : super('LogGroup');

  @override
  Iterable<Type> get types => const [
        LogGroup,
        _$LogGroup,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  LogGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logGroupName':
          result.logGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'retentionInDays':
          result.retentionInDays = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'metricFilterCount':
          result.metricFilterCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'storedBytes':
          result.storedBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'kmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dataProtectionStatus':
          result.dataProtectionStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DataProtectionStatus),
          ) as _i3.DataProtectionStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LogGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LogGroup(
      :logGroupName,
      :creationTime,
      :retentionInDays,
      :metricFilterCount,
      :arn,
      :storedBytes,
      :kmsKeyId,
      :dataProtectionStatus
    ) = object;
    if (logGroupName != null) {
      result$
        ..add('logGroupName')
        ..add(serializers.serialize(
          logGroupName,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add('creationTime')
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (retentionInDays != null) {
      result$
        ..add('retentionInDays')
        ..add(serializers.serialize(
          retentionInDays,
          specifiedType: const FullType(int),
        ));
    }
    if (metricFilterCount != null) {
      result$
        ..add('metricFilterCount')
        ..add(serializers.serialize(
          metricFilterCount,
          specifiedType: const FullType(int),
        ));
    }
    if (arn != null) {
      result$
        ..add('arn')
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (storedBytes != null) {
      result$
        ..add('storedBytes')
        ..add(serializers.serialize(
          storedBytes,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (kmsKeyId != null) {
      result$
        ..add('kmsKeyId')
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (dataProtectionStatus != null) {
      result$
        ..add('dataProtectionStatus')
        ..add(serializers.serialize(
          dataProtectionStatus,
          specifiedType: const FullType(_i3.DataProtectionStatus),
        ));
    }
    return result$;
  }
}
