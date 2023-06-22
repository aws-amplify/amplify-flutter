// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/util/docs.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_test/smithy_test.dart';

import '../common.dart';

void main() {
  group('@documentation', () {
    const docs = 'Some documentation';

    group('format docs', () {
      test('prepends doc comment', () {
        expect(formatDocs(docs), equals('/// $docs'));
      });

      test('parses <fullname>', () {
        const docs = '<fullname>Amazon Cognito Federated Identities</fullname>';
        expect(formatDocs(docs), startsWith('/// ## Amazon'));
      });

      test('formatDocs', () {
        const docs =
            '<fullname>Amazon Cognito Federated Identities</fullname>\n         <p>Amazon Cognito Federated Identities is a web service that delivers scoped temporary\n         credentials to mobile devices and other untrusted environments. It uniquely identifies a\n         device and supplies the user with a consistent identity over the lifetime of an\n         application.</p>\n         <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or\n         more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon\n         Cognito user pool, and you can also choose to support unauthenticated access from your app.\n         Cognito delivers a unique identifier for each user and acts as an OpenID token provider\n         trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS\n         credentials.</p>\n         <p>For a description of the authentication flow from the Amazon Cognito Developer Guide\n         see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Authentication Flow</a>.</p>\n         <p>For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito Federated Identities</a>.</p>';
        const expected = '''
/// ## Amazon Cognito Federated Identities
///
/// Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.
///
/// Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.
///
/// For a description of the authentication flow from the Amazon Cognito Developer Guide see [Authentication Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
///
/// For more information see [Amazon Cognito Federated Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).''';

        expect(formatDocs(docs), equals(expected));
      });
    });

    test('structure', () {
      final struct = StructureShape(
        (b) => b
          ..shapeId = const ShapeId(namespace: 'example', shape: 'MyStruct')
          ..members = NamedMembersMap({})
          ..traits = TraitMap.fromTraits(const [DocumentationTrait(docs)]),
      );
      final context = createTestContext([struct]);
      context.run(() {
        expect(struct.hasDocs(context), isTrue);
        expect(struct.formattedDocs(context), contains(docs));

        final generator = StructureGenerator(struct, context);
        final emitter = buildEmitter(Allocator.none);

        final ctor = generator.factoryConstructor;
        expect(ctor.docs, isNotEmpty);
        final ctorOutput =
            emitter.visitConstructor(ctor, generator.className).toString();
        expect(ctorOutput, contains(docs));

        final response = generator.fromResponseConstructor;
        expect(ctor.docs, isNotEmpty);
        final responseOutput =
            emitter.visitConstructor(response, generator.className).toString();
        expect(responseOutput, startsWith('/// '));
      });
    });
  });
}
