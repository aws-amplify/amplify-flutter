import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

abstract class HttpTrait<Input, Output> {
  /// Returns the label for the given [key] and [input].
  ///
  /// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html#httplabel-trait
  String? label(Input input, String key);

  /// Returns the headers for [input].
  ///
  /// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html#httpheader-trait
  void addHeaders(Input input, Map<String, String> headers);

  /// Returns the query paramters for [input].
  ///
  /// See:
  /// - https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html#httpquery-trait
  /// - https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html#httpqueryparams-trait
  void addQueryParameters(Input input, Map<String, String> queryParameters);

  /// Returns the path of the operation, with all labels replaced with values.
  ///
  /// See: https://awslabs.github.io/smithy/1.0/spec/core/http-traits.html#httplabel-trait
  String path(Input input, String path);
}

/// A protocol for sending requests over HTTP.
abstract class HttpProtocol<Payload extends Object?,
        Input extends HasPayload<Payload>, Output>
    implements
        Protocol<Input, Output, Stream<List<int>>>,
        HttpTrait<Input, Output> {
  const HttpProtocol();

  /// The content type of the request payload, added to the `Content-Type` header.
  String get contentType;

  /// The serializer for input payloads and deserializer for response objects
  /// from `List<int>`.
  FullSerializer<Payload, Output, List<int>> get serializer;

  /// Regex for path inputs.
  static final _pathRegex = RegExp(r'{(\w+)}');

  @override
  HttpClient getClient(Input input) {
    if (input.isStreaming) {
      return Http1_1Client();
    }
    // TODO: Add h2
    return Http1_1Client();
  }

  @override
  String label(Input input, String key) =>
      throw MissingLabelException(input, key);

  @override
  @mustCallSuper
  void addHeaders(Input input, Map<String, String> headers) {
    headers['Content-Type'] = contentType;
  }

  @override
  @mustCallSuper
  void addQueryParameters(Input input, Map<String, String> queryParameters) {}

  @override
  String path(Input input, String path) {
    return path.replaceAllMapped(_pathRegex, (match) {
      final key = match.group(0)!;
      return label(input, key);
    });
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

/// A utility for operations to access the payload of the request without
/// knowing the shape of the request or making any assumptions.
abstract class HasPayload<T extends Object?> {
  /// Whether the input payload is a streaming payload.
  bool get isStreaming;

  /// Returns the value of the payload prior to serialization.
  T getPayload();
}
