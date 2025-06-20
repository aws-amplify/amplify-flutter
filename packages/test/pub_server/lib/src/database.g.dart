// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PackagesTable extends Packages with TableInfo<$PackagesTable, Package> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PackagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latestMeta = const VerificationMeta('latest');
  @override
  late final GeneratedColumn<String> latest = GeneratedColumn<String>(
    'latest',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [name, latest];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'packages';
  @override
  VerificationContext validateIntegrity(
    Insertable<Package> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('latest')) {
      context.handle(
        _latestMeta,
        latest.isAcceptableOrUnknown(data['latest']!, _latestMeta),
      );
    } else if (isInserting) {
      context.missing(_latestMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  Package map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Package(
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      latest: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}latest'],
      )!,
    );
  }

  @override
  $PackagesTable createAlias(String alias) {
    return $PackagesTable(attachedDatabase, alias);
  }
}

class Package extends DataClass implements Insertable<Package> {
  final String name;
  final String latest;
  const Package({required this.name, required this.latest});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['latest'] = Variable<String>(latest);
    return map;
  }

  PackagesCompanion toCompanion(bool nullToAbsent) {
    return PackagesCompanion(name: Value(name), latest: Value(latest));
  }

  factory Package.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Package(
      name: serializer.fromJson<String>(json['name']),
      latest: serializer.fromJson<String>(json['latest']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'latest': serializer.toJson<String>(latest),
    };
  }

  Package copyWith({String? name, String? latest}) =>
      Package(name: name ?? this.name, latest: latest ?? this.latest);
  Package copyWithCompanion(PackagesCompanion data) {
    return Package(
      name: data.name.present ? data.name.value : this.name,
      latest: data.latest.present ? data.latest.value : this.latest,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Package(')
          ..write('name: $name, ')
          ..write('latest: $latest')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, latest);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Package &&
          other.name == this.name &&
          other.latest == this.latest);
}

class PackagesCompanion extends UpdateCompanion<Package> {
  final Value<String> name;
  final Value<String> latest;
  final Value<int> rowid;
  const PackagesCompanion({
    this.name = const Value.absent(),
    this.latest = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PackagesCompanion.insert({
    required String name,
    required String latest,
    this.rowid = const Value.absent(),
  }) : name = Value(name),
       latest = Value(latest);
  static Insertable<Package> custom({
    Expression<String>? name,
    Expression<String>? latest,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (latest != null) 'latest': latest,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PackagesCompanion copyWith({
    Value<String>? name,
    Value<String>? latest,
    Value<int>? rowid,
  }) {
    return PackagesCompanion(
      name: name ?? this.name,
      latest: latest ?? this.latest,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (latest.present) {
      map['latest'] = Variable<String>(latest.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PackagesCompanion(')
          ..write('name: $name, ')
          ..write('latest: $latest, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PackageVersionsTable extends PackageVersions
    with TableInfo<$PackageVersionsTable, PackageVersion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PackageVersionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _packageMeta = const VerificationMeta(
    'package',
  );
  @override
  late final GeneratedColumn<String> package = GeneratedColumn<String>(
    'package',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archiveUrlMeta = const VerificationMeta(
    'archiveUrl',
  );
  @override
  late final GeneratedColumn<String> archiveUrl = GeneratedColumn<String>(
    'archive_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pubspecMeta = const VerificationMeta(
    'pubspec',
  );
  @override
  late final GeneratedColumn<String> pubspec = GeneratedColumn<String>(
    'pubspec',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _readmeMeta = const VerificationMeta('readme');
  @override
  late final GeneratedColumn<String> readme = GeneratedColumn<String>(
    'readme',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _changelogMeta = const VerificationMeta(
    'changelog',
  );
  @override
  late final GeneratedColumn<String> changelog = GeneratedColumn<String>(
    'changelog',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _publishedMeta = const VerificationMeta(
    'published',
  );
  @override
  late final GeneratedColumn<DateTime> published = GeneratedColumn<DateTime>(
    'published',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archiveSha256Meta = const VerificationMeta(
    'archiveSha256',
  );
  @override
  late final GeneratedColumn<String> archiveSha256 = GeneratedColumn<String>(
    'archive_sha256',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    package,
    version,
    archiveUrl,
    pubspec,
    readme,
    changelog,
    published,
    archiveSha256,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'package_versions';
  @override
  VerificationContext validateIntegrity(
    Insertable<PackageVersion> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('package')) {
      context.handle(
        _packageMeta,
        package.isAcceptableOrUnknown(data['package']!, _packageMeta),
      );
    } else if (isInserting) {
      context.missing(_packageMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('archive_url')) {
      context.handle(
        _archiveUrlMeta,
        archiveUrl.isAcceptableOrUnknown(data['archive_url']!, _archiveUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_archiveUrlMeta);
    }
    if (data.containsKey('pubspec')) {
      context.handle(
        _pubspecMeta,
        pubspec.isAcceptableOrUnknown(data['pubspec']!, _pubspecMeta),
      );
    } else if (isInserting) {
      context.missing(_pubspecMeta);
    }
    if (data.containsKey('readme')) {
      context.handle(
        _readmeMeta,
        readme.isAcceptableOrUnknown(data['readme']!, _readmeMeta),
      );
    } else if (isInserting) {
      context.missing(_readmeMeta);
    }
    if (data.containsKey('changelog')) {
      context.handle(
        _changelogMeta,
        changelog.isAcceptableOrUnknown(data['changelog']!, _changelogMeta),
      );
    } else if (isInserting) {
      context.missing(_changelogMeta);
    }
    if (data.containsKey('published')) {
      context.handle(
        _publishedMeta,
        published.isAcceptableOrUnknown(data['published']!, _publishedMeta),
      );
    } else if (isInserting) {
      context.missing(_publishedMeta);
    }
    if (data.containsKey('archive_sha256')) {
      context.handle(
        _archiveSha256Meta,
        archiveSha256.isAcceptableOrUnknown(
          data['archive_sha256']!,
          _archiveSha256Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_archiveSha256Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {package, version};
  @override
  PackageVersion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PackageVersion(
      package: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}package'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
      archiveUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}archive_url'],
      )!,
      pubspec: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pubspec'],
      )!,
      readme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}readme'],
      )!,
      changelog: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}changelog'],
      )!,
      published: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}published'],
      )!,
      archiveSha256: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}archive_sha256'],
      )!,
    );
  }

  @override
  $PackageVersionsTable createAlias(String alias) {
    return $PackageVersionsTable(attachedDatabase, alias);
  }
}

class PackageVersion extends DataClass implements Insertable<PackageVersion> {
  final String package;
  final String version;
  final String archiveUrl;
  final String pubspec;
  final String readme;
  final String changelog;
  final DateTime published;
  final String archiveSha256;
  const PackageVersion({
    required this.package,
    required this.version,
    required this.archiveUrl,
    required this.pubspec,
    required this.readme,
    required this.changelog,
    required this.published,
    required this.archiveSha256,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['package'] = Variable<String>(package);
    map['version'] = Variable<String>(version);
    map['archive_url'] = Variable<String>(archiveUrl);
    map['pubspec'] = Variable<String>(pubspec);
    map['readme'] = Variable<String>(readme);
    map['changelog'] = Variable<String>(changelog);
    map['published'] = Variable<DateTime>(published);
    map['archive_sha256'] = Variable<String>(archiveSha256);
    return map;
  }

  PackageVersionsCompanion toCompanion(bool nullToAbsent) {
    return PackageVersionsCompanion(
      package: Value(package),
      version: Value(version),
      archiveUrl: Value(archiveUrl),
      pubspec: Value(pubspec),
      readme: Value(readme),
      changelog: Value(changelog),
      published: Value(published),
      archiveSha256: Value(archiveSha256),
    );
  }

  factory PackageVersion.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PackageVersion(
      package: serializer.fromJson<String>(json['package']),
      version: serializer.fromJson<String>(json['version']),
      archiveUrl: serializer.fromJson<String>(json['archiveUrl']),
      pubspec: serializer.fromJson<String>(json['pubspec']),
      readme: serializer.fromJson<String>(json['readme']),
      changelog: serializer.fromJson<String>(json['changelog']),
      published: serializer.fromJson<DateTime>(json['published']),
      archiveSha256: serializer.fromJson<String>(json['archiveSha256']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'package': serializer.toJson<String>(package),
      'version': serializer.toJson<String>(version),
      'archiveUrl': serializer.toJson<String>(archiveUrl),
      'pubspec': serializer.toJson<String>(pubspec),
      'readme': serializer.toJson<String>(readme),
      'changelog': serializer.toJson<String>(changelog),
      'published': serializer.toJson<DateTime>(published),
      'archiveSha256': serializer.toJson<String>(archiveSha256),
    };
  }

  PackageVersion copyWith({
    String? package,
    String? version,
    String? archiveUrl,
    String? pubspec,
    String? readme,
    String? changelog,
    DateTime? published,
    String? archiveSha256,
  }) => PackageVersion(
    package: package ?? this.package,
    version: version ?? this.version,
    archiveUrl: archiveUrl ?? this.archiveUrl,
    pubspec: pubspec ?? this.pubspec,
    readme: readme ?? this.readme,
    changelog: changelog ?? this.changelog,
    published: published ?? this.published,
    archiveSha256: archiveSha256 ?? this.archiveSha256,
  );
  PackageVersion copyWithCompanion(PackageVersionsCompanion data) {
    return PackageVersion(
      package: data.package.present ? data.package.value : this.package,
      version: data.version.present ? data.version.value : this.version,
      archiveUrl: data.archiveUrl.present
          ? data.archiveUrl.value
          : this.archiveUrl,
      pubspec: data.pubspec.present ? data.pubspec.value : this.pubspec,
      readme: data.readme.present ? data.readme.value : this.readme,
      changelog: data.changelog.present ? data.changelog.value : this.changelog,
      published: data.published.present ? data.published.value : this.published,
      archiveSha256: data.archiveSha256.present
          ? data.archiveSha256.value
          : this.archiveSha256,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PackageVersion(')
          ..write('package: $package, ')
          ..write('version: $version, ')
          ..write('archiveUrl: $archiveUrl, ')
          ..write('pubspec: $pubspec, ')
          ..write('readme: $readme, ')
          ..write('changelog: $changelog, ')
          ..write('published: $published, ')
          ..write('archiveSha256: $archiveSha256')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    package,
    version,
    archiveUrl,
    pubspec,
    readme,
    changelog,
    published,
    archiveSha256,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PackageVersion &&
          other.package == this.package &&
          other.version == this.version &&
          other.archiveUrl == this.archiveUrl &&
          other.pubspec == this.pubspec &&
          other.readme == this.readme &&
          other.changelog == this.changelog &&
          other.published == this.published &&
          other.archiveSha256 == this.archiveSha256);
}

class PackageVersionsCompanion extends UpdateCompanion<PackageVersion> {
  final Value<String> package;
  final Value<String> version;
  final Value<String> archiveUrl;
  final Value<String> pubspec;
  final Value<String> readme;
  final Value<String> changelog;
  final Value<DateTime> published;
  final Value<String> archiveSha256;
  final Value<int> rowid;
  const PackageVersionsCompanion({
    this.package = const Value.absent(),
    this.version = const Value.absent(),
    this.archiveUrl = const Value.absent(),
    this.pubspec = const Value.absent(),
    this.readme = const Value.absent(),
    this.changelog = const Value.absent(),
    this.published = const Value.absent(),
    this.archiveSha256 = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PackageVersionsCompanion.insert({
    required String package,
    required String version,
    required String archiveUrl,
    required String pubspec,
    required String readme,
    required String changelog,
    required DateTime published,
    required String archiveSha256,
    this.rowid = const Value.absent(),
  }) : package = Value(package),
       version = Value(version),
       archiveUrl = Value(archiveUrl),
       pubspec = Value(pubspec),
       readme = Value(readme),
       changelog = Value(changelog),
       published = Value(published),
       archiveSha256 = Value(archiveSha256);
  static Insertable<PackageVersion> custom({
    Expression<String>? package,
    Expression<String>? version,
    Expression<String>? archiveUrl,
    Expression<String>? pubspec,
    Expression<String>? readme,
    Expression<String>? changelog,
    Expression<DateTime>? published,
    Expression<String>? archiveSha256,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (package != null) 'package': package,
      if (version != null) 'version': version,
      if (archiveUrl != null) 'archive_url': archiveUrl,
      if (pubspec != null) 'pubspec': pubspec,
      if (readme != null) 'readme': readme,
      if (changelog != null) 'changelog': changelog,
      if (published != null) 'published': published,
      if (archiveSha256 != null) 'archive_sha256': archiveSha256,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PackageVersionsCompanion copyWith({
    Value<String>? package,
    Value<String>? version,
    Value<String>? archiveUrl,
    Value<String>? pubspec,
    Value<String>? readme,
    Value<String>? changelog,
    Value<DateTime>? published,
    Value<String>? archiveSha256,
    Value<int>? rowid,
  }) {
    return PackageVersionsCompanion(
      package: package ?? this.package,
      version: version ?? this.version,
      archiveUrl: archiveUrl ?? this.archiveUrl,
      pubspec: pubspec ?? this.pubspec,
      readme: readme ?? this.readme,
      changelog: changelog ?? this.changelog,
      published: published ?? this.published,
      archiveSha256: archiveSha256 ?? this.archiveSha256,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (package.present) {
      map['package'] = Variable<String>(package.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (archiveUrl.present) {
      map['archive_url'] = Variable<String>(archiveUrl.value);
    }
    if (pubspec.present) {
      map['pubspec'] = Variable<String>(pubspec.value);
    }
    if (readme.present) {
      map['readme'] = Variable<String>(readme.value);
    }
    if (changelog.present) {
      map['changelog'] = Variable<String>(changelog.value);
    }
    if (published.present) {
      map['published'] = Variable<DateTime>(published.value);
    }
    if (archiveSha256.present) {
      map['archive_sha256'] = Variable<String>(archiveSha256.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PackageVersionsCompanion(')
          ..write('package: $package, ')
          ..write('version: $version, ')
          ..write('archiveUrl: $archiveUrl, ')
          ..write('pubspec: $pubspec, ')
          ..write('readme: $readme, ')
          ..write('changelog: $changelog, ')
          ..write('published: $published, ')
          ..write('archiveSha256: $archiveSha256, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$PubDatabase extends GeneratedDatabase {
  _$PubDatabase(QueryExecutor e) : super(e);
  $PubDatabaseManager get managers => $PubDatabaseManager(this);
  late final $PackagesTable packages = $PackagesTable(this);
  late final $PackageVersionsTable packageVersions = $PackageVersionsTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    packages,
    packageVersions,
  ];
}

typedef $$PackagesTableCreateCompanionBuilder =
    PackagesCompanion Function({
      required String name,
      required String latest,
      Value<int> rowid,
    });
typedef $$PackagesTableUpdateCompanionBuilder =
    PackagesCompanion Function({
      Value<String> name,
      Value<String> latest,
      Value<int> rowid,
    });

class $$PackagesTableFilterComposer
    extends Composer<_$PubDatabase, $PackagesTable> {
  $$PackagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get latest => $composableBuilder(
    column: $table.latest,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PackagesTableOrderingComposer
    extends Composer<_$PubDatabase, $PackagesTable> {
  $$PackagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get latest => $composableBuilder(
    column: $table.latest,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PackagesTableAnnotationComposer
    extends Composer<_$PubDatabase, $PackagesTable> {
  $$PackagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get latest =>
      $composableBuilder(column: $table.latest, builder: (column) => column);
}

class $$PackagesTableTableManager
    extends
        RootTableManager<
          _$PubDatabase,
          $PackagesTable,
          Package,
          $$PackagesTableFilterComposer,
          $$PackagesTableOrderingComposer,
          $$PackagesTableAnnotationComposer,
          $$PackagesTableCreateCompanionBuilder,
          $$PackagesTableUpdateCompanionBuilder,
          (Package, BaseReferences<_$PubDatabase, $PackagesTable, Package>),
          Package,
          PrefetchHooks Function()
        > {
  $$PackagesTableTableManager(_$PubDatabase db, $PackagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PackagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PackagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PackagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> name = const Value.absent(),
                Value<String> latest = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PackagesCompanion(name: name, latest: latest, rowid: rowid),
          createCompanionCallback:
              ({
                required String name,
                required String latest,
                Value<int> rowid = const Value.absent(),
              }) => PackagesCompanion.insert(
                name: name,
                latest: latest,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PackagesTableProcessedTableManager =
    ProcessedTableManager<
      _$PubDatabase,
      $PackagesTable,
      Package,
      $$PackagesTableFilterComposer,
      $$PackagesTableOrderingComposer,
      $$PackagesTableAnnotationComposer,
      $$PackagesTableCreateCompanionBuilder,
      $$PackagesTableUpdateCompanionBuilder,
      (Package, BaseReferences<_$PubDatabase, $PackagesTable, Package>),
      Package,
      PrefetchHooks Function()
    >;
typedef $$PackageVersionsTableCreateCompanionBuilder =
    PackageVersionsCompanion Function({
      required String package,
      required String version,
      required String archiveUrl,
      required String pubspec,
      required String readme,
      required String changelog,
      required DateTime published,
      required String archiveSha256,
      Value<int> rowid,
    });
typedef $$PackageVersionsTableUpdateCompanionBuilder =
    PackageVersionsCompanion Function({
      Value<String> package,
      Value<String> version,
      Value<String> archiveUrl,
      Value<String> pubspec,
      Value<String> readme,
      Value<String> changelog,
      Value<DateTime> published,
      Value<String> archiveSha256,
      Value<int> rowid,
    });

class $$PackageVersionsTableFilterComposer
    extends Composer<_$PubDatabase, $PackageVersionsTable> {
  $$PackageVersionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get package => $composableBuilder(
    column: $table.package,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get archiveUrl => $composableBuilder(
    column: $table.archiveUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pubspec => $composableBuilder(
    column: $table.pubspec,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get readme => $composableBuilder(
    column: $table.readme,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get changelog => $composableBuilder(
    column: $table.changelog,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get published => $composableBuilder(
    column: $table.published,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get archiveSha256 => $composableBuilder(
    column: $table.archiveSha256,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PackageVersionsTableOrderingComposer
    extends Composer<_$PubDatabase, $PackageVersionsTable> {
  $$PackageVersionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get package => $composableBuilder(
    column: $table.package,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get archiveUrl => $composableBuilder(
    column: $table.archiveUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pubspec => $composableBuilder(
    column: $table.pubspec,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get readme => $composableBuilder(
    column: $table.readme,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get changelog => $composableBuilder(
    column: $table.changelog,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get published => $composableBuilder(
    column: $table.published,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get archiveSha256 => $composableBuilder(
    column: $table.archiveSha256,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PackageVersionsTableAnnotationComposer
    extends Composer<_$PubDatabase, $PackageVersionsTable> {
  $$PackageVersionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get package =>
      $composableBuilder(column: $table.package, builder: (column) => column);

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get archiveUrl => $composableBuilder(
    column: $table.archiveUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pubspec =>
      $composableBuilder(column: $table.pubspec, builder: (column) => column);

  GeneratedColumn<String> get readme =>
      $composableBuilder(column: $table.readme, builder: (column) => column);

  GeneratedColumn<String> get changelog =>
      $composableBuilder(column: $table.changelog, builder: (column) => column);

  GeneratedColumn<DateTime> get published =>
      $composableBuilder(column: $table.published, builder: (column) => column);

  GeneratedColumn<String> get archiveSha256 => $composableBuilder(
    column: $table.archiveSha256,
    builder: (column) => column,
  );
}

class $$PackageVersionsTableTableManager
    extends
        RootTableManager<
          _$PubDatabase,
          $PackageVersionsTable,
          PackageVersion,
          $$PackageVersionsTableFilterComposer,
          $$PackageVersionsTableOrderingComposer,
          $$PackageVersionsTableAnnotationComposer,
          $$PackageVersionsTableCreateCompanionBuilder,
          $$PackageVersionsTableUpdateCompanionBuilder,
          (
            PackageVersion,
            BaseReferences<
              _$PubDatabase,
              $PackageVersionsTable,
              PackageVersion
            >,
          ),
          PackageVersion,
          PrefetchHooks Function()
        > {
  $$PackageVersionsTableTableManager(
    _$PubDatabase db,
    $PackageVersionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PackageVersionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PackageVersionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PackageVersionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> package = const Value.absent(),
                Value<String> version = const Value.absent(),
                Value<String> archiveUrl = const Value.absent(),
                Value<String> pubspec = const Value.absent(),
                Value<String> readme = const Value.absent(),
                Value<String> changelog = const Value.absent(),
                Value<DateTime> published = const Value.absent(),
                Value<String> archiveSha256 = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PackageVersionsCompanion(
                package: package,
                version: version,
                archiveUrl: archiveUrl,
                pubspec: pubspec,
                readme: readme,
                changelog: changelog,
                published: published,
                archiveSha256: archiveSha256,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String package,
                required String version,
                required String archiveUrl,
                required String pubspec,
                required String readme,
                required String changelog,
                required DateTime published,
                required String archiveSha256,
                Value<int> rowid = const Value.absent(),
              }) => PackageVersionsCompanion.insert(
                package: package,
                version: version,
                archiveUrl: archiveUrl,
                pubspec: pubspec,
                readme: readme,
                changelog: changelog,
                published: published,
                archiveSha256: archiveSha256,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PackageVersionsTableProcessedTableManager =
    ProcessedTableManager<
      _$PubDatabase,
      $PackageVersionsTable,
      PackageVersion,
      $$PackageVersionsTableFilterComposer,
      $$PackageVersionsTableOrderingComposer,
      $$PackageVersionsTableAnnotationComposer,
      $$PackageVersionsTableCreateCompanionBuilder,
      $$PackageVersionsTableUpdateCompanionBuilder,
      (
        PackageVersion,
        BaseReferences<_$PubDatabase, $PackageVersionsTable, PackageVersion>,
      ),
      PackageVersion,
      PrefetchHooks Function()
    >;

class $PubDatabaseManager {
  final _$PubDatabase _db;
  $PubDatabaseManager(this._db);
  $$PackagesTableTableManager get packages =>
      $$PackagesTableTableManager(_db, _db.packages);
  $$PackageVersionsTableTableManager get packageVersions =>
      $$PackageVersionsTableTableManager(_db, _db.packageVersions);
}
