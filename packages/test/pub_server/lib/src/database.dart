// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pub_server/src/models.dart';

part 'database.g.dart';

/// A database for storing package information.
@DriftDatabase(tables: [Packages, PackageVersions])
class PubDatabase extends _$PubDatabase {
  PubDatabase._(super.e);

  /// Creates a new [PubDatabase] with an in-memory database.
  factory PubDatabase.test() {
    return PubDatabase._(
      LazyDatabase(() async {
        return NativeDatabase.memory();
      }),
    );
  }

  /// Creates a new [PubDatabase] with a database in the given [dataDir].
  factory PubDatabase.prod(String dataDir) {
    return PubDatabase._(
      LazyDatabase(() async {
        final file = File(p.join(dataDir, 'pub-local.db'));
        return NativeDatabase(file);
      }),
    );
  }

  /// Inserts or updates the package with the given [name] and [version].
  Future<void> upsertPackageVersion({
    required String name,
    required Version version,
    required String archiveUrl,
    required String pubspecYaml,
    required String readme,
    required String changelog,
  }) async {
    await transaction(() async {
      final existingPackage = await (select(packages)
            ..where((p) => p.name.equals(name)))
          .getSingleOrNull();
      if (existingPackage == null) {
        await into(packages).insert(
          PackagesCompanion.insert(
            name: name,
            latest: version.toString(),
          ),
        );
      }
      await into(packageVersions).insert(
        PackageVersionsCompanion.insert(
          package: name,
          version: version.toString(),
          archiveUrl: archiveUrl,
          pubspec: pubspecYaml,
          readme: readme,
          changelog: changelog,
        ),
      );
    });
  }

  /// Returns the package with the given [packageName].
  Future<PubPackage?> getPackage(String packageName) async {
    final package = await (select(packages)
          ..where((p) => p.name.equals(packageName)))
        .getSingleOrNull();
    if (package == null) {
      return null;
    }
    final versions = await (select(packageVersions)
          ..where((row) => row.package.equals(packageName)))
        .get();
    versions.sort((a, b) {
      return -Version.parse(a.version).compareTo(Version.parse(b.version));
    });
    final latest = versions.first;
    final packageWithVersions = DatabasePackage(package, latest, versions);
    return PubPackage.fromDb(packageWithVersions);
  }

  @override
  int get schemaVersion => 1;
}

/// The table for packages.
class Packages extends Table {
  TextColumn get name => text()();
  TextColumn get latest => text()();

  @override
  Set<Column<Object>> get primaryKey => {name};
}

/// The table for package-versions.
class PackageVersions extends Table {
  TextColumn get package => text()();
  TextColumn get version => text()();
  TextColumn get archiveUrl => text()();
  TextColumn get pubspec => text()();
  TextColumn get readme => text()();
  TextColumn get changelog => text()();

  @override
  Set<Column<Object>> get primaryKey => {package, version};
}

/// A package with its versions in database form.
class DatabasePackage {
  const DatabasePackage(this.package, this.latest, this.versions);

  final Package package;
  final PackageVersion latest;
  final List<PackageVersion> versions;
}
