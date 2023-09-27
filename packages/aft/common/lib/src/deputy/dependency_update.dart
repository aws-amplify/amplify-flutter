// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:pub_semver/pub_semver.dart';

part 'dependency_update.g.dart';

/// A group of dependency names which should be updated together.
typedef DependencyGroup = BuiltSet<String>;

/// The sets of dependencies which should be updated together,
/// grouped by a unique name for the set.
typedef DependencyGroups = BuiltSetMultimap<String, String>;

/// {@template aft_common.deputy.dependency_group_update}
/// A proposed set of [updates] to a dependency group.
///
/// Call [updatePubspecs] to write proposed changes to disk.
/// {@endtemplate}
abstract class DependencyGroupUpdate
    implements Built<DependencyGroupUpdate, DependencyGroupUpdateBuilder> {
  /// {@macro aft_common.deputy.dependency_group_update}
  factory DependencyGroupUpdate([
    void Function(DependencyGroupUpdateBuilder) updates,
  ]) = _$DependencyGroupUpdate;

  const DependencyGroupUpdate._();

  /// The name of the update group.
  ///
  /// For unnamed groups, this is set to the sole dependency's name.
  String get groupName;

  /// The dependencies included in this group.
  BuiltSet<String> get dependencies;

  /// The updated version constraints, by dependency name.
  BuiltMap<String, VersionConstraint> get updatedConstraints;

  /// The change records, by dependency name.
  BuiltMap<String, DependencyMetadata> get updates;

  @protected
  @BuiltValueField(compare: false)
  Deputy get deputy;

  @protected
  @BuiltValueField(compare: false)
  BuiltList<void Function(Repo)> get pubspecUpdates;

  /// Updates all pubspecs in the group and writes the changes
  /// to disk.
  ///
  /// If [worktree] is specified, updates are applied in that repo.
  /// Otherwise, they are applied to the current, active repo.
  Future<void> updatePubspecs([Repo? worktree]) async {
    for (final update in pubspecUpdates) {
      update(worktree ?? deputy.repo);
    }
    await deputy.commitUpdates(worktree);
  }
}

/// {@template aft_common.deputy.dependency_metadata}
/// Metadata about [dependencyName], potentially signaling a necessary
/// update to the [latestVersion].
/// {@endtemplate}
abstract class DependencyMetadata
    implements Built<DependencyMetadata, DependencyMetadataBuilder> {
  /// {@macro aft_common.deputy.dependency_metadata}
  factory DependencyMetadata([
    void Function(DependencyMetadataBuilder) updates,
  ]) = _$DependencyMetadata;

  const DependencyMetadata._();

  /// The name of the dependency.
  String get dependencyName;

  /// The latest version of the dependency on `pub.dev`.
  Version get latestVersion;

  /// The current global constraint set in the repo, if any.
  VersionConstraint? get globalConstraint;

  /// A map of dependenct packages and the constraint they currently
  /// set on [dependencyName].
  BuiltMap<String, VersionConstraint> get dependentPackages;
}
