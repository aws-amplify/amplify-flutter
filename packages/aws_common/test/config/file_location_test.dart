// Generated with tool/generate_tests.dart. Do not modify by hand.

import 'package:aws_common/aws_common.dart';
import 'package:os_detect/override.dart';
import 'package:test/test.dart';

void main() {
  const pathProvider = AWSPathProvider();
  group(testOn: 'vm', 'AWSPathProvider', () {
    test(
        r'User home is loaded from $HOME with highest priority on non-windows platforms.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('linux', ''),
        () {
          overrideEnvironment(
            {
              'HOME': r'/home/user',
              'USERPROFILE': r'ignored',
              'HOMEDRIVE': r'ignored',
              'HOMEPATH': r'ignored'
            },
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'/home/user/.aws/config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'/home/user/.aws/credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'User home is loaded from $HOME with highest priority on windows platforms.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('windows', ''),
        () {
          overrideEnvironment(
            {
              'HOME': r'C:\users\user',
              'USERPROFILE': r'ignored',
              'HOMEDRIVE': r'ignored',
              'HOMEPATH': r'ignored'
            },
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'C:\users\user\.aws\config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'C:\users\user\.aws\credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'User home is loaded from $USERPROFILE on windows platforms when $HOME is not set.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('windows', ''),
        () {
          overrideEnvironment(
            {
              'USERPROFILE': r'C:\users\user',
              'HOMEDRIVE': r'ignored',
              'HOMEPATH': r'ignored'
            },
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'C:\users\user\.aws\config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'C:\users\user\.aws\credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'User home is loaded from $HOMEDRIVE$HOMEPATH on windows platforms when $HOME and $USERPROFILE are not set.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('windows', ''),
        () {
          overrideEnvironment(
            {'HOMEDRIVE': r'C:', 'HOMEPATH': r'\users\user'},
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'C:\users\user\.aws\config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'C:\users\user\.aws\credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'The default config location can be overridden by the user on non-windows platforms.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('linux', ''),
        () {
          overrideEnvironment(
            {'AWS_CONFIG_FILE': r'/other/path/config', 'HOME': r'/home/user'},
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'/other/path/config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'/home/user/.aws/credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'The default credentials location can be overridden by the user on non-windows platforms.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('linux', ''),
        () {
          overrideEnvironment(
            {
              'AWS_SHARED_CREDENTIALS_FILE': r'/other/path/credentials',
              'HOME': r'/home/user'
            },
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'/home/user/.aws/config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'/other/path/credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'The default credentials location can be overridden by the user on windows platforms.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('windows', ''),
        () {
          overrideEnvironment(
            {
              'AWS_CONFIG_FILE': r'C:\other\path\config',
              'HOME': r'C:\users\user'
            },
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'C:\other\path\config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'C:\users\user\.aws\credentials'),
              );
            },
          );
        },
      );
    });

    test(
        r'The default credentials location can be overridden by the user on windows platforms.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('windows', ''),
        () {
          overrideEnvironment(
            {
              'AWS_SHARED_CREDENTIALS_FILE': r'C:\other\path\credentials',
              'HOME': r'C:\users\user'
            },
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'C:\users\user\.aws\config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'C:\other\path\credentials'),
              );
            },
          );
        },
      );
    });

    test(r'The default profile can be overridden via environment variable.',
        () {
      overrideOperatingSystem(
        const OperatingSystem('linux', ''),
        () {
          overrideEnvironment(
            {'AWS_PROFILE': r'other', 'HOME': r'/home/user'},
            () {
              expect(
                pathProvider.configFileLocation,
                completion(r'/home/user/.aws/config'),
              );
              expect(
                pathProvider.sharedCredentialsFileLocation,
                completion(r'/home/user/.aws/credentials'),
              );
            },
          );
        },
      );
    });
  });
}
