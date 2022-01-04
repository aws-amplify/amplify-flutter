import 'package:smithy/smithy.dart';

/// Metadata related to an [Operation] regarding its serialization format,
/// authentication schemes, etc.
abstract class Protocol<Input, Output, WireType>
    implements FullSerializer<Input, Output, WireType> {
  const Protocol._();

  Client getClient(Input input);
}

abstract class FullSerializer<Input, Output, WireType>
    implements Serializer<Input, WireType>, Deserializer<Output, WireType> {}
