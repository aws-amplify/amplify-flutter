import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/protocol.dart';

/// Metadata related to an [Operation] regarding its serialization format,
/// authentication schemes, etc.
abstract class Protocol<Input, Output, WireType>
    implements FullSerializer<Input, Output, WireType> {
  const Protocol._();

  Client getClient(List<String> protocols);
  Client getStreamingClient(List<String> protocols);
}

abstract class FullSerializer<Input, Output, WireType>
    implements Serializer<Input, WireType>, Deserializer<Output, WireType> {}
