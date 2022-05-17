# AWS Signature Version 4

An HTTP request signer for AWS Signature Version 4, which can be used to communicate with AWS services. Works in Web, VM, and Flutter projects.

## Using the Signer

To get started using the signer, add it as a dependency in your `pubspec.yaml` and create an instance in your project.

```yaml
dependencies:
  aws_common: ^0.1.0
  aws_signature_v4: ^0.1.0
```

```dart
import 'package:aws_signature_v4/aws_signature_v4.dart';

const signer = AWSSigV4Signer();
```

AWS credentials are configured in the signer by overriding the `credentialsProvider` parameter of the constructor. By default, the signer 
pulls credentials from your environment via the `AWSCredentialsProvider.environment()` provider. On mobile and web, this means using 
the Dart environment which is configured by passing the --dart-define flag to your flutter commands, e.g.

```sh
$ flutter run --dart-define=AWS_ACCESS_KEY_ID=... --dart-define=AWS_SECRET_ACCESS_KEY=...
```

On Desktop, credentials are retrieved from the system's environment using [Platform.environment](https://api.dart.dev/stable/dart-io/Platform/environment.html).

The signer works by transforming HTTP requests using your credentials to create _signed_ HTTP requests which can be sent off in the
same way as normal HTTP requests.

## Example

As an example, here's how you would sign a request to Cognito to gather information about a [User Pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html).

```dart
import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

// Create the signer instance with credentials from the environment.
const AWSSigV4Signer signer = AWSSigV4Signer(
  credentialsProvider: AWSCredentialsProvider.environment(),
);

// Create the signing scope and HTTP request
const region = '<YOUR-REGION>';
final scope = AWSCredentialScope(
  region: region,
  service: AWSService.cognitoIdentityProvider,
);
final AWSHttpRequest request = AWSHttpRequest(
  method: AWSHttpMethod.post,
  uri: Uri.https('cognito-idp.$region.amazonaws.com', '/'),
  headers: const {
    AWSHeaders.target: 'AWSCognitoIdentityProviderService.DescribeUserPool',
    AWSHeaders.contentType: 'application/x-amz-json-1.1',
  },
  body: json.encode({
    'UserPoolId': '<YOUR-USER-POOL-ID>',
  }).codeUnits,
);

// Sign and send the HTTP request
final AWSSignedRequest signedRequest = await signer.sign(
  request,
  credentialScope: scope,
);
final AWSStreamedHttpResponse resp = await signedRequest.send();
final String respBody = await resp.decodeBody();
print(respBody);
```

For a full example, check out the [example](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/aws_signature_v4/example) project in the GitHub repo. 
And for specifics on the different AWS operations you can perform, check out the AWS API Reference docs for the service. For example, 
[here](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html) are the docs for the `DescribeUserPool` API used above.

## Testing

1. Make sure you have pulled down this repository's submodules

```bash
git submodule update --init
```

2. Run `dart test`
