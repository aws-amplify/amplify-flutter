import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// Maps path templates to paths using inputs.
typedef PathMapper<Input> = String Function(String, Input);

/// A protocol for sending requests over HTTP.
abstract class HttpProtocol<
    Payload extends Object?,
    Input extends HasPayload<Payload>,
    Output> implements Protocol<Input, Output, Stream<List<int>>> {
  const HttpProtocol();

  /// The content type of the request payload, added to the `Content-Type`
  /// header.
  String get contentType;

  /// The serializer for input payloads and deserializer for response objects
  /// from `List<int>`.
  FullSerializer<Payload, Output, List<int>> get serializer;

  /// Interceptors for the protocol.
  List<HttpInterceptor> get interceptors;

  @override
  HttpClient getClient(Input input) {
    return HttpClient.v1();
  }

  /// Adds the headers for [input].
  ///
  /// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html#httpheader-trait
  @mustCallSuper
  void addHeaders(MapBuilder<String, String> headers, Input input) {
    headers['Content-Type'] = contentType;
  }

  @override
  Stream<List<int>> serialize(Input input) {
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
        return await serializer.serialize(payload);
      }());
    }
  }

  @override
  Future<Output> deserialize(Stream<List<int>> response) async {
    final body = await http.ByteStream(response).toBytes();
    return await serializer.deserialize(body);
  }
}

/// A type which implements the traits needed for use in an HTTP operation.
mixin HttpRequestable<T extends Object?> implements HasLabel, HasPayload<T> {
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
abstract class HasPayload<T extends Object?> {
  /// Whether the input payload is a streaming payload.
  bool get isStreaming;

  /// Returns the value of the payload prior to serialization.
  T getPayload();
}
