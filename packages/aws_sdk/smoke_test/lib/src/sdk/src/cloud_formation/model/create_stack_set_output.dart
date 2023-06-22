// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.create_stack_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_stack_set_output.g.dart';

abstract class CreateStackSetOutput
    with _i1.AWSEquatable<CreateStackSetOutput>
    implements Built<CreateStackSetOutput, CreateStackSetOutputBuilder> {
  factory CreateStackSetOutput({String? stackSetId}) {
    return _$CreateStackSetOutput._(stackSetId: stackSetId);
  }

  factory CreateStackSetOutput.build(
          [void Function(CreateStackSetOutputBuilder) updates]) =
      _$CreateStackSetOutput;

  const CreateStackSetOutput._();

  /// Constructs a [CreateStackSetOutput] from a [payload] and [response].
  factory CreateStackSetOutput.fromResponse(
    CreateStackSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateStackSetOutput>> serializers = [
    CreateStackSetOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStackSetOutputBuilder b) {}

  /// The ID of the stack set that you're creating.
  String? get stackSetId;
  @override
  List<Object?> get props => [stackSetId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStackSetOutput')
      ..add(
        'stackSetId',
        stackSetId,
      );
    return helper.toString();
  }
}

class CreateStackSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateStackSetOutput> {
  const CreateStackSetOutputAwsQuerySerializer()
      : super('CreateStackSetOutput');

  @override
  Iterable<Type> get types => const [
        CreateStackSetOutput,
        _$CreateStackSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateStackSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStackSetOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetId':
          result.stackSetId = (serializers.deserialize(
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
    CreateStackSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateStackSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CreateStackSetOutput(:stackSetId) = object;
    if (stackSetId != null) {
      result$
        ..add(const _i2.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          stackSetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
