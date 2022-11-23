// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names,inference_failure_on_collection_literal

library models.project2;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

import 'team2.dart';

class Project2Type extends ModelType<String, Project2, PartialProject2> {
  const Project2Type();

  @override
  T fromJson<T extends PartialModel<String, Project2>>(
    Map<String, Object?> json,
  ) {
    if (T == Project2 || T == Model<String, Project2>) {
      return Project2.fromJson(json) as T;
    }
    if (T == RemoteProject2 || T == RemoteModel<String, Project2>) {
      return _RemoteProject2.fromJson(json) as T;
    }
    return _PartialProject2.fromJson(json) as T;
  }

  @override
  String get modelName => 'Project2';
}

class Project2QueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const Project2QueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Project2>? _root;

  /// Query field for the [Project2.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Project2, String>(
        const QueryField<String, Project2, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Project2.name] field.
  QueryField<ModelIdentifier, M, String?> get $name =>
      NestedQueryField<ModelIdentifier, M, String, Project2, String?>(
        const QueryField<String, Project2, String?>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Project2.teamId] field.
  QueryField<ModelIdentifier, M, String?> get $teamId =>
      NestedQueryField<ModelIdentifier, M, String, Project2, String?>(
        const QueryField<String, Project2, String?>(fieldName: 'teamID'),
        root: _root,
      );

  /// Query field for the [Project2.team] field.
  Team2QueryFields<ModelIdentifier, M> get $team => Team2QueryFields(
        NestedQueryField<ModelIdentifier, M, String, Project2, Team2>(
          const QueryField<String, Project2, Team2>(fieldName: 'team'),
          root: _root,
        ),
      );

  /// Query field for the [Project2.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Project2, TemporalDateTime>(
        const QueryField<String, Project2, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Project2.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Project2, TemporalDateTime>(
        const QueryField<String, Project2, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Project2] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Project2, String>(
        const QueryField<String, Project2, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialProject2 extends PartialModel<String, Project2>
    with AWSEquatable<PartialProject2> {
  const PartialProject2._();

  String get id;
  String? get name;
  String? get teamId;
  AsyncModel<String, Team2, PartialTeam2, PartialTeam2>? get team;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  Project2Type get modelType => Project2.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        teamId,
        team,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'teamID': teamId,
        'team': team?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Project2';
}

class _PartialProject2 extends PartialProject2 {
  const _PartialProject2({
    required this.id,
    this.name,
    this.teamId,
    this.team,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialProject2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Project2',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final teamId = json['teamID'] == null ? null : (json['teamID'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<String, Team2, PartialTeam2, PartialTeam2>.fromModel(
            Team2.classType
                .fromJson<PartialTeam2>((json['team'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialProject2(
      id: id,
      name: name,
      teamId: teamId,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? teamId;

  @override
  final AsyncModel<String, Team2, PartialTeam2, PartialTeam2>? team;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Project2 extends PartialProject2
    implements Model<String, Project2> {
  factory Project2({
    String? id,
    String? name,
    String? teamId,
    Team2? team,
  }) = _Project2;

  const Project2._() : super._();

  factory Project2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Project2',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final teamId = json['teamID'] == null ? null : (json['teamID'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<String, Team2, PartialTeam2, Team2>.fromModel(
            Team2.classType
                .fromJson<Team2>((json['team'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Project2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Project2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _Project2._(
      id: id,
      name: name,
      teamId: teamId,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const Project2Type classType = Project2Type();

  static const Project2QueryFields<String, Project2> _queryFields =
      Project2QueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'Project2',
      'pluralName': 'Project2s',
      'fields': {
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'name': {
          'name': 'name',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
        'teamID': {
          'name': 'teamID',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'team': {
          'name': 'team',
          'type': {'model': 'Team2'},
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'HasOne',
            'associatedType': 'Team2',
            'associatedFields': ['id'],
            'targetNames': ['teamID'],
          },
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
      },
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        }
      ],
    },
  )!;

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Project2, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Project2, String> get ID => $id;
  @override
  String? get name;

  /// Query field for the [name] field.
  QueryField<String, Project2, String?> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, Project2, String?> get NAME => $name;
  @override
  String? get teamId;

  /// Query field for the [teamId] field.
  QueryField<String, Project2, String?> get $teamId => _queryFields.$teamId;

  /// Query field for the [teamId] field.
  @Deprecated(r'Use $teamId instead')
  QueryField<String, Project2, String?> get TEAM_ID => $teamId;
  @override
  AsyncModel<String, Team2, PartialTeam2, Team2>? get team;

  /// Query field for the [team] field.
  Team2QueryFields<String, Project2> get $team => _queryFields.$team;

  /// Query field for the [team] field.
  @Deprecated(r'Use $team instead')
  Team2QueryFields<String, Project2> get TEAM => $team;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Project2, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Project2, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Project2 copyWith({
    String? id,
    String? name,
    String? teamId,
    Team2? team,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _Project2._(
      id: id ?? this.id,
      name: name ?? this.name,
      teamId: teamId ?? this.teamId,
      team: team == null ? this.team : AsyncModel.fromModel(team),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Project2, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'teamID':
        value = teamId;
        break;
      case r'team':
        value = team;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Project2 extends Project2 {
  _Project2({
    String? id,
    this.name,
    this.teamId,
    Team2? team,
  })  : id = id ?? uuid(),
        team = team == null ? null : AsyncModel.fromModel(team),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Project2._({
    required this.id,
    this.name,
    this.teamId,
    this.team,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? teamId;

  @override
  final AsyncModel<String, Team2, PartialTeam2, Team2>? team;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteProject2 extends Project2
    implements RemoteModel<String, Project2> {
  const RemoteProject2._() : super._();
}

class _RemoteProject2 extends RemoteProject2 {
  const _RemoteProject2({
    required this.id,
    this.name,
    this.teamId,
    this.team,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteProject2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Project2',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final teamId = json['teamID'] == null ? null : (json['teamID'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<String, Team2, PartialTeam2, RemoteTeam2>.fromModel(
            Team2.classType
                .fromJson<RemoteTeam2>((json['team'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Project2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Project2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Project2',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Project2',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Project2',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteProject2(
      id: id,
      name: name,
      teamId: teamId,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? teamId;

  @override
  final AsyncModel<String, Team2, PartialTeam2, RemoteTeam2>? team;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
