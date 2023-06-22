// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_imports_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_imports_input.g.dart';

abstract class ListImportsInput
    with _i1.HttpInput<ListImportsInput>, _i2.AWSEquatable<ListImportsInput>
    implements Built<ListImportsInput, ListImportsInputBuilder> {
  factory ListImportsInput({
    required String exportName,
    String? nextToken,
  }) {
    return _$ListImportsInput._(
      exportName: exportName,
      nextToken: nextToken,
    );
  }

  factory ListImportsInput.build(
      [void Function(ListImportsInputBuilder) updates]) = _$ListImportsInput;

  const ListImportsInput._();

  factory ListImportsInput.fromRequest(
    ListImportsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListImportsInput>> serializers = [
    ListImportsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImportsInputBuilder b) {}

  /// The name of the exported output value. CloudFormation returns the stack names that are importing this value.
  String get exportName;

  /// A string (provided by the ListImports response output) that identifies the next page of stacks that are importing the specified exported output value.
  String? get nextToken;
  @override
  ListImportsInput getPayload() => this;
  @override
  List<Object?> get props => [
        exportName,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImportsInput')
      ..add(
        'exportName',
        exportName,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListImportsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListImportsInput> {
  const ListImportsInputAwsQuerySerializer() : super('ListImportsInput');

  @override
  Iterable<Type> get types => const [
        ListImportsInput,
        _$ListImportsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListImportsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImportsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ExportName':
          result.exportName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    ListImportsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListImportsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListImportsInput(:exportName, :nextToken) = object;
    result$
      ..add(const _i1.XmlElementName('ExportName'))
      ..add(serializers.serialize(
        exportName,
        specifiedType: const FullType(String),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
