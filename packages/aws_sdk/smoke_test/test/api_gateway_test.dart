// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smoke_test/src/sdk/api_gateway.dart' hide Tags;
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('API Gateway', () {
    late final ApiGatewayClient client;

    setUpAll(() {
      client = ApiGatewayClient(
        region: 'us-west-2',
        baseUri: Uri.http('localhost:4566'),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    // Follows the tutorial here for creating a REST API:
    // https://docs.aws.amazon.com/apigateway/latest/developerguide/create-api-using-awssdk.html
    test('Create a REST API', () async {
      // Create the REST API
      final restApi = await client
          .createRestApi(
            CreateRestApiRequest(
              name: 'Simple PetStore (Dart SDK)',
              binaryMediaTypes: ['*'],
              description: 'Demo API created using the AWS SDK for Dart',
              version: '0.00.001',
            ),
          )
          .result;
      safePrint('Successfully created REST API: $restApi');
      expect(restApi.id, isNotNull);

      // Verify creation of the REST API
      final restApiId = restApi.id!;
      final resources = await client
          .getResources(
            GetResourcesRequest(restApiId: restApiId),
          )
          .result;
      safePrint('REST API resources: $resources');
      expect(resources.items, hasLength(1));

      // Create the /pets resource
      final rootResourceId = resources.items.single.id!;
      final petsResource = await client
          .createResource(
            CreateResourceRequest(
              parentId: rootResourceId,
              pathPart: 'pets',
              restApiId: restApiId,
            ),
          )
          .result;
      safePrint('Created /pets resources: $petsResource');
      expect(petsResource.id, isNotNull);

      // Create the /pets/{petId} resource
      final petsResourceId = petsResource.id!;
      final petResource = await client
          .createResource(
            CreateResourceRequest(
              parentId: petsResourceId,
              pathPart: '{petId}',
              restApiId: restApiId,
            ),
          )
          .result;
      safePrint('Created /pets/{petId} resource: $petResource');
      expect(petResource.id, isNotNull);
      final petResourceId = petResource.id!;

      // Create the method for GET /pets
      final getPetsMethod = await client
          .putMethod(
            PutMethodRequest(
              authorizationType: 'NONE',
              httpMethod: 'GET',
              resourceId: petsResourceId,
              restApiId: restApiId,
            ),
          )
          .result;
      safePrint('Created method GET /pets: $getPetsMethod');

      // Create the method for GET /pets/{petId}
      final getPetMethod = await client
          .putMethod(
            PutMethodRequest(
              authorizationType: 'NONE',
              httpMethod: 'GET',
              resourceId: petResourceId,
              restApiId: restApiId,
              requestParameters: {
                'method.request.path.petId': true,
              },
            ),
          )
          .result;
      safePrint('Created method GET /pets/{petId}: $getPetMethod');
      expect(
        getPetMethod.requestParameters?.toMap(),
        equals({
          'method.request.path.petId': true,
        }),
        reason: 'Should match input',
      );

      // Create the response for method GET /pets
      final getPetsResponse = await client
          .putMethodResponse(
            PutMethodResponseRequest(
              httpMethod: 'GET',
              resourceId: petsResourceId,
              restApiId: restApiId,
              statusCode: '200',
            ),
          )
          .result;
      safePrint('Created response for GET /pets: $getPetsResponse');
      expect(
        getPetsResponse.statusCode,
        '200',
        reason: 'Should match input',
      );

      // Create the response for method GET /pets/{petId}
      final getPetResponse = await client
          .putMethodResponse(
            PutMethodResponseRequest(
              httpMethod: 'GET',
              resourceId: petResourceId,
              restApiId: restApiId,
              statusCode: '200',
            ),
          )
          .result;
      safePrint('Created response for GET /pets/{petId}: $getPetResponse');
      expect(
        getPetResponse.statusCode,
        '200',
        reason: 'Should match input',
      );

      // Create the integration to connect GET /pets to a backend
      final getPetsIntegration = await client
          .putIntegration(
            PutIntegrationRequest(
              httpMethod: 'GET',
              integrationHttpMethod: 'GET',
              resourceId: petsResourceId,
              restApiId: restApiId,
              type: IntegrationType.mock,
            ),
          )
          .result;
      safePrint('Added integration for GET /pets: $getPetsIntegration');
      expect(
        getPetsIntegration.type,
        IntegrationType.mock,
        reason: 'Should match input',
      );

      // Create the integration to connect GET /pets/{petId} to a backend
      final getPetIntegration = await client
          .putIntegration(
            PutIntegrationRequest(
              httpMethod: 'GET',
              integrationHttpMethod: 'GET',
              resourceId: petResourceId,
              restApiId: restApiId,
              type: IntegrationType.mock,
              requestParameters: {
                'integration.request.path.id': 'method.request.path.petId',
              },
            ),
          )
          .result;
      safePrint(
        'Added integration for GET /pets/{petId}: '
        '$getPetIntegration',
      );
      expect(
        getPetIntegration.type,
        IntegrationType.mock,
        reason: 'Should match input',
      );
      expect(
        getPetIntegration.requestParameters?.toMap(),
        equals({
          'integration.request.path.id': 'method.request.path.petId',
        }),
        reason: 'Should match input',
      );

      // Create the 200 integration response for GET /pets
      final getPetsIntegrationResponse = await client
          .putIntegrationResponse(
            PutIntegrationResponseRequest(
              httpMethod: 'GET',
              resourceId: petsResourceId,
              restApiId: restApiId,
              statusCode: '200',
            ),
          )
          .result;
      safePrint(
        'Added integration response for GET /pets: '
        '$getPetsIntegrationResponse',
      );
      expect(
        getPetsIntegrationResponse.statusCode,
        '200',
        reason: 'Should match input',
      );

      // Create the 200 integration response for GET /pets/{petId}
      final getPetIntegrationResponse = await client
          .putIntegrationResponse(
            PutIntegrationResponseRequest(
              httpMethod: 'GET',
              resourceId: petResourceId,
              restApiId: restApiId,
              statusCode: '200',
            ),
          )
          .result;
      safePrint(
        'Added integration response for GET /pets/{petId}: '
        '$getPetIntegrationResponse',
      );
      expect(
        getPetIntegrationResponse.statusCode,
        '200',
        reason: 'Should match input',
      );

      // TODO(dnys1): https://github.com/localstack/localstack/issues/8553
      // {
      //   // Test invoke GET /pets
      //   final getPetsTestResponse = await client
      //       .testInvokeMethod(
      //         TestInvokeMethodRequest(
      //           httpMethod: 'GET',
      //           resourceId: petsResourceId,
      //           restApiId: restApiId,
      //           pathWithQueryString: '/',
      //         ),
      //       )
      //       .result;
      //   safePrint('Successfully executed GET /pets: $getPetsTestResponse');
      //   expect(getPetsTestResponse.status, 200);

      //   // Test invoke GET /pets/{petId}
      //   final getPetTestResponse = await client
      //       .testInvokeMethod(
      //         TestInvokeMethodRequest(
      //           httpMethod: 'GET',
      //           resourceId: petResourceId,
      //           restApiId: restApiId,
      //           pathWithQueryString: '/',
      //         ),
      //       )
      //       .result;
      //   safePrint(
      //       'Successfully executed GET /pets/{petId}: $getPetTestResponse');
      //   expect(getPetTestResponse.status, 200);

      //   // Create deployment
      //   final petsDeployment = await client
      //       .createDeployment(
      //         CreateDeploymentRequest(
      //           restApiId: restApiId,
      //           stageName: 'test',
      //           stageDescription: 'Test deployment',
      //           description: 'API deployment',
      //         ),
      //       )
      //       .result;
      //   safePrint('Successfully deployed pets API: $petsDeployment');
      //   expect(petsDeployment.id, isNotNull);
      // }
    });
  });
}
