// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.conformance_pack_status_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_state.dart'
    as _i2;

part 'conformance_pack_status_detail.g.dart';

/// Status details of a conformance pack.
abstract class ConformancePackStatusDetail
    with _i1.AWSEquatable<ConformancePackStatusDetail>
    implements
        Built<ConformancePackStatusDetail, ConformancePackStatusDetailBuilder> {
  /// Status details of a conformance pack.
  factory ConformancePackStatusDetail({
    required String conformancePackName,
    required String conformancePackId,
    required String conformancePackArn,
    required _i2.ConformancePackState conformancePackState,
    required String stackArn,
    String? conformancePackStatusReason,
    required DateTime lastUpdateRequestedTime,
    DateTime? lastUpdateCompletedTime,
  }) {
    return _$ConformancePackStatusDetail._(
      conformancePackName: conformancePackName,
      conformancePackId: conformancePackId,
      conformancePackArn: conformancePackArn,
      conformancePackState: conformancePackState,
      stackArn: stackArn,
      conformancePackStatusReason: conformancePackStatusReason,
      lastUpdateRequestedTime: lastUpdateRequestedTime,
      lastUpdateCompletedTime: lastUpdateCompletedTime,
    );
  }

  /// Status details of a conformance pack.
  factory ConformancePackStatusDetail.build(
          [void Function(ConformancePackStatusDetailBuilder) updates]) =
      _$ConformancePackStatusDetail;

  const ConformancePackStatusDetail._();

  static const List<_i3.SmithySerializer<ConformancePackStatusDetail>>
      serializers = [ConformancePackStatusDetailAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackStatusDetailBuilder b) {}

  /// Name of the conformance pack.
  String get conformancePackName;

  /// ID of the conformance pack.
  String get conformancePackId;

  /// Amazon Resource Name (ARN) of comformance pack.
  String get conformancePackArn;

  /// Indicates deployment status of conformance pack.
  ///
  /// Config sets the state of the conformance pack to:
  ///
  /// *   CREATE\_IN\_PROGRESS when a conformance pack creation is in progress for an account.
  ///
  /// *   CREATE_COMPLETE when a conformance pack has been successfully created in your account.
  ///
  /// *   CREATE_FAILED when a conformance pack creation failed in your account.
  ///
  /// *   DELETE\_IN\_PROGRESS when a conformance pack deletion is in progress.
  ///
  /// *   DELETE_FAILED when a conformance pack deletion failed in your account.
  _i2.ConformancePackState get conformancePackState;

  /// Amazon Resource Name (ARN) of CloudFormation stack.
  String get stackArn;

  /// The reason of conformance pack creation failure.
  String? get conformancePackStatusReason;

  /// Last time when conformation pack creation and update was requested.
  DateTime get lastUpdateRequestedTime;

  /// Last time when conformation pack creation and update was successful.
  DateTime? get lastUpdateCompletedTime;
  @override
  List<Object?> get props => [
        conformancePackName,
        conformancePackId,
        conformancePackArn,
        conformancePackState,
        stackArn,
        conformancePackStatusReason,
        lastUpdateRequestedTime,
        lastUpdateCompletedTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackStatusDetail')
      ..add(
        'conformancePackName',
        conformancePackName,
      )
      ..add(
        'conformancePackId',
        conformancePackId,
      )
      ..add(
        'conformancePackArn',
        conformancePackArn,
      )
      ..add(
        'conformancePackState',
        conformancePackState,
      )
      ..add(
        'stackArn',
        stackArn,
      )
      ..add(
        'conformancePackStatusReason',
        conformancePackStatusReason,
      )
      ..add(
        'lastUpdateRequestedTime',
        lastUpdateRequestedTime,
      )
      ..add(
        'lastUpdateCompletedTime',
        lastUpdateCompletedTime,
      );
    return helper.toString();
  }
}

class ConformancePackStatusDetailAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConformancePackStatusDetail> {
  const ConformancePackStatusDetailAwsJson11Serializer()
      : super('ConformancePackStatusDetail');

  @override
  Iterable<Type> get types => const [
        ConformancePackStatusDetail,
        _$ConformancePackStatusDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackStatusDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackStatusDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackId':
          result.conformancePackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackArn':
          result.conformancePackArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackState':
          result.conformancePackState = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConformancePackState),
          ) as _i2.ConformancePackState);
        case 'StackArn':
          result.stackArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackStatusReason':
          result.conformancePackStatusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdateRequestedTime':
          result.lastUpdateRequestedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastUpdateCompletedTime':
          result.lastUpdateCompletedTime = (serializers.deserialize(
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
    ConformancePackStatusDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackStatusDetail(
      :conformancePackName,
      :conformancePackId,
      :conformancePackArn,
      :conformancePackState,
      :stackArn,
      :conformancePackStatusReason,
      :lastUpdateRequestedTime,
      :lastUpdateCompletedTime
    ) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
      'ConformancePackId',
      serializers.serialize(
        conformancePackId,
        specifiedType: const FullType(String),
      ),
      'ConformancePackArn',
      serializers.serialize(
        conformancePackArn,
        specifiedType: const FullType(String),
      ),
      'ConformancePackState',
      serializers.serialize(
        conformancePackState,
        specifiedType: const FullType(_i2.ConformancePackState),
      ),
      'StackArn',
      serializers.serialize(
        stackArn,
        specifiedType: const FullType(String),
      ),
      'LastUpdateRequestedTime',
      serializers.serialize(
        lastUpdateRequestedTime,
        specifiedType: const FullType(DateTime),
      ),
    ]);
    if (conformancePackStatusReason != null) {
      result$
        ..add('ConformancePackStatusReason')
        ..add(serializers.serialize(
          conformancePackStatusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdateCompletedTime != null) {
      result$
        ..add('LastUpdateCompletedTime')
        ..add(serializers.serialize(
          lastUpdateCompletedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
