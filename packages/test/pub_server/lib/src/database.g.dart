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
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _latestMeta = const VerificationMeta('latest');
  @override
  late final GeneratedColumn<String> latest = GeneratedColumn<String>(
      'latest', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [name, latest];
  @override
  String get aliasedName => _alias ?? 'packages';
  @override
  String get actualTableName => 'packages';
  @override
  VerificationContext validateIntegrity(Insertable<Package> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('latest')) {
      context.handle(_latestMeta,
          latest.isAcceptableOrUnknown(data['latest']!, _latestMeta));
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
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      latest: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latest'])!,
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
    return PackagesCompanion(
      name: Value(name),
      latest: Value(latest),
    );
  }

  factory Package.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
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

  Package copyWith({String? name, String? latest}) => Package(
        name: name ?? this.name,
        latest: latest ?? this.latest,
      );
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
  })  : name = Value(name),
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

  PackagesCompanion copyWith(
      {Value<String>? name, Value<String>? latest, Value<int>? rowid}) {
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
  static const VerificationMeta _packageMeta =
      const VerificationMeta('package');
  @override
  late final GeneratedColumn<String> package = GeneratedColumn<String>(
      'package', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
      'version', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _archiveUrlMeta =
      const VerificationMeta('archiveUrl');
  @override
  late final GeneratedColumn<String> archiveUrl = GeneratedColumn<String>(
      'archive_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pubspecMeta =
      const VerificationMeta('pubspec');
  @override
  late final GeneratedColumn<String> pubspec = GeneratedColumn<String>(
      'pubspec', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _readmeMeta = const VerificationMeta('readme');
  @override
  late final GeneratedColumn<String> readme = GeneratedColumn<String>(
      'readme', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _changelogMeta =
      const VerificationMeta('changelog');
  @override
  late final GeneratedColumn<String> changelog = GeneratedColumn<String>(
      'changelog', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [package, version, archiveUrl, pubspec, readme, changelog];
  @override
  String get aliasedName => _alias ?? 'package_versions';
  @override
  String get actualTableName => 'package_versions';
  @override
  VerificationContext validateIntegrity(Insertable<PackageVersion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('package')) {
      context.handle(_packageMeta,
          package.isAcceptableOrUnknown(data['package']!, _packageMeta));
    } else if (isInserting) {
      context.missing(_packageMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('archive_url')) {
      context.handle(
          _archiveUrlMeta,
          archiveUrl.isAcceptableOrUnknown(
              data['archive_url']!, _archiveUrlMeta));
    } else if (isInserting) {
      context.missing(_archiveUrlMeta);
    }
    if (data.containsKey('pubspec')) {
      context.handle(_pubspecMeta,
          pubspec.isAcceptableOrUnknown(data['pubspec']!, _pubspecMeta));
    } else if (isInserting) {
      context.missing(_pubspecMeta);
    }
    if (data.containsKey('readme')) {
      context.handle(_readmeMeta,
          readme.isAcceptableOrUnknown(data['readme']!, _readmeMeta));
    } else if (isInserting) {
      context.missing(_readmeMeta);
    }
    if (data.containsKey('changelog')) {
      context.handle(_changelogMeta,
          changelog.isAcceptableOrUnknown(data['changelog']!, _changelogMeta));
    } else if (isInserting) {
      context.missing(_changelogMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {package, version};
  @override
  PackageVersion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PackageVersion(
      package: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}package'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version'])!,
      archiveUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}archive_url'])!,
      pubspec: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pubspec'])!,
      readme: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}readme'])!,
      changelog: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}changelog'])!,
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
  const PackageVersion(
      {required this.package,
      required this.version,
      required this.archiveUrl,
      required this.pubspec,
      required this.readme,
      required this.changelog});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['package'] = Variable<String>(package);
    map['version'] = Variable<String>(version);
    map['archive_url'] = Variable<String>(archiveUrl);
    map['pubspec'] = Variable<String>(pubspec);
    map['readme'] = Variable<String>(readme);
    map['changelog'] = Variable<String>(changelog);
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
    );
  }

  factory PackageVersion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PackageVersion(
      package: serializer.fromJson<String>(json['package']),
      version: serializer.fromJson<String>(json['version']),
      archiveUrl: serializer.fromJson<String>(json['archiveUrl']),
      pubspec: serializer.fromJson<String>(json['pubspec']),
      readme: serializer.fromJson<String>(json['readme']),
      changelog: serializer.fromJson<String>(json['changelog']),
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
    };
  }

  PackageVersion copyWith(
          {String? package,
          String? version,
          String? archiveUrl,
          String? pubspec,
          String? readme,
          String? changelog}) =>
      PackageVersion(
        package: package ?? this.package,
        version: version ?? this.version,
        archiveUrl: archiveUrl ?? this.archiveUrl,
        pubspec: pubspec ?? this.pubspec,
        readme: readme ?? this.readme,
        changelog: changelog ?? this.changelog,
      );
  @override
  String toString() {
    return (StringBuffer('PackageVersion(')
          ..write('package: $package, ')
          ..write('version: $version, ')
          ..write('archiveUrl: $archiveUrl, ')
          ..write('pubspec: $pubspec, ')
          ..write('readme: $readme, ')
          ..write('changelog: $changelog')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(package, version, archiveUrl, pubspec, readme, changelog);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PackageVersion &&
          other.package == this.package &&
          other.version == this.version &&
          other.archiveUrl == this.archiveUrl &&
          other.pubspec == this.pubspec &&
          other.readme == this.readme &&
          other.changelog == this.changelog);
}

class PackageVersionsCompanion extends UpdateCompanion<PackageVersion> {
  final Value<String> package;
  final Value<String> version;
  final Value<String> archiveUrl;
  final Value<String> pubspec;
  final Value<String> readme;
  final Value<String> changelog;
  final Value<int> rowid;
  const PackageVersionsCompanion({
    this.package = const Value.absent(),
    this.version = const Value.absent(),
    this.archiveUrl = const Value.absent(),
    this.pubspec = const Value.absent(),
    this.readme = const Value.absent(),
    this.changelog = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PackageVersionsCompanion.insert({
    required String package,
    required String version,
    required String archiveUrl,
    required String pubspec,
    required String readme,
    required String changelog,
    this.rowid = const Value.absent(),
  })  : package = Value(package),
        version = Value(version),
        archiveUrl = Value(archiveUrl),
        pubspec = Value(pubspec),
        readme = Value(readme),
        changelog = Value(changelog);
  static Insertable<PackageVersion> custom({
    Expression<String>? package,
    Expression<String>? version,
    Expression<String>? archiveUrl,
    Expression<String>? pubspec,
    Expression<String>? readme,
    Expression<String>? changelog,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (package != null) 'package': package,
      if (version != null) 'version': version,
      if (archiveUrl != null) 'archive_url': archiveUrl,
      if (pubspec != null) 'pubspec': pubspec,
      if (readme != null) 'readme': readme,
      if (changelog != null) 'changelog': changelog,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PackageVersionsCompanion copyWith(
      {Value<String>? package,
      Value<String>? version,
      Value<String>? archiveUrl,
      Value<String>? pubspec,
      Value<String>? readme,
      Value<String>? changelog,
      Value<int>? rowid}) {
    return PackageVersionsCompanion(
      package: package ?? this.package,
      version: version ?? this.version,
      archiveUrl: archiveUrl ?? this.archiveUrl,
      pubspec: pubspec ?? this.pubspec,
      readme: readme ?? this.readme,
      changelog: changelog ?? this.changelog,
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
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$PubDatabase extends GeneratedDatabase {
  _$PubDatabase(QueryExecutor e) : super(e);
  late final $PackagesTable packages = $PackagesTable(this);
  late final $PackageVersionsTable packageVersions =
      $PackageVersionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [packages, packageVersions];
}
