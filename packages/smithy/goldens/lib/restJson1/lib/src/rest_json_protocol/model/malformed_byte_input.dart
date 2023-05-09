// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.malformed_byte_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_byte_input.g.dart';

abstract class MalformedByteInput
    with
        _i1.HttpInput<MalformedByteInputPayload>,
        _i2.AWSEquatable<MalformedByteInput>
    implements
        Built<MalformedByteInput, MalformedByteInputBuilder>,
        _i1.HasPayload<MalformedByteInputPayload> {
  factory MalformedByteInput({
    int? byteInBody,
    int? byteInPath,
    int? byteInQuery,
    int? byteInHeader,
  }) {
    byteInPath ??= 0;
    return _$MalformedByteInput._(
      byteInBody: byteInBody,
      byteInPath: byteInPath,
      byteInQuery: byteInQuery,
      byteInHeader: byteInHeader,
    );
  }

  factory MalformedByteInput.build(
          [void Function(MalformedByteInputBuilder) updates]) =
      _$MalformedByteInput;

  const MalformedByteInput._();

  factory MalformedByteInput.fromRequest(
    MalformedByteInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedByteInput.build((b) {
        b.byteInBody = payload.byteInBody;
        if (request.headers['byteInHeader'] != null) {
          b.byteInHeader = int.parse(request.headers['byteInHeader']!);
        }
        if (request.queryParameters['byteInQuery'] != null) {
          b.byteInQuery = int.parse(request.queryParameters['byteInQuery']!);
        }
        if (labels['byteInPath'] != null) {
          b.byteInPath = int.parse(labels['byteInPath']!);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedByteInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedByteInputBuilder b) {
    b.byteInPath = 0;
  }

  int? get byteInBody;
  int get byteInPath;
  int? get byteInQuery;
  int? get byteInHeader;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'byteInPath':
        return byteInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedByteInputPayload getPayload() => MalformedByteInputPayload((b) {
        b.byteInBody = byteInBody;
      });
  @override
  List<Object?> get props => [
        byteInBody,
        byteInPath,
        byteInQuery,
        byteInHeader,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedByteInput');
    helper.add(
      'byteInBody',
      byteInBody,
    );
    helper.add(
      'byteInPath',
      byteInPath,
    );
    helper.add(
      'byteInQuery',
      byteInQuery,
    );
    helper.add(
      'byteInHeader',
      byteInHeader,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedByteInputPayload
    with _i2.AWSEquatable<MalformedByteInputPayload>
    implements
        Built<MalformedByteInputPayload, MalformedByteInputPayloadBuilder> {
  factory MalformedByteInputPayload(
          [void Function(MalformedByteInputPayloadBuilder) updates]) =
      _$MalformedByteInputPayload;

  const MalformedByteInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedByteInputPayloadBuilder b) {}
  int? get byteInBody;
  @override
  List<Object?> get props => [byteInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedByteInputPayload');
    helper.add(
      'byteInBody',
      byteInBody,
    );
    return helper.toString();
  }
}

class MalformedByteInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedByteInputPayload> {
  const MalformedByteInputRestJson1Serializer() : super('MalformedByteInput');

  @override
  Iterable<Type> get types => const [
        MalformedByteInput,
        _$MalformedByteInput,
        MalformedByteInputPayload,
        _$MalformedByteInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedByteInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedByteInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'byteInBody':
          result.byteInBody = (serializers.deserialize(
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
    MalformedByteInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedByteInputPayload(:byteInBody) = object;
    if (byteInBody != null) {
      result$
        ..add('byteInBody')
        ..add(serializers.serialize(
          byteInBody,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
