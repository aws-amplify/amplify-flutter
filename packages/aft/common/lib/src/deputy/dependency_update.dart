// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:meta/meta.dart';
import 'package:pub_semver/pub_semver.dart';

part 'dependency_update.g.dart';

typedef DependencyGroup = BuiltSet<String>;
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
  BuiltMap<String, DependencyUpdate> get updates;

  @protected
  Deputy get deputy;

  @protected
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

abstract class DependencyUpdate
    with AWSSerializable
    implements Built<DependencyUpdate, DependencyUpdateBuilder> {
  factory DependencyUpdate([void Function(DependencyUpdateBuilder) updates]) =
      _$DependencyUpdate;

  const DependencyUpdate._();

  factory DependencyUpdate.fromJson(Map<String, Object?> json) {
    return _serializers.deserializeWith(serializer, json)!;
  }

  String get dependencyName;
  Version get latestVersion;
  VersionConstraint? get globalConstraint;
  BuiltMap<String, VersionConstraint> get dependentPackages;

  @override
  Map<String, Object?> toJson() {
    return _serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  static Serializer<DependencyUpdate> get serializer =>
      _$dependencyUpdateSerializer;
}

@SerializersFor([
  DependencyUpdate,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(const VersionConstraintSerializer())
      ..add(const VersionConstraintSerializer<Version>()))
    .build();
