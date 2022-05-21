// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:http/http.dart';

import 'context.dart';

/// Uses `dart:io` server to parse HTTP request data from the C auth library's
/// signer test suite.
class SignerRequestParser {
  late final HttpServer _server;
  late final Stream<HttpRequest> _serverStream;
  late Socket _sendSocket;

  // Allows for correct behavior on all platforms.
  static final platformNewline = RegExp('\r?\n');

  /// Starts a local HTTP server.
  Future<void> init() async {
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    _serverStream = _server.asBroadcastStream();
  }

  /// Close the local HTTP server.
  Future<void> close() => _server.close();

  /// Returns the full request path with query parameters and fragments.
  String _parseRequestUri(String requestLine) {
    final s1 = requestLine.indexOf(' ');
    final s2 = requestLine.lastIndexOf(' ');
    final requestUri = requestLine.substring(s1 + 1, s2);
    return requestUri;
  }

  /// Parses the request path from the first line of the HTTP request.
  String _parseRequestPath(String requestLine) {
    final path = _parseRequestUri(requestLine).split('?').first;
    if (path.contains('%')) {
      return Uri.decodeComponent(path);
    }
    return path;
  }

  /// Parses the query string into a map of query parameters.
  Map<String, String>? _parseQueryString(String requestLine) {
    final requestUriParts = _parseRequestUri(requestLine).split('?');
    if (requestUriParts.length < 2) return null;
    return Map.fromEntries(
      requestUriParts[1].split('&').map((q) {
        final parts = q.split('=');
        return MapEntry(
          parts[0],
          Uri.decodeQueryComponent(parts[1]),
        );
      }),
    );
  }

  Map<String, String> _parseHeaders(List<String> headerLines) {
    final numLines = headerLines.length;
    final Map<String, String> headers = CaseInsensitiveMap({});

    // Process all lines by starting with the ones with the key, i.e. containing
    // a ':' character, and get all values for that key by processing subsequent
    // lines which do not have a ':' character. This allows us to correctly
    // process multiline header values which are incorrectly interpreted by the
    // Dart server.
    var lineNo = 0;
    while (lineNo >= 0 && lineNo < numLines) {
      var line = headerLines[lineNo];
      if (line.isEmpty) {
        break;
      }
      final lineParts = line.split(':');
      final key = lineParts.first;
      final value = StringBuffer(lineParts[1]);
      var nextLineNo = lineNo + 1;
      while (nextLineNo < numLines) {
        line = headerLines[nextLineNo];
        if (line.isEmpty || line.contains(':')) {
          break;
        }
        value.write('\n$line');
        nextLineNo++;
      }

      // Concatenate values for the same key with a ','
      if (headers.containsKey(key)) {
        headers[key] = '${headers[key]},$value';
      } else {
        headers[key] = value.toString();
      }

      // Skip to the next key line
      lineNo = headerLines.indexWhere((el) => el.contains(':'), nextLineNo);
    }

    return headers;
  }

  /// Writes the raw request to the HTTP server and listens for the server to
  /// emit the parsed [HttpRequest].
  Future<AWSBaseHttpRequest> parse(
    String request, {
    required Context context,
  }) async {
    // Some request files have paths with space characters. The Dart server will
    // not accept these and they must be percent-encoded.
    request = _preprocessRequest(request);

    // Use a different connection each time so don't need to bother sending
    // a response from the server.
    _sendSocket = await Socket.connect(
      InternetAddress.loopbackIPv4,
      _server.port,
    );

    // Send request and wait for server to process it.
    final nextRequest = _serverStream.first;
    _sendSocket
      ..write(request)
      ..writeln();
    await _sendSocket.flush();
    await _sendSocket.close();
    final httpRequest = await nextRequest;

    // Capture the body bytes of the request.
    final List<int> body = await ByteStream(httpRequest).toBytes();

    // Close server connection.
    await httpRequest.response.close();

    final requestLines = request.split(platformNewline);

    // Parse these parameters manually since they are modified, normalized, etc.
    // by the Dart server.
    final path = _parseRequestPath(requestLines.first);
    final queryParameters = _parseQueryString(requestLines.first);
    final headers = _parseHeaders(requestLines.sublist(1));
    final host = headers[AWSHeaders.host]!;

    return AWSHttpRequest.raw(
      method: AWSHttpMethodHelper.fromString(httpRequest.method),
      host: host,
      path: path,
      headers: headers,
      queryParameters: queryParameters,
      body: body,
    );
  }

  /// Encodes spaces in the URI before sending to the Dart server. This might
  /// be an implementation detail of the server but it cannot process the
  /// request otherwise.
  String _preprocessRequest(String request) {
    final requestLines = request.split(platformNewline);
    var requestLine = requestLines.first;

    final requestParts = requestLine.split(' ');
    final requestPartsLength = requestParts.length;

    // Only perform work if the request path has spaces.
    //
    // e.g. requestLine = 'GET /abc 123/ HTTP/1.1'
    //   => requestParts = ['GET', '/abc', '123/', 'HTTP/1.1']
    const space = ' ';
    const newline = '\n';
    const encodedSpace = '%20';
    if (requestPartsLength > 3) {
      requestLine = [
        requestParts.first,
        requestParts.sublist(1, requestPartsLength - 1).join(encodedSpace),
        requestParts.last,
      ].join(space);
      request = [
        requestLine,
        ...requestLines.sublist(1),
      ].join(newline);
    }
    return request;
  }
}
