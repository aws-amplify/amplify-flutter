import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('CanonicalRequest', () {
    test('Host header is always signed', () {
      final uri = Uri.parse('https://example.com/path');
      final request = AWSHttpRequest.get(uri);

      final signedRequest = CanonicalRequest(
        request: request,
        credentials: dummyCredentials,
        credentialScope: dummyCredentialScope,
        contentLength: 0,
        payloadHash: emptyPayloadHash,
      );
      expect(
        CaseInsensitiveMap(signedRequest.canonicalHeaders),
        contains(AWSHeaders.host),
      );
      expect(
        CaseInsensitiveSet(signedRequest.signedHeaders),
        contains(AWSHeaders.host),
      );

      final presignedRequest = CanonicalRequest.presignedUrl(
        request: request,
        credentials: dummyCredentials,
        credentialScope: dummyCredentialScope,
        contentLength: 0,
        payloadHash: emptyPayloadHash,
        expiresIn: const Duration(seconds: 300),
        algorithm: AWSAlgorithm.hmacSha256,
      );
      expect(
        CaseInsensitiveMap(presignedRequest.canonicalHeaders),
        contains(AWSHeaders.host),
      );
      expect(
        CaseInsensitiveSet(presignedRequest.signedHeaders),
        contains(AWSHeaders.host),
      );
    });
  });
}
