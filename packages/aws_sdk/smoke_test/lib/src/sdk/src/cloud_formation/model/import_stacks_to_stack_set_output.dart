// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.import_stacks_to_stack_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'import_stacks_to_stack_set_output.g.dart';

abstract class ImportStacksToStackSetOutput
    with
        _i1.AWSEquatable<ImportStacksToStackSetOutput>
    implements
        Built<ImportStacksToStackSetOutput,
            ImportStacksToStackSetOutputBuilder> {
  factory ImportStacksToStackSetOutput({String? operationId}) {
    return _$ImportStacksToStackSetOutput._(operationId: operationId);
  }

  factory ImportStacksToStackSetOutput.build(
          [void Function(ImportStacksToStackSetOutputBuilder) updates]) =
      _$ImportStacksToStackSetOutput;

  const ImportStacksToStackSetOutput._();

  /// Constructs a [ImportStacksToStackSetOutput] from a [payload] and [response].
  factory ImportStacksToStackSetOutput.fromResponse(
    ImportStacksToStackSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ImportStacksToStackSetOutput>>
      serializers = [ImportStacksToStackSetOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportStacksToStackSetOutputBuilder b) {}

  /// The unique identifier for the stack set operation.
  String? get operationId;
  @override
  List<Object?> get props => [operationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportStacksToStackSetOutput')
      ..add(
        'operationId',
        operationId,
      );
    return helper.toString();
  }
}

class ImportStacksToStackSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ImportStacksToStackSetOutput> {
  const ImportStacksToStackSetOutputAwsQuerySerializer()
      : super('ImportStacksToStackSetOutput');

  @override
  Iterable<Type> get types => const [
        ImportStacksToStackSetOutput,
        _$ImportStacksToStackSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ImportStacksToStackSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportStacksToStackSetOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OperationId':
          result.operationId = (serializers.deserialize(
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
    ImportStacksToStackSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ImportStacksToStackSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ImportStacksToStackSetOutput(:operationId) = object;
    if (operationId != null) {
      result$
        ..add(const _i2.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
