# AWS Signature Version 4

An HTTP request signer for AWS Signature Version 4, which can be used to communicate with AWS services. Works in Web, VM, and Flutter projects.

## How to Use

Using static credentials:

```dart
import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

final AWSCredentials credentials =
    AWSCredentials(accessKeyId, secretAccessKey, sessionToken);
final AWSSigV4Signer signer = AWSSigV4Signer(
  credentialsProvider: AWSCredentialsProvider(credentials),
);

const region = 'us-east-1';
final AWSCredentialScope scope =
    AWSCredentialScope(region: region, service: 'cognito-idp');
final List<int> body = json.encode({
  'UserPoolId': userPoolId,
}).codeUnits;
final AWSHttpRequest sigRequest = AWSHttpRequest(
  method: AWSHttpMethod.post,
  uri: Uri.https('cognito-idp.$region.amazonaws.com', '/'),
  headers: {
    AWSHeaders.target: 'AWSCognitoIdentityProviderService.DescribeUserPool',
    AWSHeaders.contentType: 'application/x-amz-json-1.1',
    AWSHeaders.contentLength: body.length.toString(),
  },
  body: body,
);

final AWSSignedRequest signedRequest = await signer.sign(
  sigRequest,
  credentialScope: scope,
);
final AWSStreamedHttpResponse resp = await signedRequest.send();
final String respBody = await resp.decodeBody();
print(respBody);
```

See the [example](example/) for a full example. Credentials providers are available
for environment-provided credentials via the `AWSCredentialsProvider` class. For retrieval
from other sources, consider implementing the interface in a custom class.

## Testing

1. Make sure you have pulled down this repository's submodules

```bash
git submodule update --init
```

2. Run `dart test`
