// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.warnings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'warnings.g.dart';

/// Contains any warnings returned by the `GetTemplateSummary` API action.
abstract class Warnings
    with _i1.AWSEquatable<Warnings>
    implements Built<Warnings, WarningsBuilder> {
  /// Contains any warnings returned by the `GetTemplateSummary` API action.
  factory Warnings({List<String>? unrecognizedResourceTypes}) {
    return _$Warnings._(
        unrecognizedResourceTypes: unrecognizedResourceTypes == null
            ? null
            : _i2.BuiltList(unrecognizedResourceTypes));
  }

  /// Contains any warnings returned by the `GetTemplateSummary` API action.
  factory Warnings.build([void Function(WarningsBuilder) updates]) = _$Warnings;

  const Warnings._();

  static const List<_i3.SmithySerializer<Warnings>> serializers = [
    WarningsAwsQuerySerializer()
  ];

  /// A list of all of the unrecognized resource types. This is only returned if the `TemplateSummaryConfig` parameter has the `TreatUnrecognizedResourceTypesAsWarning` configuration set to `True`.
  _i2.BuiltList<String>? get unrecognizedResourceTypes;
  @override
  List<Object?> get props => [unrecognizedResourceTypes];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Warnings')
      ..add(
        'unrecognizedResourceTypes',
        unrecognizedResourceTypes,
      );
    return helper.toString();
  }
}

class WarningsAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<Warnings> {
  const WarningsAwsQuerySerializer() : super('Warnings');

  @override
  Iterable<Type> get types => const [
        Warnings,
        _$Warnings,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Warnings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WarningsBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UnrecognizedResourceTypes':
          result.unrecognizedResourceTypes.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Warnings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'WarningsResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final Warnings(:unrecognizedResourceTypes) = object;
    if (unrecognizedResourceTypes != null) {
      result$
        ..add(const _i3.XmlElementName('UnrecognizedResourceTypes'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          unrecognizedResourceTypes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
