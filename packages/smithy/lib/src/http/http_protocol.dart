import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

/// A protocol for sending requests over HTTP.
abstract class HttpProtocol<
    Payload extends Object?,
    Input extends HttpInput<Payload>,
    Output> implements Protocol<Input, Object?, Stream<List<int>>> {
  const HttpProtocol();

  /// The content type of the request payload, added to the `Content-Type`
  /// header.
  String get contentType;

  /// Protocol headers
  Map<String, String> get headers => {
        'Content-Type': contentType,
      };

  Serializers get serializers;

  /// The serializer for input payloads and deserializer for response objects
  /// from `List<int>`.
  FullSerializer<List<int>> get wireSerializer;

  /// Interceptors for the protocol.
  List<HttpInterceptor> get interceptors;

  @override
  HttpClient getClient(Uri baseUri, Input input) {
    return HttpClient.v1(baseUri);
  }

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) {
    input as Input;
    var payload = input.getPayload();
    if (payload == null) {
      return const Stream.empty();
    } else if (payload is String) {
      return Stream.value(utf8.encode(payload));
    } else if (payload is List<int>) {
      return Stream.value(payload);
    } else if (payload is Stream<List<int>>) {
      return payload;
    } else {
      return Stream.fromFuture(() async {
        return await wireSerializer.serialize(payload);
      }());
    }
  }

  @override
  Future<Object?> deserialize(Stream<List<int>> response,
      {FullType? specifiedType}) async {
    specifiedType ??= FullType(Output);
    final body = await http.ByteStream(response).toBytes();
    return await wireSerializer.deserialize(body);
  }
}

/// A structure which implements the traits needed for use as input to an HTTP
/// operation.
mixin HttpInput<Payload extends Object?>
    implements HasLabel, HasPayload<Payload> {
  @override
  String labelFor(String key) => throw MissingLabelException(this, key);
}

/// A type which maps properties to path labels.
abstract class HasLabel {
  /// Returns the label for requested keys.
  String labelFor(String key);
}

/// A utility for operations to access the payload of the request without
/// knowing the shape of the request or making any assumptions.
abstract class HasPayload<Payload extends Object?> {
  /// Whether the input payload is a streaming payload.
  bool get isStreaming;

  /// Returns the value of the payload prior to serialization.
  Payload getPayload();
}
