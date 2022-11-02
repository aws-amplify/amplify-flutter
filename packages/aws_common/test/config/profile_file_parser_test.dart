// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'dart:convert';

import 'package:aws_common/src/config/aws_profile_file.dart';
import 'package:aws_common/src/config/config_file/file_loader.dart';
import 'package:aws_common/src/config/config_file/parser.dart';
import 'package:aws_common/src/config/config_file/resolved_file.dart';
import 'package:test/test.dart';

void main() {
  const loader = AWSProfileFileLoader();
  group(testOn: 'vm', 'AWSProfileFileParser', () {
    test(r'Empty files have no profiles.', () {
      const configContents = r'''
''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Empty profiles have no properties.', () {
      const configContents = r'''
[profile foo]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Profile definitions must end with brackets.', () {
      const configContents = r'''
[profile foo''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Profile definition must end with \']\''),
          ),
        ),
      );
    });
    test(r'Profile names should be trimmed.', () {
      const configContents = r'''
[profile 	foo 	]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Tabs can separate profile names from profile prefix.', () {
      const configContents = r'''
[profile	foo]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Properties must be defined in a profile.', () {
      const configContents = r'''
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected a profile definition'),
          ),
        ),
      );
    });
    test(r'Profiles can contain properties.', () {
      const configContents = r'''
[profile foo]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Windows style line endings are supported.', () {
      const configContents = r'''
[profile foo]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Equals signs are supported in property values.', () {
      const configContents = r'''
[profile foo]
name = val=ue''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"val=ue","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Unicode characters are supported in property values.', () {
      const configContents = r'''
[profile foo]
name = 😂''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"😂","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Profiles can contain multiple properties.', () {
      const configContents = r'''
[profile foo]
name = value
name2 = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}},"name2":{"name":"name2","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Profiles can contain multiple properties.', () {
      const configContents = r'''
[profile foo]
name = value
name2 = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}},"name2":{"name":"name2","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Property keys and values are trimmed.', () {
      const configContents = r'''
[profile foo]
name 	=  	value 	''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Property values can be empty.', () {
      const configContents = r'''
[profile foo]
name =''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Property key cannot be empty.', () {
      const configContents = r'''
[profile foo]
= value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Property did not have a name'),
          ),
        ),
      );
    });
    test(r'Property definitions must contain an equals sign.', () {
      const configContents = r'''
[profile foo]
key : value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected an \'=\' sign defining a property'),
          ),
        ),
      );
    });
    test(r'Multiple profiles can be empty.', () {
      const configContents = r'''
[profile foo]
[profile bar]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}},"bar":{"name":"bar","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Multiple profiles can have properties.', () {
      const configContents = r'''
[profile foo]
name = value
[profile bar]
name2 = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}},"bar":{"name":"bar","properties":{"name2":{"name":"name2","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Blank lines are ignored.', () {
      const configContents = r'''
	 
[profile foo]
	
 
name = value
	 
[profile bar]
 	''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}},"bar":{"name":"bar","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Pound sign comments are ignored.', () {
      const configContents = r'''
# Comment
[profile foo] # Comment
name = value # Comment with # sign''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Semicolon sign comments are ignored.', () {
      const configContents = r'''
; Comment
[profile foo] ; Comment
name = value ; Comment with ; sign''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'All comment types can be used together.', () {
      const configContents = r'''
# Comment
[profile foo] ; Comment
name = value # Comment with ; sign''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Comments can be empty.', () {
      const configContents = r'''
;
[profile foo];
name = value ;
''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Comments can be adjacent to profile names.', () {
      const configContents = r'''
[profile foo]; Adjacent semicolons
[profile bar]# Adjacent pound signs''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}},"bar":{"name":"bar","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Comments adjacent to values are included in the value.', () {
      const configContents = r'''
[profile foo]
name = value; Adjacent semicolons
name2 = value# Adjacent pound signs''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value; Adjacent semicolons","subProperties":{}},"name2":{"name":"name2","value":"value# Adjacent pound signs","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Property values can be continued on the next line.', () {
      const configContents = r'''
[profile foo]
name = value
 -continued''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value\n-continued","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Property values can be continued with multiple lines.', () {
      const configContents = r'''
[profile foo]
name = value
 -continued
 -and-continued''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value\n-continued\n-and-continued","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Continuations are trimmed.', () {
      const configContents = r'''
[profile foo]
name = value
 	 -continued 	 ''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value\n-continued","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Continuation values include pound comments.', () {
      const configContents = r'''
[profile foo]
name = value
 -continued # Comment''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value\n-continued # Comment","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Continuation values include semicolon comments.', () {
      const configContents = r'''
[profile foo]
name = value
 -continued ; Comment''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value\n-continued ; Comment","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Continuations cannot be used outside of a profile.', () {
      const configContents = r'''
 -continued''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected a profile definition'),
          ),
        ),
      );
    });
    test(r'Continuations cannot be used outside of a property.', () {
      const configContents = r'''
[profile foo]
 -continued''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected a property definition'),
          ),
        ),
      );
    });
    test(r'Continuations reset with profile definitions.', () {
      const configContents = r'''
[profile foo]
name = value
[profile foo]
 -continued''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected a property definition'),
          ),
        ),
      );
    });
    test(r'Duplicate profiles in the same file merge properties.', () {
      const configContents = r'''
[profile foo]
name = value
[profile foo]
name2 = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}},"name2":{"name":"name2","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Duplicate properties in a profile use the last one defined.', () {
      const configContents = r'''
[profile foo]
name = value
name = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(
        r'Duplicate properties in duplicate profiles use the last one defined.',
        () {
      const configContents = r'''
[profile foo]
name = value
[profile foo]
name = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(
        r'Default profile with profile prefix overrides default profile without prefix when profile prefix is first.',
        () {
      const configContents = r'''
[profile default]
name = value
[default]
name2 = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(
        r'Default profile with profile prefix overrides default profile without prefix when profile prefix is last.',
        () {
      const configContents = r'''
[default]
name2 = value2
[profile default]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Invalid profile names are ignored.', () {
      const configContents = r'''
[profile in valid]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsContents = r'''
[in valid 2]
name2 = value2''';
      const credentialsFile = ResolvedFile(
        AWSProfileFileType.credentials,
        credentialsContents,
      );

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Invalid property names are ignored.', () {
      const configContents = r'''
[profile foo]
in valid = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'All valid profile name characters are supported.', () {
      const configContents = r'''
[profile ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_":{"name":"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'All valid property name characters are supported.', () {
      const configContents = r'''
[profile foo]
ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_ = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_":{"name":"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Properties can have sub-properties.', () {
      const configContents = r'''
[profile foo]
s3 =
 name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"s3":{"name":"s3","value":"","subProperties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Invalid sub-property definitions cause an error.', () {
      const configContents = r'''
[profile foo]
s3 =
 invalid''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected an \'=\' sign defining a sub-property'),
          ),
        ),
      );
    });
    test(r'Sub-property definitions can have an empty value.', () {
      const configContents = r'''
[profile foo]
s3 =
 name =''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"s3":{"name":"s3","value":"","subProperties":{"name":{"name":"name","value":"","subProperties":{}}}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Sub-property definitions cannot have an empty name.', () {
      const configContents = r'''
[profile foo]
s3 =
 = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Sub-property did not have a name'),
          ),
        ),
      );
    });
    test(r'Sub-property definitions can have an invalid name.', () {
      const configContents = r'''
[profile foo]
s3 =
 in valid = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"s3":{"name":"s3","value":"","subProperties":{"in valid":{"name":"in valid","value":"value","subProperties":{}}}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Sub-properties can have blank lines that are ignored', () {
      const configContents = r'''
[profile foo]
s3 =
 name = value
	 
 name2 = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"s3":{"name":"s3","value":"","subProperties":{"name":{"name":"name","value":"value","subProperties":{}},"name2":{"name":"name2","value":"value2","subProperties":{}}}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Profiles duplicated in multiple files are merged.', () {
      const configContents = r'''
[profile foo]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsContents = r'''
[foo]
name2 = value2''';
      const credentialsFile = ResolvedFile(
        AWSProfileFileType.credentials,
        credentialsContents,
      );

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}},"name2":{"name":"name2","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(
        r'Default profiles with mixed prefixes in the config file ignore the one without prefix when merging.',
        () {
      const configContents = r'''
[profile default]
name = value
[default]
name2 = value2
[profile default]
name3 = value3''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"name":{"name":"name","value":"value","subProperties":{}},"name3":{"name":"name3","value":"value3","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Default profiles with mixed prefixes merge with credentials', () {
      const configContents = r'''
[profile default]
name = value
[default]
name2 = value2
[profile default]
name3 = value3''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsContents = r'''
[default]
secret=foo''';
      const credentialsFile = ResolvedFile(
        AWSProfileFileType.credentials,
        credentialsContents,
      );

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"default":{"name":"default","properties":{"name":{"name":"name","value":"value","subProperties":{}},"name3":{"name":"name3","value":"value3","subProperties":{}},"secret":{"name":"secret","value":"foo","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Duplicate properties between files uses credentials property.', () {
      const configContents = r'''
[profile foo]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsContents = r'''
[foo]
name = value2''';
      const credentialsFile = ResolvedFile(
        AWSProfileFileType.credentials,
        credentialsContents,
      );

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value2","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Config profiles without prefix are ignored.', () {
      const configContents = r'''
[foo]
name = value''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Credentials profiles with prefix are ignored.', () {
      const configFile = ResolvedFile.empty(AWSProfileFileType.config);

      const credentialsContents = r'''
[profile foo]
name = value''';
      const credentialsFile = ResolvedFile(
        AWSProfileFileType.credentials,
        credentialsContents,
      );

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Comment characters adjacent to profile decls', () {
      const configContents = r'''
[profile foo]; semicolon
[profile bar]# pound''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{}},"bar":{"name":"bar","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'Invalid continuation', () {
      const configContents = r'''
[profile foo]
name = value
[profile foo]
 -continued''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        throwsA(
          isA<AWSProfileFileException>().having(
            (e) => e.message,
            'message',
            contains('Expected a property definition, found continuation'),
          ),
        ),
      );
    });
    test(r'profile name with no space after `profile` is invalid', () {
      const configContents = r'''
[profilefoo]
name = value
[profile bar]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"bar":{"name":"bar","properties":{}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'profile name with extra whitespace', () {
      const configContents = r'''
[   profile foo    ]
name = value
[profile bar]''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"bar":{"name":"bar","properties":{}},"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'profile name with extra whitespace in credentials', () {
      const configFile = ResolvedFile.empty(AWSProfileFileType.config);

      const credentialsContents = r'''
[   foo    ]
name = value
[profile bar]''';
      const credentialsFile = ResolvedFile(
        AWSProfileFileType.credentials,
        credentialsContents,
      );

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
    test(r'properties from an invalid profile name are ignored', () {
      const configContents = r'''
[profile foo]
name = value
[profile in valid]
x = 1
[profile bar]
name = value2''';
      const configFile =
          ResolvedFile(AWSProfileFileType.config, configContents);

      const credentialsFile =
          ResolvedFile.empty(AWSProfileFileType.credentials);

      final expected = AWSProfileFile.fromJson(
        jsonDecode(
          r'''
{"profiles":{"bar":{"name":"bar","properties":{"name":{"name":"name","value":"value2","subProperties":{}}}},"foo":{"name":"foo","properties":{"name":{"name":"name","value":"value","subProperties":{}}}}}}
''',
        ) as Map<String, Object?>,
      );
      expect(
        loader.load(
          configFile: configFile,
          credentialsFile: credentialsFile,
        ),
        completion(equals(expected)),
      );
    });
  });
}
