// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.json_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'json_output.g.dart';

/// Specifies JSON as request's output serialization format.
abstract class JsonOutput
    with _i1.AWSEquatable<JsonOutput>
    implements Built<JsonOutput, JsonOutputBuilder> {
  /// Specifies JSON as request's output serialization format.
  factory JsonOutput({String? recordDelimiter}) {
    return _$JsonOutput._(recordDelimiter: recordDelimiter);
  }

  /// Specifies JSON as request's output serialization format.
  factory JsonOutput.build([void Function(JsonOutputBuilder) updates]) =
      _$JsonOutput;

  const JsonOutput._();

  static const List<_i2.SmithySerializer<JsonOutput>> serializers = [
    JsonOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonOutputBuilder b) {}

  /// The value used to separate individual records in the output. If no value is specified, Amazon S3 uses a newline character ('\\n').
  String? get recordDelimiter;
  @override
  List<Object?> get props => [recordDelimiter];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonOutput')
      ..add(
        'recordDelimiter',
        recordDelimiter,
      );
    return helper.toString();
  }
}

class JsonOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<JsonOutput> {
  const JsonOutputRestXmlSerializer() : super('JsonOutput');

  @override
  Iterable<Type> get types => const [
        JsonOutput,
        _$JsonOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  JsonOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RecordDelimiter':
          result.recordDelimiter = (serializers.deserialize(
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
    JsonOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'JsonOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final JsonOutput(:recordDelimiter) = object;
    if (recordDelimiter != null) {
      result$
        ..add(const _i2.XmlElementName('RecordDelimiter'))
        ..add(serializers.serialize(
          recordDelimiter,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
