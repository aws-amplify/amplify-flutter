// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.create_change_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_change_set_output.g.dart';

/// The output for the CreateChangeSet action.
abstract class CreateChangeSetOutput
    with _i1.AWSEquatable<CreateChangeSetOutput>
    implements Built<CreateChangeSetOutput, CreateChangeSetOutputBuilder> {
  /// The output for the CreateChangeSet action.
  factory CreateChangeSetOutput({
    String? id,
    String? stackId,
  }) {
    return _$CreateChangeSetOutput._(
      id: id,
      stackId: stackId,
    );
  }

  /// The output for the CreateChangeSet action.
  factory CreateChangeSetOutput.build(
          [void Function(CreateChangeSetOutputBuilder) updates]) =
      _$CreateChangeSetOutput;

  const CreateChangeSetOutput._();

  /// Constructs a [CreateChangeSetOutput] from a [payload] and [response].
  factory CreateChangeSetOutput.fromResponse(
    CreateChangeSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    CreateChangeSetOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateChangeSetOutputBuilder b) {}

  /// The Amazon Resource Name (ARN) of the change set.
  String? get id;

  /// The unique ID of the stack.
  String? get stackId;
  @override
  List<Object?> get props => [
        id,
        stackId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateChangeSetOutput');
    helper.add(
      'id',
      id,
    );
    helper.add(
      'stackId',
      stackId,
    );
    return helper.toString();
  }
}

class CreateChangeSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateChangeSetOutput> {
  const CreateChangeSetOutputAwsQuerySerializer()
      : super('CreateChangeSetOutput');

  @override
  Iterable<Type> get types => const [
        CreateChangeSetOutput,
        _$CreateChangeSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateChangeSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateChangeSetOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
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
    final payload = (object as CreateChangeSetOutput);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CreateChangeSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.id != null) {
      result
        ..add(const _i2.XmlElementName('Id'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackId != null) {
      result
        ..add(const _i2.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
