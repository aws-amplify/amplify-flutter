// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_configuration_recorder_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder_status.dart'
    as _i2;

part 'describe_configuration_recorder_status_response.g.dart';

/// The output for the DescribeConfigurationRecorderStatus action, in JSON format.
abstract class DescribeConfigurationRecorderStatusResponse
    with
        _i1.AWSEquatable<DescribeConfigurationRecorderStatusResponse>
    implements
        Built<DescribeConfigurationRecorderStatusResponse,
            DescribeConfigurationRecorderStatusResponseBuilder> {
  /// The output for the DescribeConfigurationRecorderStatus action, in JSON format.
  factory DescribeConfigurationRecorderStatusResponse(
      {List<_i2.ConfigurationRecorderStatus>? configurationRecordersStatus}) {
    return _$DescribeConfigurationRecorderStatusResponse._(
        configurationRecordersStatus: configurationRecordersStatus == null
            ? null
            : _i3.BuiltList(configurationRecordersStatus));
  }

  /// The output for the DescribeConfigurationRecorderStatus action, in JSON format.
  factory DescribeConfigurationRecorderStatusResponse.build(
      [void Function(DescribeConfigurationRecorderStatusResponseBuilder)
          updates]) = _$DescribeConfigurationRecorderStatusResponse;

  const DescribeConfigurationRecorderStatusResponse._();

  /// Constructs a [DescribeConfigurationRecorderStatusResponse] from a [payload] and [response].
  factory DescribeConfigurationRecorderStatusResponse.fromResponse(
    DescribeConfigurationRecorderStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeConfigurationRecorderStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigurationRecorderStatusResponseBuilder b) {}

  /// A list that contains status of the specified recorders.
  _i3.BuiltList<_i2.ConfigurationRecorderStatus>?
      get configurationRecordersStatus;
  @override
  List<Object?> get props => [configurationRecordersStatus];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigurationRecorderStatusResponse');
    helper.add(
      'configurationRecordersStatus',
      configurationRecordersStatus,
    );
    return helper.toString();
  }
}

class DescribeConfigurationRecorderStatusResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeConfigurationRecorderStatusResponse> {
  const DescribeConfigurationRecorderStatusResponseAwsJson11Serializer()
      : super('DescribeConfigurationRecorderStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationRecorderStatusResponse,
        _$DescribeConfigurationRecorderStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationRecorderStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationRecorderStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigurationRecordersStatus':
          if (value != null) {
            result.configurationRecordersStatus
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConfigurationRecorderStatus)],
              ),
            ) as _i3.BuiltList<_i2.ConfigurationRecorderStatus>));
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
    final payload = (object as DescribeConfigurationRecorderStatusResponse);
    final result = <Object?>[];
    if (payload.configurationRecordersStatus != null) {
      result
        ..add('ConfigurationRecordersStatus')
        ..add(serializers.serialize(
          payload.configurationRecordersStatus!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConfigurationRecorderStatus)],
          ),
        ));
    }
    return result;
  }
}
