// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i1.SmithySerializer<RecordHandlerProgressInput>>
      serializers = [RecordHandlerProgressInputAwsQuerySerializer()];

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
    final helper = newBuiltValueToStringHelper('RecordHandlerProgressInput')
      ..add(
        'bearerToken',
        bearerToken,
      )
      ..add(
        'operationStatus',
        operationStatus,
      )
      ..add(
        'currentOperationStatus',
        currentOperationStatus,
      )
      ..add(
        'statusMessage',
        statusMessage,
      )
      ..add(
        'errorCode',
        errorCode,
      )
      ..add(
        'resourceModel',
        resourceModel,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BearerToken':
          result.bearerToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OperationStatus':
          result.operationStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.OperationStatus),
          ) as _i3.OperationStatus);
        case 'CurrentOperationStatus':
          result.currentOperationStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.OperationStatus),
          ) as _i3.OperationStatus);
        case 'StatusMessage':
          result.statusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ErrorCode':
          result.errorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.HandlerErrorCode),
          ) as _i4.HandlerErrorCode);
        case 'ResourceModel':
          result.resourceModel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecordHandlerProgressInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RecordHandlerProgressInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final RecordHandlerProgressInput(
      :bearerToken,
      :operationStatus,
      :currentOperationStatus,
      :statusMessage,
      :errorCode,
      :resourceModel,
      :clientRequestToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('BearerToken'))
      ..add(serializers.serialize(
        bearerToken,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('OperationStatus'))
      ..add(serializers.serialize(
        operationStatus,
        specifiedType: const FullType.nullable(_i3.OperationStatus),
      ));
    if (currentOperationStatus != null) {
      result$
        ..add(const _i1.XmlElementName('CurrentOperationStatus'))
        ..add(serializers.serialize(
          currentOperationStatus,
          specifiedType: const FullType.nullable(_i3.OperationStatus),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i1.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (errorCode != null) {
      result$
        ..add(const _i1.XmlElementName('ErrorCode'))
        ..add(serializers.serialize(
          errorCode,
          specifiedType: const FullType.nullable(_i4.HandlerErrorCode),
        ));
    }
    if (resourceModel != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceModel'))
        ..add(serializers.serialize(
          resourceModel,
          specifiedType: const FullType(String),
        ));
    }
    if (clientRequestToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          clientRequestToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
