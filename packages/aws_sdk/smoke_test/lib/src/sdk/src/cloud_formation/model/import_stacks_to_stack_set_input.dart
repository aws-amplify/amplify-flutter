// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.import_stacks_to_stack_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i3;

part 'import_stacks_to_stack_set_input.g.dart';

abstract class ImportStacksToStackSetInput
    with
        _i1.HttpInput<ImportStacksToStackSetInput>,
        _i2.AWSEquatable<ImportStacksToStackSetInput>
    implements
        Built<ImportStacksToStackSetInput, ImportStacksToStackSetInputBuilder> {
  factory ImportStacksToStackSetInput({
    required String stackSetName,
    List<String>? stackIds,
    String? stackIdsUrl,
    List<String>? organizationalUnitIds,
    _i3.StackSetOperationPreferences? operationPreferences,
    String? operationId,
    _i4.CallAs? callAs,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      operationId ??= '00000000-0000-4000-8000-000000000000';
    } else {
      operationId ??= _i2.uuid(secure: true);
    }
    return _$ImportStacksToStackSetInput._(
      stackSetName: stackSetName,
      stackIds: stackIds == null ? null : _i5.BuiltList(stackIds),
      stackIdsUrl: stackIdsUrl,
      organizationalUnitIds: organizationalUnitIds == null
          ? null
          : _i5.BuiltList(organizationalUnitIds),
      operationPreferences: operationPreferences,
      operationId: operationId,
      callAs: callAs,
    );
  }

  factory ImportStacksToStackSetInput.build(
          [void Function(ImportStacksToStackSetInputBuilder) updates]) =
      _$ImportStacksToStackSetInput;

  const ImportStacksToStackSetInput._();

  factory ImportStacksToStackSetInput.fromRequest(
    ImportStacksToStackSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ImportStacksToStackSetInput>>
      serializers = [ImportStacksToStackSetInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportStacksToStackSetInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.operationId = '00000000-0000-4000-8000-000000000000';
    } else {
      b.operationId = _i2.uuid(secure: true);
    }
  }

  /// The name of the stack set. The name must be unique in the Region where you create your stack set.
  String get stackSetName;

  /// The IDs of the stacks you are importing into a stack set. You import up to 10 stacks per stack set at a time.
  ///
  /// Specify either `StackIds` or `StackIdsUrl`.
  _i5.BuiltList<String>? get stackIds;

  /// The Amazon S3 URL which contains list of stack ids to be inputted.
  ///
  /// Specify either `StackIds` or `StackIdsUrl`.
  String? get stackIdsUrl;

  /// The list of OU ID's to which the stacks being imported has to be mapped as deployment target.
  _i5.BuiltList<String>? get organizationalUnitIds;

  /// The user-specified preferences for how CloudFormation performs a stack set operation.
  ///
  /// For more information about maximum concurrent accounts and failure tolerance, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
  _i3.StackSetOperationPreferences? get operationPreferences;

  /// A unique, user defined, identifier for the stack set operation.
  String? get operationId;

  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   For service managed stack sets, specify `DELEGATED_ADMIN`.
  _i4.CallAs? get callAs;
  @override
  ImportStacksToStackSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        stackIds,
        stackIdsUrl,
        organizationalUnitIds,
        operationPreferences,
        operationId,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportStacksToStackSetInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'stackIds',
        stackIds,
      )
      ..add(
        'stackIdsUrl',
        stackIdsUrl,
      )
      ..add(
        'organizationalUnitIds',
        organizationalUnitIds,
      )
      ..add(
        'operationPreferences',
        operationPreferences,
      )
      ..add(
        'operationId',
        operationId,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class ImportStacksToStackSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ImportStacksToStackSetInput> {
  const ImportStacksToStackSetInputAwsQuerySerializer()
      : super('ImportStacksToStackSetInput');

  @override
  Iterable<Type> get types => const [
        ImportStacksToStackSetInput,
        _$ImportStacksToStackSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ImportStacksToStackSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportStacksToStackSetInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackIds':
          result.stackIds.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'StackIdsUrl':
          result.stackIdsUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationalUnitIds':
          result.organizationalUnitIds.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StackSetOperationPreferences),
          ) as _i3.StackSetOperationPreferences));
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CallAs),
          ) as _i4.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportStacksToStackSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportStacksToStackSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ImportStacksToStackSetInput(
      :stackSetName,
      :stackIds,
      :stackIdsUrl,
      :organizationalUnitIds,
      :operationPreferences,
      :operationId,
      :callAs
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    if (stackIds != null) {
      result$
        ..add(const _i1.XmlElementName('StackIds'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (stackIdsUrl != null) {
      result$
        ..add(const _i1.XmlElementName('StackIdsUrl'))
        ..add(serializers.serialize(
          stackIdsUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (organizationalUnitIds != null) {
      result$
        ..add(const _i1.XmlElementName('OrganizationalUnitIds'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          organizationalUnitIds,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (operationPreferences != null) {
      result$
        ..add(const _i1.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(_i3.StackSetOperationPreferences),
        ));
    }
    if (operationId != null) {
      result$
        ..add(const _i1.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i4.CallAs),
        ));
    }
    return result$;
  }
}
