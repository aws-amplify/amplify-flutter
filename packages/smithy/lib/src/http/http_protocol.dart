import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

/// A protocol for sending requests over HTTP.
abstract class HttpProtocol<InputPayload, Input, OutputPayload, Output>
    implements Protocol<Input, Output, Stream<List<int>>> {
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

  /// Resolves the error type to use based off the operation's supported types
  /// and the response from the server.
  Future<String?> resolveErrorType(AWSStreamedHttpResponse response);

  @override
  HttpClient getClient(Uri baseUri, Input input) {
    return HttpClient.v1(baseUri);
  }

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) {
    final Object? payload = input is HasPayload ? input.getPayload() : input;
    if (payload is String) {
      return Stream.value(utf8.encode(payload));
    } else if (payload is List<int>) {
      return Stream.value(payload);
    } else if (payload is Stream<List<int>>) {
      return payload;
    } else {
      return Stream.fromFuture(() async {
        return await wireSerializer.serialize(
          input,
          specifiedType: FullType(Input, [FullType(InputPayload)]),
        );
      }());
    }
  }

  @override
  Future<Object?> deserialize(
    Stream<List<int>> response, {
    FullType? specifiedType,
  }) async {
    specifiedType ??= FullType(OutputPayload);
    if (OutputPayload == Stream<List<int>>) {
      return response;
    }

    final body = await http.ByteStream(response).toBytes();
    if (OutputPayload == List<int>) {
      return body;
    } else if (OutputPayload == String) {
      return body.isEmpty ? '' : utf8.decode(body);
    }
    return await wireSerializer.deserialize(body, specifiedType: specifiedType);
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

abstract class HasPayload<Payload> {
  Payload? getPayload();
}

/// Sanitizes header values for using in a list of headers.
String sanitizeHeader(String headerValue) {
  if (headerValue.contains(',') ||
      headerValue.contains('\'') ||
      headerValue.contains('"')) {
    return '"$headerValue"';
  }
  return headerValue;
}

/// Parses a list of headers separated by commas.
List<String> parseHeader(String headerValue) {
  final tokens = <String>[];
  int start = 0;
  int index = 0;
  while (index < headerValue.length) {
    if (headerValue[index] == ',') {
      tokens.add(headerValue.substring(start, index));
      start = index + 1;
    } else if (headerValue[index] == ' ' || headerValue[index] == '\t') {
      start++;
    }
    index++;
  }
  tokens.add(headerValue.substring(start, index));
  return tokens;
}
