// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.record_handler_progress_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/handler_error_code.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_status.dart'
    as _i3;

part 'record_handler_progress_input.g.dart';

abstract class RecordHandlerProgressInput
    with
        _i1.HttpInput<RecordHandlerProgressInput>,
        _i2.AWSEquatable<RecordHandlerProgressInput>
    implements
        Built<RecordHandlerProgressInput, RecordHandlerProgressInputBuilder> {
  factory RecordHandlerProgressInput({
    required String bearerToken,
    required _i3.OperationStatus operationStatus,
    _i3.OperationStatus? currentOperationStatus,
    String? statusMessage,
    _i4.HandlerErrorCode? errorCode,
    String? resourceModel,
    String? clientRequestToken,
  }) {
    return _$RecordHandlerProgressInput._(
      bearerToken: bearerToken,
      operationStatus: operationStatus,
      currentOperationStatus: currentOperationStatus,
      statusMessage: statusMessage,
      errorCode: errorCode,
      resourceModel: resourceModel,
      clientRequestToken: clientRequestToken,
    );
  }

  factory RecordHandlerProgressInput.build(
          [void Function(RecordHandlerProgressInputBuilder) updates]) =
      _$RecordHandlerProgressInput;

  const RecordHandlerProgressInput._();

  factory RecordHandlerProgressInput.fromRequest(
    RecordHandlerProgressInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RecordHandlerProgressInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordHandlerProgressInputBuilder b) {}

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  String get bearerToken;

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  _i3.OperationStatus get operationStatus;

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  _i3.OperationStatus? get currentOperationStatus;

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  String? get statusMessage;

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  _i4.HandlerErrorCode? get errorCode;

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  String? get resourceModel;

  /// Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  String? get clientRequestToken;
  @override
  RecordHandlerProgressInput getPayload() => this;
  @override
  List<Object?> get props => [
        bearerToken,
        operationStatus,
        currentOperationStatus,
        statusMessage,
        errorCode,
        resourceModel,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecordHandlerProgressInput');
    helper.add(
      'bearerToken',
      bearerToken,
    );
    helper.add(
      'operationStatus',
      operationStatus,
    );
    helper.add(
      'currentOperationStatus',
      currentOperationStatus,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'errorCode',
      errorCode,
    );
    helper.add(
      'resourceModel',
      resourceModel,
    );
    helper.add(
      'clientRequestToken',
      clientRequestToken,
    );
    return helper.toString();
  }
}

class RecordHandlerProgressInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<RecordHandlerProgressInput> {
  const RecordHandlerProgressInputAwsQuerySerializer()
      : super('RecordHandlerProgressInput');

  @override
  Iterable<Type> get types => const [
        RecordHandlerProgressInput,
        _$RecordHandlerProgressInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RecordHandlerProgressInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordHandlerProgressInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BearerToken':
          result.bearerToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'OperationStatus':
          result.operationStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.OperationStatus),
          ) as _i3.OperationStatus);
          break;
        case 'CurrentOperationStatus':
          if (value != null) {
            result.currentOperationStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.OperationStatus),
            ) as _i3.OperationStatus);
          }
          break;
        case 'StatusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ErrorCode':
          if (value != null) {
            result.errorCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.HandlerErrorCode),
            ) as _i4.HandlerErrorCode);
          }
          break;
        case 'ResourceModel':
          if (value != null) {
            result.resourceModel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientRequestToken':
          if (value != null) {
            result.clientRequestToken = (serializers.deserialize(
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
    final payload = (object as RecordHandlerProgressInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RecordHandlerProgressInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('BearerToken'))
      ..add(serializers.serialize(
        payload.bearerToken,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('OperationStatus'))
      ..add(serializers.serialize(
        payload.operationStatus,
        specifiedType: const FullType.nullable(_i3.OperationStatus),
      ));
    if (payload.currentOperationStatus != null) {
      result
        ..add(const _i1.XmlElementName('CurrentOperationStatus'))
        ..add(serializers.serialize(
          payload.currentOperationStatus!,
          specifiedType: const FullType.nullable(_i3.OperationStatus),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i1.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.errorCode != null) {
      result
        ..add(const _i1.XmlElementName('ErrorCode'))
        ..add(serializers.serialize(
          payload.errorCode!,
          specifiedType: const FullType.nullable(_i4.HandlerErrorCode),
        ));
    }
    if (payload.resourceModel != null) {
      result
        ..add(const _i1.XmlElementName('ResourceModel'))
        ..add(serializers.serialize(
          payload.resourceModel!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientRequestToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          payload.clientRequestToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
