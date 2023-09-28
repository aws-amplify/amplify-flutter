// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

void main() {
  group('VersionResolver', () {
    final noBreaking = ConstraintUpdater();
    final withBreaking = ConstraintUpdater(
      includeBreakingChanges: true,
    );

    group('updateFor', () {
      group('pre-v1', () {
        const dependency = 'example_pre';
        final latest = Version.parse('0.3.5');
        final v1 = Version.parse('1.0.0');
        final v2 = Version.parse('2.0.0');

        group('pinned to Version', () {
          test('no change', () {
            final currentConstraint = latest;
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('non-breaking', () {
            final currentConstraint = Version.parse('0.3.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              latest,
            );
          });

          test('breaking', () {
            final currentConstraint = Version.parse('0.2.1');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              latest,
            );
          });
        });

        group('pinned to patch window', () {
          test('no change', () {
            final currentConstraint = VersionConstraint.parse('>=0.3.0 <0.3.6');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('non-breaking', () {
            final currentConstraint = VersionConstraint.parse('>=0.3.0 <0.3.4');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=0.3.0 <=0.3.5'),
            );
          });

          test('breaking', () {
            final currentConstraint = VersionConstraint.parse('>=0.2.0 <0.2.7');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=0.3.5 <0.3.6'),
            );
          });
        });

        group('pinned to single minor window', () {
          test('no change', () {
            final currentConstraint = VersionConstraint.parse('>=0.3.0 <0.4.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('breaking', () {
            final currentConstraint = VersionConstraint.parse('>=0.2.0 <0.3.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=0.3.0 <0.4.0'),
            );
          });
        });

        group('pinned to multiple minors window', () {
          test('no change', () {
            final currentConstraint = VersionConstraint.parse('>=0.2.0 <0.4.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('breaking', () {
            final currentConstraint = VersionConstraint.parse('>=0.1.0 <0.3.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=0.1.0 <0.4.0'),
            );
          });
        });

        group('pinned to multiple majors window', () {
          test('no change', () {
            final currentConstraint = VersionConstraint.parse('>=0.2.0 <2.0.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                v1,
              ),
              isNull,
            );
          });

          test('breaking', () {
            final currentConstraint = VersionConstraint.parse('>=0.2.0 <2.0.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                v2,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                v2,
              ),
              VersionConstraint.parse('>=0.2.0 <3.0.0'),
            );
          });
        });
      });

      group('post-v1', () {
        const dependency = 'example';
        final latest = Version.parse('5.3.5');

        group('pinned to Version', () {
          test('no change', () {
            final currentConstraint = latest;
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('non-breaking', () {
            final currentConstraint = Version.parse('5.3.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              latest,
            );
          });

          test('breaking', () {
            final currentConstraint = Version.parse('4.0.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              latest,
            );
          });
        });

        group('pinned to patch window', () {
          test('no change', () {
            final currentConstraint = VersionConstraint.parse('>=5.3.0 <5.3.6');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('non-breaking', () {
            final currentConstraint = VersionConstraint.parse('>=5.3.0 <5.3.4');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=5.3.0 <=5.3.5'),
            );
          });

          test('breaking', () {
            final currentConstraint = VersionConstraint.parse('>=4.3.0 <4.3.6');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=5.3.5 <5.3.6'),
            );
          });
        });

        group('pinned to single minor window', () {
          test('no change', () {
            final currentConstraint = VersionConstraint.parse('>=5.3.0 <5.4.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
          });

          test('non-breaking', () {
            final currentConstraint = VersionConstraint.parse('>=5.2.0 <5.3.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=5.3.0 <5.4.0'),
            );
          });

          test('breaking', () {
            final currentConstraint = VersionConstraint.parse('>=4.0.0 <4.1.0');
            expect(
              noBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              isNull,
            );
            expect(
              withBreaking.updateFor(
                dependency,
                currentConstraint,
                latest,
              ),
              VersionConstraint.parse('>=5.3.0 <5.4.0'),
            );
          });
        });

        group('pinned to multiple minors window', () {
          group('no change', () {
            test('excludeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=5.2.0 <5.5.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
            });

            test('includeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=5.2.0 <=5.5.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
            });
          });

          group('non-breaking', () {
            test('excludeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=5.1.0 <5.3.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                VersionConstraint.parse('>=5.1.0 <5.4.0'),
              );
            });

            test('includeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=5.1.0 <=5.3.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                VersionConstraint.parse('>=5.1.0 <=5.3.5'),
              );
            });
          });

          group('breaking', () {
            test('excludeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=4.0.0 <4.3.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
              expect(
                withBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                VersionConstraint.parse('>=5.0.0 <5.4.0'),
              );
            });

            test('includeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=4.0.0 <=4.3.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
              expect(
                withBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                VersionConstraint.parse('>=5.0.0 <=5.3.5'),
              );
            });
          });
        });

        group('pinned to multiple majors window', () {
          group('no change', () {
            test('excludeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=3.5.0 <5.4.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
            });

            test('includeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=3.5.0 <=5.4.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
            });
          });

          group('breaking', () {
            test('excludeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=3.5.0 <5.0.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
              expect(
                withBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                VersionConstraint.parse('>=3.5.0 <6.0.0'),
              );
            });

            test('includeUpperBound', () {
              final currentConstraint =
                  VersionConstraint.parse('>=3.5.0 <=4.3.0');
              expect(
                noBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                isNull,
              );
              expect(
                withBreaking.updateFor(
                  dependency,
                  currentConstraint,
                  latest,
                ),
                VersionConstraint.parse('>=3.5.0 <=5.3.5'),
              );
            });
          });
        });
      });
    });
  });
}
