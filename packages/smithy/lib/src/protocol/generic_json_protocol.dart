import 'dart:typed_data';

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';

/// A generic JSON protocol definition for generating service clients without
/// a defined protocol.
///
/// This ensures that at least one serializer is always generated.
class GenericJsonProtocolDefinitionTrait implements ProtocolDefinitionTrait {
  const GenericJsonProtocolDefinitionTrait();

  static const id = ShapeId(namespace: 'smithy.dart', shape: 'genericProtocol');

  @override
  bool get isSynthetic => true;

  @override
  bool get noInlineDocumentSupport => false;

  @override
  List<Object?> get props => [shapeId];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => const {};

  @override
  List<ShapeId> get traits => [JsonNameTrait.id];

  @override
  ProtocolDefinitionTrait get value => this;
}

/// A generic JSON protocol.
class GenericJsonProtocol<InputPayload, Input, OutputPayload, Output>
    extends HttpProtocol<InputPayload, Input, OutputPayload, Output> {
  GenericJsonProtocol({
    this.mediaType,
    this.requestInterceptors = const [],
    this.responseInterceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  })  : _userSerializers = serializers,
        _builderFactories = builderFactories;

  @override
  final List<HttpRequestInterceptor> requestInterceptors;

  @override
  final List<HttpResponseInterceptor> responseInterceptors;

  final List<SmithySerializer> _userSerializers;
  final Map<FullType, Function> _builderFactories;

  static late final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(SmithyJsonPlugin())
        ..addAll([
          BigIntSerializer.asString,
          Int64Serializer.asString,
          TimestampSerializer.dateTime,
          const UnitSerializer(),
        ]))
      .build();

  @override
  late final Serializers serializers = () {
    final builder = _coreSerializers.toBuilder();
    builder.addAll(_userSerializers.where((el) {
      return el.supportedProtocols.contains(protocolId);
    }));
    for (final entry in _builderFactories.entries) {
      builder.addBuilderFactory(entry.key, entry.value);
    }

    // Add a blob serializer for the content type of the input payload.
    builder.add(BlobSerializer(contentType));
    return builder.build();
  }();

  @override
  ShapeId get protocolId => GenericJsonProtocolDefinitionTrait.id;

  /// The `Content-Type` to use for [InputPayload].
  final String? mediaType;

  @override
  String get contentType =>
      mediaType ??
      const {
        String: 'text/plain',
        Uint8List: 'application/octet-stream',
      }[InputPayload] ??
      'application/json';

  @override
  late final JsonSerializer wireSerializer =
      JsonSerializer(serializers, EmptyPayloadType.object);

  @override
  Future<String?> resolveErrorType(AWSStreamedHttpResponse response) async =>
      null;
}
