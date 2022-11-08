// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    required String conformancePackArn,
    required String conformancePackId,
    required String conformancePackName,
    required _i2.ConformancePackState conformancePackState,
    String? conformancePackStatusReason,
    DateTime? lastUpdateCompletedTime,
    required DateTime lastUpdateRequestedTime,
    required String stackArn,
  }) {
    return _$ConformancePackStatusDetail._(
      conformancePackArn: conformancePackArn,
      conformancePackId: conformancePackId,
      conformancePackName: conformancePackName,
      conformancePackState: conformancePackState,
      conformancePackStatusReason: conformancePackStatusReason,
      lastUpdateCompletedTime: lastUpdateCompletedTime,
      lastUpdateRequestedTime: lastUpdateRequestedTime,
      stackArn: stackArn,
    );
  }

  /// Status details of a conformance pack.
  factory ConformancePackStatusDetail.build(
          [void Function(ConformancePackStatusDetailBuilder) updates]) =
      _$ConformancePackStatusDetail;

  const ConformancePackStatusDetail._();

  static const List<_i3.SmithySerializer> serializers = [
    ConformancePackStatusDetailAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackStatusDetailBuilder b) {}

  /// Amazon Resource Name (ARN) of comformance pack.
  String get conformancePackArn;

  /// ID of the conformance pack.
  String get conformancePackId;

  /// Name of the conformance pack.
  String get conformancePackName;

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

  /// The reason of conformance pack creation failure.
  String? get conformancePackStatusReason;

  /// Last time when conformation pack creation and update was successful.
  DateTime? get lastUpdateCompletedTime;

  /// Last time when conformation pack creation and update was requested.
  DateTime get lastUpdateRequestedTime;

  /// Amazon Resource Name (ARN) of CloudFormation stack.
  String get stackArn;
  @override
  List<Object?> get props => [
        conformancePackArn,
        conformancePackId,
        conformancePackName,
        conformancePackState,
        conformancePackStatusReason,
        lastUpdateCompletedTime,
        lastUpdateRequestedTime,
        stackArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackStatusDetail');
    helper.add(
      'conformancePackArn',
      conformancePackArn,
    );
    helper.add(
      'conformancePackId',
      conformancePackId,
    );
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    helper.add(
      'conformancePackState',
      conformancePackState,
    );
    helper.add(
      'conformancePackStatusReason',
      conformancePackStatusReason,
    );
    helper.add(
      'lastUpdateCompletedTime',
      lastUpdateCompletedTime,
    );
    helper.add(
      'lastUpdateRequestedTime',
      lastUpdateRequestedTime,
    );
    helper.add(
      'stackArn',
      stackArn,
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
      switch (key) {
        case 'ConformancePackArn':
          result.conformancePackArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConformancePackId':
          result.conformancePackId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConformancePackState':
          result.conformancePackState = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ConformancePackState),
          ) as _i2.ConformancePackState);
          break;
        case 'ConformancePackStatusReason':
          if (value != null) {
            result.conformancePackStatusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdateCompletedTime':
          if (value != null) {
            result.lastUpdateCompletedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastUpdateRequestedTime':
          result.lastUpdateRequestedTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'StackArn':
          result.stackArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ConformancePackStatusDetail);
    final result = <Object?>[
      'ConformancePackArn',
      serializers.serialize(
        payload.conformancePackArn,
        specifiedType: const FullType(String),
      ),
      'ConformancePackId',
      serializers.serialize(
        payload.conformancePackId,
        specifiedType: const FullType(String),
      ),
      'ConformancePackName',
      serializers.serialize(
        payload.conformancePackName,
        specifiedType: const FullType(String),
      ),
      'ConformancePackState',
      serializers.serialize(
        payload.conformancePackState,
        specifiedType: const FullType(_i2.ConformancePackState),
      ),
      'LastUpdateRequestedTime',
      serializers.serialize(
        payload.lastUpdateRequestedTime,
        specifiedType: const FullType(DateTime),
      ),
      'StackArn',
      serializers.serialize(
        payload.stackArn,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.conformancePackStatusReason != null) {
      result
        ..add('ConformancePackStatusReason')
        ..add(serializers.serialize(
          payload.conformancePackStatusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdateCompletedTime != null) {
      result
        ..add('LastUpdateCompletedTime')
        ..add(serializers.serialize(
          payload.lastUpdateCompletedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
