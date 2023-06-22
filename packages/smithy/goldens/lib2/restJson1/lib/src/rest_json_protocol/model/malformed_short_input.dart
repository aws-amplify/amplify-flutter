// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.malformed_short_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_short_input.g.dart';

abstract class MalformedShortInput
    with
        _i1.HttpInput<MalformedShortInputPayload>,
        _i2.AWSEquatable<MalformedShortInput>
    implements
        Built<MalformedShortInput, MalformedShortInputBuilder>,
        _i1.HasPayload<MalformedShortInputPayload> {
  factory MalformedShortInput({
    int? shortInBody,
    int? shortInPath,
    int? shortInQuery,
    int? shortInHeader,
  }) {
    shortInPath ??= 0;
    return _$MalformedShortInput._(
      shortInBody: shortInBody,
      shortInPath: shortInPath,
      shortInQuery: shortInQuery,
      shortInHeader: shortInHeader,
    );
  }

  factory MalformedShortInput.build(
          [void Function(MalformedShortInputBuilder) updates]) =
      _$MalformedShortInput;

  const MalformedShortInput._();

  factory MalformedShortInput.fromRequest(
    MalformedShortInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedShortInput.build((b) {
        b.shortInBody = payload.shortInBody;
        if (request.headers['shortInHeader'] != null) {
          b.shortInHeader = int.parse(request.headers['shortInHeader']!);
        }
        if (request.queryParameters['shortInQuery'] != null) {
          b.shortInQuery = int.parse(request.queryParameters['shortInQuery']!);
        }
        if (labels['shortInPath'] != null) {
          b.shortInPath = int.parse(labels['shortInPath']!);
        }
      });

  static const List<_i1.SmithySerializer<MalformedShortInputPayload>>
      serializers = [MalformedShortInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedShortInputBuilder b) {
    b.shortInPath = 0;
  }

  int? get shortInBody;
  int get shortInPath;
  int? get shortInQuery;
  int? get shortInHeader;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'shortInPath':
        return shortInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedShortInputPayload getPayload() => MalformedShortInputPayload((b) {
        b.shortInBody = shortInBody;
      });
  @override
  List<Object?> get props => [
        shortInBody,
        shortInPath,
        shortInQuery,
        shortInHeader,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedShortInput')
      ..add(
        'shortInBody',
        shortInBody,
      )
      ..add(
        'shortInPath',
        shortInPath,
      )
      ..add(
        'shortInQuery',
        shortInQuery,
      )
      ..add(
        'shortInHeader',
        shortInHeader,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedShortInputPayload
    with _i2.AWSEquatable<MalformedShortInputPayload>
    implements
        Built<MalformedShortInputPayload, MalformedShortInputPayloadBuilder> {
  factory MalformedShortInputPayload(
          [void Function(MalformedShortInputPayloadBuilder) updates]) =
      _$MalformedShortInputPayload;

  const MalformedShortInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedShortInputPayloadBuilder b) {}
  int? get shortInBody;
  @override
  List<Object?> get props => [shortInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedShortInputPayload')
      ..add(
        'shortInBody',
        shortInBody,
      );
    return helper.toString();
  }
}

class MalformedShortInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedShortInputPayload> {
  const MalformedShortInputRestJson1Serializer() : super('MalformedShortInput');

  @override
  Iterable<Type> get types => const [
        MalformedShortInput,
        _$MalformedShortInput,
        MalformedShortInputPayload,
        _$MalformedShortInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedShortInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedShortInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'shortInBody':
          result.shortInBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedShortInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedShortInputPayload(:shortInBody) = object;
    if (shortInBody != null) {
      result$
        ..add('shortInBody')
        ..add(serializers.serialize(
          shortInBody,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
