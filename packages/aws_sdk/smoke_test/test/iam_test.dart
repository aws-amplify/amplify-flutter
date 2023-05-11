// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smoke_test/src/sdk/iam.dart';
import 'package:test/test.dart';

import 'common.dart';

// Follows selected examples from:
// https://docs.aws.amazon.com/IAM/latest/UserGuide/service_code_examples.html
void main() {
  group('IAM', () {
    const host = 'localhost.localstack.cloud:4566';
    late final IamClient client;

    setUpAll(() {
      client = IamClient(
        region: 'us-west-2',
        baseUri: Uri.http(host),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    test(
      'Add a user to a group',
      () async {
        final groupName = uuid();
        final userName = uuid();

        await client
            .createGroup(
              CreateGroupRequest(
                groupName: groupName,
              ),
            )
            .result;

        await client
            .createUser(
              CreateUserRequest(
                userName: userName,
              ),
            )
            .result;

        await client
            .addUserToGroup(
              AddUserToGroupRequest(
                groupName: groupName,
                userName: userName,
              ),
            )
            .result;

        final group = await client
            .getGroup(
              GetGroupRequest(
                groupName: groupName,
              ),
            )
            .result;

        expect(group.items.map((e) => e.userName), contains(userName));
      },
      skip: 'Failing due to localstack not returning required fields',
    );

    test('Attach a policy to a role', () async {
      final roleName = uuid();
      final policyName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachRolePolicy(
            AttachRolePolicyRequest(
              policyArn: policy.policy!.arn!,
              roleName: roleName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedRolePolicies(
            ListAttachedRolePoliciesRequest(
              roleName: roleName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        contains(policyName),
      );
    });

    test('Attach a policy to a user', () async {
      final userName = uuid();
      final policyName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachUserPolicy(
            AttachUserPolicyRequest(
              policyArn: policy.policy!.arn!,
              userName: userName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedUserPolicies(
            ListAttachedUserPoliciesRequest(
              userName: userName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        contains(policyName),
      );
    });

    test('Attach a policy to a group', () async {
      final groupName = uuid();
      final policyName = uuid();

      await client
          .createGroup(
            CreateGroupRequest(
              groupName: groupName,
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachGroupPolicy(
            AttachGroupPolicyRequest(
              policyArn: policy.policy!.arn!,
              groupName: groupName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedGroupPolicies(
            ListAttachedGroupPoliciesRequest(
              groupName: groupName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        contains(policyName),
      );
    });

    test(
      'Create a group',
      () async {
        final groupName = uuid();

        await client
            .createGroup(
              CreateGroupRequest(
                groupName: groupName,
              ),
            )
            .result;

        final groups = await client
            .listGroups(
              ListGroupsRequest(),
            )
            .result;

        expect(
          groups.items.map((group) => group.groupName),
          contains(groupName),
        );
      },
      skip: 'Failing due to localstack not returning required fields',
    );

    test('Create a policy', () async {
      final policyName = uuid();

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      expect(policy.policy!.policyName, policyName);
    });

    test('Create a role', () async {
      final roleName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      final roles = await client
          .listRoles(
            ListRolesRequest(),
          )
          .result;

      expect(roles.items.map((role) => role.roleName), contains(roleName));
    });

    test('Create a user', () async {
      final userName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      final users = await client
          .listUsers(
            ListUsersRequest(),
          )
          .result;

      expect(users.items.map((user) => user.userName), contains(userName));
    });

    test(
      'Delete a group',
      () async {
        final groupName = uuid();

        await client
            .createGroup(
              CreateGroupRequest(
                groupName: groupName,
              ),
            )
            .result;

        await client
            .deleteGroup(
              DeleteGroupRequest(
                groupName: groupName,
              ),
            )
            .result;

        final groups = await client
            .listGroups(
              ListGroupsRequest(),
            )
            .result;

        expect(
          groups.items.map((group) => group.groupName),
          isNot(contains(groupName)),
        );
      },
      skip: 'Failing due to localstack not returning required fields',
    );

    test('Delete a policy', () async {
      final policyName = uuid();

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .deletePolicy(
            DeletePolicyRequest(
              policyArn: policy.policy!.arn!,
            ),
          )
          .result;

      final policies = await client
          .listPolicies(
            ListPoliciesRequest(),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        isNot(contains(policyName)),
      );
    });

    test('Delete a role', () async {
      final roleName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .deleteRole(
            DeleteRoleRequest(
              roleName: roleName,
            ),
          )
          .result;

      final roles = await client
          .listRoles(
            ListRolesRequest(),
          )
          .result;

      expect(
        roles.items.map((role) => role.roleName),
        isNot(contains(roleName)),
      );
    });

    test('Delete a user', () async {
      final userName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      await client
          .deleteUser(
            DeleteUserRequest(
              userName: userName,
            ),
          )
          .result;

      final users = await client
          .listUsers(
            ListUsersRequest(),
          )
          .result;

      expect(
        users.items.map((user) => user.userName),
        isNot(contains(userName)),
      );
    });

    test('Detach a policy from a user', () async {
      final userName = uuid();
      final policyName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachUserPolicy(
            AttachUserPolicyRequest(
              policyArn: policy.policy!.arn!,
              userName: userName,
            ),
          )
          .result;

      await client
          .detachUserPolicy(
            DetachUserPolicyRequest(
              policyArn: policy.policy!.arn!,
              userName: userName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedUserPolicies(
            ListAttachedUserPoliciesRequest(
              userName: userName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        isNot(contains(policyName)),
      );
    });

    test('Get a policy', () async {
      final policyName = uuid();

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      final policy2 = await client
          .getPolicy(
            GetPolicyRequest(
              policyArn: policy.policy!.arn!,
            ),
          )
          .result;

      expect(policy2.policy!.policyName, policyName);
    });

    test('Get a role', () async {
      final roleName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      final role = await client
          .getRole(
            GetRoleRequest(
              roleName: roleName,
            ),
          )
          .result;

      expect(role.role.roleName, roleName);
    });

    test('Get a user', () async {
      final userName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      final user = await client
          .getUser(
            GetUserRequest(
              userName: userName,
            ),
          )
          .result;

      expect(user.user.userName, userName);
    });

    test('List attached group policies', () async {
      final groupName = uuid();
      final policyName = uuid();

      await client
          .createGroup(
            CreateGroupRequest(
              groupName: groupName,
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachGroupPolicy(
            AttachGroupPolicyRequest(
              policyArn: policy.policy!.arn!,
              groupName: groupName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedGroupPolicies(
            ListAttachedGroupPoliciesRequest(
              groupName: groupName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        contains(policyName),
      );
    });

    test('List attached role policies', () async {
      final roleName = uuid();
      final policyName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachRolePolicy(
            AttachRolePolicyRequest(
              policyArn: policy.policy!.arn!,
              roleName: roleName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedRolePolicies(
            ListAttachedRolePoliciesRequest(
              roleName: roleName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        contains(policyName),
      );
    });

    test('List attached user policies', () async {
      final userName = uuid();
      final policyName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      final policy = await client
          .createPolicy(
            CreatePolicyRequest(
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .attachUserPolicy(
            AttachUserPolicyRequest(
              policyArn: policy.policy!.arn!,
              userName: userName,
            ),
          )
          .result;

      final policies = await client
          .listAttachedUserPolicies(
            ListAttachedUserPoliciesRequest(
              userName: userName,
            ),
          )
          .result;

      expect(
        policies.items.map((policy) => policy.policyName),
        contains(policyName),
      );
    });

    test(
      'List groups',
      () async {
        final groupName = uuid();

        await client
            .createGroup(
              CreateGroupRequest(
                groupName: groupName,
              ),
            )
            .result;

        final groups = await client
            .listGroups(
              ListGroupsRequest(),
            )
            .result;

        expect(
          groups.items.map((group) => group.groupName),
          contains(groupName),
        );
      },
      skip: 'Failing due to localstack not returning required fields',
    );

    test('List groups for user', () async {
      final userName = uuid();
      final groupName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      await client
          .createGroup(
            CreateGroupRequest(
              groupName: groupName,
            ),
          )
          .result;

      await client
          .addUserToGroup(
            AddUserToGroupRequest(
              groupName: groupName,
              userName: userName,
            ),
          )
          .result;

      final groups = await client
          .listGroupsForUser(
            ListGroupsForUserRequest(
              userName: userName,
            ),
          )
          .result;

      expect(
        groups.items.map((group) => group.groupName),
        contains(groupName),
      );
    });

    test(
      'List policies',
      () async {
        final policyName = uuid();

        await client
            .createPolicy(
              CreatePolicyRequest(
                policyName: policyName,
                policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
              ),
            )
            .result;

        // Needs time to propagate.
        await Future<void>.delayed(const Duration(seconds: 1));

        final policies = await client
            .listPolicies(
              ListPoliciesRequest(),
            )
            .result;

        expect(
          policies.items.map((policy) => policy.policyName),
          contains(policyName),
        );
      },
      // TODO(dnys1): Fix
      skip: 'Flaky',
    );

    test('List role policies', () async {
      final roleName = uuid();
      final policyName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .putRolePolicy(
            PutRolePolicyRequest(
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
              policyName: policyName,
              roleName: roleName,
            ),
          )
          .result;

      final policies = await client
          .listRolePolicies(
            ListRolePoliciesRequest(
              roleName: roleName,
            ),
          )
          .result;

      expect(policies.items, contains(policyName));
    });

    test('List roles', () async {
      final roleName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      final roles = await client
          .listRoles(
            ListRolesRequest(),
          )
          .result;

      expect(roles.items.map((role) => role.roleName), contains(roleName));
    });

    test('List user policies', () async {
      final userName = uuid();
      final policyName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      await client
          .putUserPolicy(
            PutUserPolicyRequest(
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
              policyName: policyName,
              userName: userName,
            ),
          )
          .result;

      final policies = await client
          .listUserPolicies(
            ListUserPoliciesRequest(
              userName: userName,
            ),
          )
          .result;

      expect(policies.items, contains(policyName));
    });

    test('List users', () async {
      final userName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      final users = await client
          .listUsers(
            ListUsersRequest(),
          )
          .result;

      expect(users.items.map((user) => user.userName), contains(userName));
    });

    test('Put group policy', () async {
      final groupName = uuid();
      final policyName = uuid();

      await client
          .createGroup(
            CreateGroupRequest(
              groupName: groupName,
            ),
          )
          .result;

      await client
          .putGroupPolicy(
            PutGroupPolicyRequest(
              groupName: groupName,
              policyName: policyName,
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
            ),
          )
          .result;

      final policies = await client
          .listGroupPolicies(
            ListGroupPoliciesRequest(
              groupName: groupName,
            ),
          )
          .result;

      expect(policies.items, contains(policyName));
    });

    test('Put role policy', () async {
      final roleName = uuid();
      final policyName = uuid();

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .putRolePolicy(
            PutRolePolicyRequest(
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
              policyName: policyName,
              roleName: roleName,
            ),
          )
          .result;

      final policies = await client
          .listRolePolicies(
            ListRolePoliciesRequest(
              roleName: roleName,
            ),
          )
          .result;

      expect(policies.items, contains(policyName));
    });

    test('Put user policy', () async {
      final userName = uuid();
      final policyName = uuid();

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      await client
          .putUserPolicy(
            PutUserPolicyRequest(
              policyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
''',
              policyName: policyName,
              userName: userName,
            ),
          )
          .result;

      final policies = await client
          .listUserPolicies(
            ListUserPoliciesRequest(
              userName: userName,
            ),
          )
          .result;

      expect(policies.items, contains(policyName));
    });

    test('Create an OpenID Connect provider', () async {
      final clientId = uuid();

      final provider = await client
          .createOpenIdConnectProvider(
            CreateOpenIdConnectProviderRequest(
              clientIdList: [clientId],
              thumbprintList: [uuid()],
              url: 'https://${uuid()}.com',
            ),
          )
          .result;

      final result = await client
          .getOpenIdConnectProvider(
            GetOpenIdConnectProviderRequest(
              openIdConnectProviderArn: provider.openIdConnectProviderArn!,
            ),
          )
          .result;

      expect(result.clientIdList, contains(clientId));
    });

    test('Remove role from instance profile', () async {
      final instanceProfileName = uuid();
      final roleName = uuid();

      await client
          .createInstanceProfile(
            CreateInstanceProfileRequest(
              instanceProfileName: instanceProfileName,
            ),
          )
          .result;

      await client
          .createRole(
            CreateRoleRequest(
              roleName: roleName,
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
''',
            ),
          )
          .result;

      await client
          .addRoleToInstanceProfile(
            AddRoleToInstanceProfileRequest(
              instanceProfileName: instanceProfileName,
              roleName: roleName,
            ),
          )
          .result;

      await client
          .removeRoleFromInstanceProfile(
            RemoveRoleFromInstanceProfileRequest(
              instanceProfileName: instanceProfileName,
              roleName: roleName,
            ),
          )
          .result;

      final profile = await client
          .getInstanceProfile(
            GetInstanceProfileRequest(
              instanceProfileName: instanceProfileName,
            ),
          )
          .result;

      expect(profile.instanceProfile.roles, isEmpty);
    });

    test('Remove user from group', () async {
      final groupName = uuid();
      final userName = uuid();

      await client
          .createGroup(
            CreateGroupRequest(
              groupName: groupName,
            ),
          )
          .result;

      await client
          .createUser(
            CreateUserRequest(
              userName: userName,
            ),
          )
          .result;

      await client
          .addUserToGroup(
            AddUserToGroupRequest(
              groupName: groupName,
              userName: userName,
            ),
          )
          .result;

      await client
          .removeUserFromGroup(
            RemoveUserFromGroupRequest(
              groupName: groupName,
              userName: userName,
            ),
          )
          .result;

      final group = await client
          .getGroup(
            GetGroupRequest(
              groupName: groupName,
            ),
          )
          .result;

      expect(group.items, isEmpty);
    });
  });
}
