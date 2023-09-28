// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/deputy/post_update_task.dart';
import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';

/// The list of dependencies to never update.
const List<String> doNotUpdate = [
  // TODO(aft): Remove when min Flutter SDK allows latest xml
  // Updating xml will require changes in smithy.
  'xml',

  // Bumping leads to mismatched `analyzer` constraint with `built_value_generator`
  // Must always match stable since it's what `dart format` uses.
  'dart_style',

  // Breaking change would need to be coordinated
  'uuid',
];

/// The groups of dependencies which should be updated together.
enum DependencyUpdateGroup {
  codeGeneration(
    needsBuildRunner: true,
    needsSmithy: true,
    dependencies: [
      'built_value',
      'built_collection',
      'built_value_generator',
      'json_annotation',
      'json_serializable',
      'code_builder',
      // FIXME: Change logic to only include group dependencies
      // which are not in `doNotUpdate` instead of ignoring
      // the whole group.
      // 'dart_style',
    ],
  ),
  drift(
    needsBuildRunner: true,
    dependencies: ['drift', 'drift_dev'],
  );

  const DependencyUpdateGroup({
    required this.dependencies,
    this.needsBuildRunner = false,
    this.needsSmithy = false,
  });

  /// The list of dependencies in this group.
  final List<String> dependencies;

  /// Whether `build_runner` should be run in dependent packages after an update.
  final bool needsBuildRunner;

  /// Whether Smithy outputs need to be re-generated after an update.
  final bool needsSmithy;

  /// All groups mapped to their dependencies.
  static Map<String, List<String>> get all => {
        for (final value in values) value.name.snakeCase: value.dependencies,
      };

  /// Finds the group for the given [groupName].
  static DependencyUpdateGroup? of(String groupName) =>
      values.firstWhereOrNull((el) => el.name.snakeCase == groupName);

  /// Builds the list of post-update tasks for the group given the active [repo]
  /// and the set of [updatedPackages].
  List<PostUpdateTask> postUpdateTasks(
    Repo repo,
    Iterable<String> updatedPackages,
  ) {
    return [
      if (needsSmithy) ...[
        const PostUpdateTask.aft(['generate', 'goldens']),
        // FIXME: Could run SDK but it would also pull latest models currently
        // so, updates may be unrelated to dep update.
        //
        // Probably should have SDK gen run on a schedule before uncommenting this
        // or find a way to track the SDK ref so running `generate sdk` does not
        // necessarily pull the latest models (similar to goldens).
        // const PostUpdateTask.aft(['generate', 'sdk']),
      ],
      if (needsBuildRunner)
        PostUpdateTask.buildRunner([
          // Don't re-run for Smithy goldens
          if (needsSmithy)
            ...updatedPackages
                .map(repo.maybePackage)
                .nonNulls
                .where((pkg) => !pkg.isGoldensPackage)
                .map((pkg) => pkg.name)
          else
            ...updatedPackages,
        ]),
    ];
  }
}

extension GroupPostUpdateTasks on DependencyGroupUpdate {
  /// Runs all post-update tasks for the group in [repo].
  Future<void> runPostUpdateTasks(Repo repo) async {
    final tasksBuilder = DependencyUpdateGroup.of(groupName);
    if (tasksBuilder == null) {
      core.info('No tasks to run.');
      return;
    }
    core.info('Running post-update tasks for "$groupName"');
    final updatedPackages = updates.values
        .expand((update) => update.dependentPackages.keys)
        .toSet();
    final tasks = tasksBuilder.postUpdateTasks(repo, updatedPackages);
    for (final task in tasks) {
      await task.run(repo);
    }
  }
}
