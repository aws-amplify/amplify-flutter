// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.model.malformed_long_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_long_input.g.dart';

abstract class MalformedLongInput
    with
        _i1.HttpInput<MalformedLongInputPayload>,
        _i2.AWSEquatable<MalformedLongInput>
    implements
        Built<MalformedLongInput, MalformedLongInputBuilder>,
        _i1.HasPayload<MalformedLongInputPayload> {
  factory MalformedLongInput({
    _i3.Int64? longInBody,
    required _i3.Int64 longInPath,
    _i3.Int64? longInQuery,
    _i3.Int64? longInHeader,
  }) {
    return _$MalformedLongInput._(
      longInBody: longInBody,
      longInPath: longInPath,
      longInQuery: longInQuery,
      longInHeader: longInHeader,
    );
  }

  factory MalformedLongInput.build(
          [void Function(MalformedLongInputBuilder) updates]) =
      _$MalformedLongInput;

  const MalformedLongInput._();

  factory MalformedLongInput.fromRequest(
    MalformedLongInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedLongInput.build((b) {
        b.longInBody = payload.longInBody;
        if (request.headers['longInHeader'] != null) {
          b.longInHeader = _i3.Int64.parseInt(request.headers['longInHeader']!);
        }
        if (request.queryParameters['longInQuery'] != null) {
          b.longInQuery =
              _i3.Int64.parseInt(request.queryParameters['longInQuery']!);
        }
        if (labels['longInPath'] != null) {
          b.longInPath = _i3.Int64.parseInt(labels['longInPath']!);
        }
      });

  static const List<_i1.SmithySerializer<MalformedLongInputPayload>>
      serializers = [MalformedLongInputRestJson1Serializer()];

  _i3.Int64? get longInBody;
  _i3.Int64 get longInPath;
  _i3.Int64? get longInQuery;
  _i3.Int64? get longInHeader;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'longInPath':
        return longInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedLongInputPayload getPayload() => MalformedLongInputPayload((b) {
        b.longInBody = longInBody;
      });

  @override
  List<Object?> get props => [
        longInBody,
        longInPath,
        longInQuery,
        longInHeader,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedLongInput')
      ..add(
        'longInBody',
        longInBody,
      )
      ..add(
        'longInPath',
        longInPath,
      )
      ..add(
        'longInQuery',
        longInQuery,
      )
      ..add(
        'longInHeader',
        longInHeader,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class MalformedLongInputPayload
    with _i2.AWSEquatable<MalformedLongInputPayload>
    implements
        Built<MalformedLongInputPayload, MalformedLongInputPayloadBuilder> {
  factory MalformedLongInputPayload(
          [void Function(MalformedLongInputPayloadBuilder) updates]) =
      _$MalformedLongInputPayload;

  const MalformedLongInputPayload._();

  _i3.Int64? get longInBody;
  @override
  List<Object?> get props => [longInBody];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedLongInputPayload')
      ..add(
        'longInBody',
        longInBody,
      );
    return helper.toString();
  }
}

class MalformedLongInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedLongInputPayload> {
  const MalformedLongInputRestJson1Serializer() : super('MalformedLongInput');

  @override
  Iterable<Type> get types => const [
        MalformedLongInput,
        _$MalformedLongInput,
        MalformedLongInputPayload,
        _$MalformedLongInputPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  MalformedLongInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedLongInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'longInBody':
          result.longInBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedLongInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedLongInputPayload(:longInBody) = object;
    if (longInBody != null) {
      result$
        ..add('longInBody')
        ..add(serializers.serialize(
          longInBody,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    return result$;
  }
}
