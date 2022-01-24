import 'dart:async';
import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:smithy/smithy.dart';

/// Intercepts HTTP operations to include an MD5 content hash in the header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#httpchecksumrequired-trait
class WithChecksum extends HttpInterceptor {
  const WithChecksum();

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
    HttpRequestContextBuilder context,
  ) async {
    final bytes = await ByteStream(request.split()).toBytes();
    request.headers['Content-MD5'] = base64Encode(md5.convert(bytes).bytes);
    return request;
  }
}
