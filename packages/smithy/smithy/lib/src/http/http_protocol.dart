// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// A protocol for sending requests over HTTP.
@optionalTypeArgs
abstract class HttpProtocol<InputPayload, Input, OutputPayload, Output>
    implements Protocol<Input, OutputPayload> {
  const HttpProtocol();

  /// The content type of the request payload, added to the `Content-Type`
  /// header.
  String get contentType;

  /// Protocol headers
  Map<String, String> get headers => {
        AWSHeaders.contentType: contentType,
      };

  Serializers get serializers;

  /// The serializer for input payloads and deserializer for response objects
  /// from `List<int>`.
  FullSerializer<List<int>> get wireSerializer;

  /// Request interceptors for the protocol.
  List<HttpRequestInterceptor> get requestInterceptors;

  /// Response interceptors for the protocol.
  List<HttpResponseInterceptor> get responseInterceptors;

  /// Resolves the error type to use based off the operation's supported types
  /// and the response from the server.
  Future<String?> resolveErrorType(AWSBaseHttpResponse response);

  /// Creates a client for the given [input].
  AWSHttpClient getClient(Input input) {
    return AWSHttpClient()..supportedProtocols = SupportedProtocols.http1;
  }

  /// Serializes [input] to an HTTP body.
  Stream<List<int>> serialize(Input input) {
    final payload = switch (input) {
      InputPayload _ => input,
      _ as HasPayload<InputPayload> => input.getPayload(),
    };
    return switch (payload) {
      null => const Stream.empty(),
      String _ => Stream.value(utf8.encode(payload)),
      List<int> _ => Stream.value(payload),
      Stream<List<int>> _ => payload,
      _ => Stream.fromFuture(
          Future.value(
            wireSerializer.serialize(
              payload,
              // Even though we're serializing the payload, specify the
              // [Input] type since the semantics of serializing [Input]
              // vs [InputPayload] vary. For example, some traits
              // may only apply to the payload when serializing it as part
              // of an [Input] struct vs. when directly serialized.
              //
              // We further pass the [InputPayloas] so that our built_value plugins
              // have both types which is helpful when making determinations
              // about how to, for example, process a List<Object?> which
              // could represent either a Map or a List.
              specifiedType: FullType(Input, [FullType(InputPayload)]),
            ),
          ),
        ),
    };
  }

  /// Deserializes an HTTP [response] body to an [OutputPayload].
  Future<OutputPayload> deserialize(Stream<List<int>> response) async {
    return switch (OutputPayload) {
      const (Stream<List<int>>) => response,
      const (List<int>) || const (Uint8List) => await collectBytes(response),
      const (String) => await utf8.decodeStream(response),
      _ => await wireSerializer.deserialize(
          await collectBytes(response),
          specifiedType: FullType(OutputPayload),
        ),
    } as OutputPayload;
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
mixin HasLabel {
  /// Returns the label for requested keys.
  String labelFor(String key);
}

abstract interface class HasPayload<Payload extends Object?> {
  Payload? getPayload();
}

/// Sanitizes header values for using in a list of headers.
String sanitizeHeader(String headerValue, {bool isTimestampList = false}) {
  if ((headerValue.contains(',') ||
          headerValue.contains('\'') ||
          headerValue.contains('"')) &&

      // Timestamp lists do not get escaped for some reason.
      !isTimestampList) {
    return '"${headerValue.replaceAll('"', r'\"')}"';
  }
  return headerValue;
}

final _gmt = RegExp(r'GMT$');

/// Parses a list of headers separated by commas.
List<String> parseHeader(String headerValue, {bool isTimestampList = false}) {
  final tokens = <String>[];
  var start = 0;
  var index = 0;
  var escaped = false;
  while (index < headerValue.length) {
    if (!escaped && headerValue[index] == ',') {
      final token = headerValue.substring(start, index);

      // Timestamp lists do not get escaped for some reason.
      if (isTimestampList && !_gmt.hasMatch(token)) {
        index++;
        continue;
      }
      tokens.add(token);
      start = index + 1;
    } else if (!isTimestampList &&
        (headerValue[index] == ' ' || headerValue[index] == '\t')) {
      start++;
    } else if (headerValue[index] == r'\') {
      index++;
    } else if (headerValue[index] == '"') {
      escaped = !escaped;
    }
    index++;
  }
  tokens.add(headerValue.substring(start, index));
  return tokens.map((headerValue) {
    // Unescape headers which were previously escaped.
    if (headerValue.startsWith('"') && headerValue.endsWith('"')) {
      headerValue = headerValue.substring(1, headerValue.length - 1);
    }
    return headerValue.trim().replaceAll(r'\"', '"');
  }).toList();
}
