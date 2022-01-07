import 'package:smithy/smithy.dart';

/// Metadata related to an [Operation] regarding its serialization format,
/// authentication schemes, etc.
abstract class Protocol<Input, Output, WireType>
    implements FullSerializer<Input, Output, WireType> {
  const Protocol._();

  /// The shape ID of the protocol trait this class implements.
  ShapeId get protocolId;

  /// Creates a client for the given [baseUri] and [input].
  Client getClient(Uri baseUri, Input input);
}

abstract class FullSerializer<Input, Output, WireType>
    implements Serializer<Input, WireType>, Deserializer<Output, WireType> {}
