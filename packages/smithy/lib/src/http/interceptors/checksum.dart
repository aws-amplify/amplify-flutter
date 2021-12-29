import 'dart:async';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:smithy/src/http/interceptors/interceptor.dart';

/// Intercepts HTTP operations to include an MD5 content hash in the header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#httpchecksumrequired-trait
class ChecksumInterceptor extends HttpInterceptor<Request> {
  const ChecksumInterceptor();

  @override
  Future<Request> intercept(Request request) async {
    return request
      ..headers['Content-MD5'] =
          await Future.value(hex.encode(md5.convert(request.bodyBytes).bytes));
  }
}
