// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.validation_warning; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/validation_error.dart';

part 'validation_warning.g.dart';

/// The error codes and error messages that are returned for the parameters or parameter combinations that are not valid when a new launch template or new version of a launch template is created.
abstract class ValidationWarning
    with _i1.AWSEquatable<ValidationWarning>
    implements Built<ValidationWarning, ValidationWarningBuilder> {
  /// The error codes and error messages that are returned for the parameters or parameter combinations that are not valid when a new launch template or new version of a launch template is created.
  factory ValidationWarning({List<ValidationError>? errors}) {
    return _$ValidationWarning._(
        errors: errors == null ? null : _i2.BuiltList(errors));
  }

  /// The error codes and error messages that are returned for the parameters or parameter combinations that are not valid when a new launch template or new version of a launch template is created.
  factory ValidationWarning.build(
      [void Function(ValidationWarningBuilder) updates]) = _$ValidationWarning;

  const ValidationWarning._();

  static const List<_i3.SmithySerializer<ValidationWarning>> serializers = [
    ValidationWarningEc2QuerySerializer()
  ];

  /// The error codes and error messages.
  _i2.BuiltList<ValidationError>? get errors;
  @override
  List<Object?> get props => [errors];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidationWarning')
      ..add(
        'errors',
        errors,
      );
    return helper.toString();
  }
}

class ValidationWarningEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ValidationWarning> {
  const ValidationWarningEc2QuerySerializer() : super('ValidationWarning');

  @override
  Iterable<Type> get types => const [
        ValidationWarning,
        _$ValidationWarning,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ValidationWarning deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationWarningBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'errorSet':
          result.errors.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ValidationError)],
            ),
          ) as _i2.BuiltList<ValidationError>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ValidationWarning object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ValidationWarningResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ValidationWarning(:errors) = object;
    if (errors != null) {
      result$
        ..add(const _i3.XmlElementName('ErrorSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          errors,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ValidationError)],
          ),
        ));
    }
    return result$;
  }
}
