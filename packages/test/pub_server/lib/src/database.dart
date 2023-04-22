// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pub_server/src/models.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Packages, PackageVersions])
class PubDatabase extends _$PubDatabase {
  PubDatabase(super.e);

  factory PubDatabase.test() {
    return PubDatabase(
      LazyDatabase(() async {
        return NativeDatabase.memory(logStatements: true);
      }),
    );
  }

  factory PubDatabase.prod(String dataDir) {
    return PubDatabase(
      LazyDatabase(() async {
        final file = File(p.join(dataDir, 'pub-local.db'));
        return NativeDatabase(file);
      }),
    );
  }

  Future<void> upsertPackage({
    required String name,
    required Version version,
    required String archiveUrl,
    required String pubspecYaml,
    required String readme,
    required String changelog,
  }) async {
    final now = DateTime.now();
    await transaction(() async {
      final existingPackage = await (select(packages)
            ..where((p) => p.name.equals(name)))
          .getSingleOrNull();
      if (existingPackage == null) {
        await into(packages).insert(
          PackagesCompanion.insert(
            name: name,
            latest: version.toString(),
            createdAt: now,
            updatedAt: now,
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
          createdAt: now,
          updatedAt: now,
        ),
      );
    });
  }

  Future<PubPackage?> getPackage(String packageName) async {
    final rows = await (select(packages)
          ..where((p) => p.name.equals(packageName)))
        .join([
      leftOuterJoin(
        packageVersions,
        packageVersions.package.equalsExp(packages.name),
      )
    ]).get();
    if (rows.isEmpty) {
      return null;
    }
    final package = rows.first.readTable(packages);
    final versions = rows.map((r) => r.readTable(packageVersions)).toList()
      ..sort((a, b) {
        return -Version.parse(a.version).compareTo(Version.parse(b.version));
      });
    final latest = versions.first;
    final packageWithVersions = PackageWithVersions(package, latest, versions);
    return PubPackage.fromDb(packageWithVersions);
  }

  @override
  int get schemaVersion => 1;
}

class Packages extends Table {
  TextColumn get name => text()();
  TextColumn get latest => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {name};
}

class PackageVersions extends Table {
  TextColumn get package => text()();
  TextColumn get version => text()();
  TextColumn get archiveUrl => text()();
  TextColumn get pubspec => text()();
  TextColumn get readme => text()();
  TextColumn get changelog => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {package, version};
}

class PackageWithVersions {
  const PackageWithVersions(this.package, this.latest, this.versions);

  final Package package;
  final PackageVersion latest;
  final List<PackageVersion> versions;
}
