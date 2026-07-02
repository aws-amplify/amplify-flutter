// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_lints/amplify_lints.dart';
import 'package:test/test.dart';

void main() {
  group('hasLicenseHeader', () {
    test('detects missing license header', () {
      const content = 'void main() {}\n';
      expect(hasLicenseHeader(content), isFalse);
    });

    test('detects present license header', () {
      const content =
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.\n'
          '// SPDX-License-Identifier: Apache-2.0\n'
          '\n'
          'void main() {}\n';
      expect(hasLicenseHeader(content), isTrue);
    });

    test('detects missing SPDX line (only copyright present)', () {
      const content =
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.\n'
          '\n'
          'void main() {}\n';
      expect(hasLicenseHeader(content), isFalse);
    });

    test('detects missing copyright line (only SPDX present)', () {
      const content =
          '// SPDX-License-Identifier: Apache-2.0\n'
          '\n'
          'void main() {}\n';
      expect(hasLicenseHeader(content), isFalse);
    });

    test('detects wrong order of header lines', () {
      const content =
          '// SPDX-License-Identifier: Apache-2.0\n'
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.\n'
          '\n'
          'void main() {}\n';
      expect(hasLicenseHeader(content), isFalse);
    });

    test('allows content after the header', () {
      const content =
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.\n'
          '// SPDX-License-Identifier: Apache-2.0\n'
          '\n'
          "import 'dart:core';\n"
          '\n'
          'class Foo {\n'
          '  void bar() {}\n'
          '}\n';
      expect(hasLicenseHeader(content), isTrue);
    });

    test('allows header with trailing whitespace', () {
      const content =
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.  \n'
          '// SPDX-License-Identifier: Apache-2.0  \n'
          '\n'
          'void main() {}\n';
      expect(hasLicenseHeader(content), isTrue);
    });

    test('rejects empty file', () {
      expect(hasLicenseHeader(''), isFalse);
    });

    test('rejects single line file', () {
      expect(hasLicenseHeader('void main() {}'), isFalse);
    });

    test('rejects header with leading blank line', () {
      const content =
          '\n'
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.\n'
          '// SPDX-License-Identifier: Apache-2.0\n'
          '\n'
          'void main() {}\n';
      expect(hasLicenseHeader(content), isFalse);
    });

    test('accepts header as only content (no code after)', () {
      const content =
          '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.\n'
          '// SPDX-License-Identifier: Apache-2.0\n';
      expect(hasLicenseHeader(content), isTrue);
    });
  });

  group('isGeneratedFile', () {
    test('detects .g.dart', () {
      expect(isGeneratedFile('foo.g.dart'), isTrue);
    });

    test('detects .freezed.dart', () {
      expect(isGeneratedFile('model.freezed.dart'), isTrue);
    });

    test('detects .mocks.dart', () {
      expect(isGeneratedFile('service.mocks.dart'), isTrue);
    });

    test('detects .gr.dart', () {
      expect(isGeneratedFile('router.gr.dart'), isTrue);
    });

    test('ignores regular .dart files', () {
      expect(isGeneratedFile('main.dart'), isFalse);
    });

    test('ignores partial suffix match', () {
      expect(isGeneratedFile('not_g.dart'), isFalse);
    });
  });
}
