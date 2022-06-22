// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('AWSProfile', () {
    test('Regions can be loaded from profiles', () {
      final profile = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}}}},"session":{"name":"session","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"789","subProperties":{}}}},"role":{"name":"role","properties":{"role_arn":{"name":"role_arn","value":"arn:aws:iam::123456789:role/MyRole","subProperties":{}},"source_profile":{"name":"source_profile","value":"default","subProperties":{}},"aws_access_key_id":{"name":"aws_access_key_id","value":"should-be-ignored","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"should-be-ignored","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"should-be-ignored","subProperties":{}}}},"region":{"name":"region","properties":{"region":{"name":"region","value":"us-east-1","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );

      expect(profile.region('region'), 'us-east-1');
    });
    test('Role credentials have highest priority', () {
      final profile = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}}}},"session":{"name":"session","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"789","subProperties":{}}}},"role":{"name":"role","properties":{"role_arn":{"name":"role_arn","value":"arn:aws:iam::123456789:role/MyRole","subProperties":{}},"source_profile":{"name":"source_profile","value":"default","subProperties":{}},"aws_access_key_id":{"name":"aws_access_key_id","value":"should-be-ignored","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"should-be-ignored","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"should-be-ignored","subProperties":{}}}},"region":{"name":"region","properties":{"region":{"name":"region","value":"us-east-1","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );

      expect(
        profile.credentials('role'),
        isA<AWSCredentialsProvider>(),
        skip: 'Assume role credentials are not supported yet',
      );
    });
    test('Session credentials have next highest priority', () {
      final profile = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}}}},"session":{"name":"session","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"789","subProperties":{}}}},"role":{"name":"role","properties":{"role_arn":{"name":"role_arn","value":"arn:aws:iam::123456789:role/MyRole","subProperties":{}},"source_profile":{"name":"source_profile","value":"default","subProperties":{}},"aws_access_key_id":{"name":"aws_access_key_id","value":"should-be-ignored","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"should-be-ignored","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"should-be-ignored","subProperties":{}}}},"region":{"name":"region","properties":{"region":{"name":"region","value":"us-east-1","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );

      expect(
        profile.credentials('session'),
        isA<StaticCredentialsProvider>().having(
          (p) => p.retrieve().sessionToken,
          'sessionToken',
          isNotNull,
        ),
      );
    });
    test('Basic credentials have lowest priority', () {
      final profile = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}}}},"session":{"name":"session","properties":{"aws_access_key_id":{"name":"aws_access_key_id","value":"123","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"456","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"789","subProperties":{}}}},"role":{"name":"role","properties":{"role_arn":{"name":"role_arn","value":"arn:aws:iam::123456789:role/MyRole","subProperties":{}},"source_profile":{"name":"source_profile","value":"default","subProperties":{}},"aws_access_key_id":{"name":"aws_access_key_id","value":"should-be-ignored","subProperties":{}},"aws_secret_access_key":{"name":"aws_secret_access_key","value":"should-be-ignored","subProperties":{}},"aws_session_token":{"name":"aws_session_token","value":"should-be-ignored","subProperties":{}}}},"region":{"name":"region","properties":{"region":{"name":"region","value":"us-east-1","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );

      expect(
        profile.credentials('default'),
        isA<StaticCredentialsProvider>().having(
          (p) => p.retrieve().sessionToken,
          'sessionToken',
          isNull,
        ),
      );
    });
  });
}
