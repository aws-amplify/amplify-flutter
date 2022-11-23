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

library models.team;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;
import 'package:meta/meta.dart';

import 'project.dart';

@immutable
class TeamIdentifier
    with
        AWSEquatable<TeamIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const TeamIdentifier({
    required this.teamId,
    required this.name,
  });

  final String teamId;

  final String name;

  @override
  List<Object?> get props => [
        teamId,
        name,
      ];
  @override
  Map<String, Object?> toJson() => {
        'teamId': teamId,
        'name': name,
      };
  @override
  String get runtimeTypeName => 'TeamIdentifier';
}

class TeamType extends ModelType<TeamIdentifier, Team, PartialTeam> {
  const TeamType();

  @override
  T fromJson<T extends PartialModel<TeamIdentifier, Team>>(
    Map<String, Object?> json,
  ) {
    if (T == Team || T == Model<TeamIdentifier, Team>) {
      return Team.fromJson(json) as T;
    }
    if (T == RemoteTeam || T == RemoteModel<TeamIdentifier, Team>) {
      return _RemoteTeam.fromJson(json) as T;
    }
    return _PartialTeam.fromJson(json) as T;
  }

  @override
  String get modelName => 'Team';
}

class TeamQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TeamQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Team>? _root;

  /// Query field for the [Team.teamId] field.
  QueryField<ModelIdentifier, M, String> get $teamId =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team, String>(
        const QueryField<TeamIdentifier, Team, String>(fieldName: 'teamId'),
        root: _root,
      );

  /// Query field for the [Team.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team, String>(
        const QueryField<TeamIdentifier, Team, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Team.project] field.
  ProjectQueryFields<ModelIdentifier, M> get $project => ProjectQueryFields(
        NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team, Project>(
          const QueryField<TeamIdentifier, Team, Project>(fieldName: 'project'),
          root: _root,
        ),
      );

  /// Query field for the [Team.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team,
          TemporalDateTime>(
        const QueryField<TeamIdentifier, Team, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Team.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team,
          TemporalDateTime>(
        const QueryField<TeamIdentifier, Team, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Team.teamProjectProjectId] field.
  QueryField<ModelIdentifier, M, String?> get $teamProjectProjectId =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team, String?>(
        const QueryField<TeamIdentifier, Team, String?>(
          fieldName: 'teamProjectProjectId',
        ),
        root: _root,
      );

  /// Query field for the [Team.teamProjectName] field.
  QueryField<ModelIdentifier, M, String?> get $teamProjectName =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team, String?>(
        const QueryField<TeamIdentifier, Team, String?>(
          fieldName: 'teamProjectName',
        ),
        root: _root,
      );

  /// Query field for the [Team] model identifier.
  QueryField<ModelIdentifier, M, TeamIdentifier> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, TeamIdentifier, Team,
          TeamIdentifier>(
        const QueryField<TeamIdentifier, Team, TeamIdentifier>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialTeam extends PartialModel<TeamIdentifier, Team>
    with AWSEquatable<PartialTeam> {
  const PartialTeam._();

  String get teamId;
  String get name;
  AsyncModel<ProjectIdentifier, Project, PartialProject, PartialProject>?
      get project;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get teamProjectProjectId;
  String? get teamProjectName;
  @override
  TeamIdentifier get modelIdentifier => TeamIdentifier(
        teamId: teamId,
        name: name,
      );
  @override
  TeamType get modelType => Team.classType;
  @override
  List<Object?> get props => [
        teamId,
        name,
        project,
        createdAt,
        updatedAt,
        teamProjectProjectId,
        teamProjectName,
      ];
  @override
  Map<String, Object?> toJson() => {
        'teamId': teamId,
        'name': name,
        'project': project?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'teamProjectProjectId': teamProjectProjectId,
        'teamProjectName': teamProjectName,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Team';
}

class _PartialTeam extends PartialTeam {
  const _PartialTeam({
    required this.teamId,
    required this.name,
    this.project,
    this.createdAt,
    this.updatedAt,
    this.teamProjectProjectId,
    this.teamProjectName,
  }) : super._();

  factory _PartialTeam.fromJson(Map<String, Object?> json) {
    final teamId = json['teamId'] == null
        ? (throw ModelFieldError(
            'Team',
            'teamId',
          ))
        : (json['teamId'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Team',
            'name',
          ))
        : (json['name'] as String);
    final project = json['project'] == null
        ? null
        : AsyncModel<ProjectIdentifier, Project, PartialProject,
            PartialProject>.fromModel(
            Project.classType.fromJson<PartialProject>(
              (json['project'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final teamProjectProjectId = json['teamProjectProjectId'] == null
        ? null
        : (json['teamProjectProjectId'] as String);
    final teamProjectName = json['teamProjectName'] == null
        ? null
        : (json['teamProjectName'] as String);
    return _PartialTeam(
      teamId: teamId,
      name: name,
      project: project,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamProjectProjectId: teamProjectProjectId,
      teamProjectName: teamProjectName,
    );
  }

  @override
  final String teamId;

  @override
  final String name;

  @override
  final AsyncModel<ProjectIdentifier, Project, PartialProject, PartialProject>?
      project;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? teamProjectProjectId;

  @override
  final String? teamProjectName;
}

abstract class Team extends PartialTeam implements Model<TeamIdentifier, Team> {
  factory Team({
    String? teamId,
    required String name,
    Project? project,
    String? teamProjectProjectId,
    String? teamProjectName,
  }) = _Team;

  const Team._() : super._();

  factory Team.fromJson(Map<String, Object?> json) {
    final teamId = json['teamId'] == null
        ? (throw ModelFieldError(
            'Team',
            'teamId',
          ))
        : (json['teamId'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Team',
            'name',
          ))
        : (json['name'] as String);
    final project = json['project'] == null
        ? null
        : AsyncModel<ProjectIdentifier, Project, PartialProject,
            Project>.fromModel(
            Project.classType
                .fromJson<Project>((json['project'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final teamProjectProjectId = json['teamProjectProjectId'] == null
        ? null
        : (json['teamProjectProjectId'] as String);
    final teamProjectName = json['teamProjectName'] == null
        ? null
        : (json['teamProjectName'] as String);
    return _Team._(
      teamId: teamId,
      name: name,
      project: project,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamProjectProjectId: teamProjectProjectId,
      teamProjectName: teamProjectName,
    );
  }

  static const TeamType classType = TeamType();

  static const TeamQueryFields<TeamIdentifier, Team> _queryFields =
      TeamQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'Team',
      'pluralName': 'Teams',
      'fields': {
        'teamId': {
          'name': 'teamId',
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
        'project': {
          'name': 'project',
          'type': {'model': 'Project'},
          'isReadOnly': false,
          'authRules': [],
          'association': {
            'associationType': 'BelongsTo',
            'associatedType': 'Project',
            'targetNames': [
              'teamProjectProjectId',
              'teamProjectName',
            ],
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
        'teamProjectProjectId': {
          'name': 'teamProjectProjectId',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
        'teamProjectName': {
          'name': 'teamProjectName',
          'type': {'scalar': 'String'},
          'isReadOnly': false,
          'authRules': [],
        },
      },
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'teamId',
          'sortKeyFields': ['name'],
        },
        {
          'type': 'foreign',
          'primaryField': 'project',
          'sortKeyFields': [
            'teamProjectProjectId',
            'teamProjectName',
          ],
          'name': 'project',
        },
      ],
    },
  )!;

  @override
  String get teamId;

  /// Query field for the [teamId] field.
  QueryField<TeamIdentifier, Team, String> get $teamId => _queryFields.$teamId;

  /// Query field for the [teamId] field.
  @Deprecated(r'Use $teamId instead')
  QueryField<TeamIdentifier, Team, String> get TEAM_ID => $teamId;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<TeamIdentifier, Team, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<TeamIdentifier, Team, String> get NAME => $name;
  @override
  AsyncModel<ProjectIdentifier, Project, PartialProject, Project>? get project;

  /// Query field for the [project] field.
  ProjectQueryFields<TeamIdentifier, Team> get $project =>
      _queryFields.$project;

  /// Query field for the [project] field.
  @Deprecated(r'Use $project instead')
  ProjectQueryFields<TeamIdentifier, Team> get PROJECT => $project;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get teamProjectProjectId;

  /// Query field for the [teamProjectProjectId] field.
  QueryField<TeamIdentifier, Team, String?> get $teamProjectProjectId =>
      _queryFields.$teamProjectProjectId;

  /// Query field for the [teamProjectProjectId] field.
  @Deprecated(r'Use $teamProjectProjectId instead')
  QueryField<TeamIdentifier, Team, String?> get TEAM_PROJECT_PROJECT_ID =>
      $teamProjectProjectId;
  @override
  String? get teamProjectName;

  /// Query field for the [teamProjectName] field.
  QueryField<TeamIdentifier, Team, String?> get $teamProjectName =>
      _queryFields.$teamProjectName;

  /// Query field for the [teamProjectName] field.
  @Deprecated(r'Use $teamProjectName instead')
  QueryField<TeamIdentifier, Team, String?> get TEAM_PROJECT_NAME =>
      $teamProjectName;

  /// Query field for the [modelIdentifier] field.
  QueryField<TeamIdentifier, Team, TeamIdentifier> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<TeamIdentifier, Team, TeamIdentifier> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  Team copyWith({
    String? teamId,
    String? name,
    Project? project,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? teamProjectProjectId,
    String? teamProjectName,
  }) {
    return _Team._(
      teamId: teamId ?? this.teamId,
      name: name ?? this.name,
      project: project == null ? this.project : AsyncModel.fromModel(project),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      teamProjectProjectId: teamProjectProjectId ?? this.teamProjectProjectId,
      teamProjectName: teamProjectName ?? this.teamProjectName,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<TeamIdentifier, Team, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'teamId':
        value = teamId;
        break;
      case r'name':
        value = name;
        break;
      case r'project':
        value = project;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'teamProjectProjectId':
        value = teamProjectProjectId;
        break;
      case r'teamProjectName':
        value = teamProjectName;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Team extends Team {
  _Team({
    String? teamId,
    required this.name,
    Project? project,
    this.teamProjectProjectId,
    this.teamProjectName,
  })  : teamId = teamId ?? uuid(),
        project = project == null ? null : AsyncModel.fromModel(project),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Team._({
    required this.teamId,
    required this.name,
    this.project,
    required this.createdAt,
    required this.updatedAt,
    this.teamProjectProjectId,
    this.teamProjectName,
  }) : super._();

  @override
  final String teamId;

  @override
  final String name;

  @override
  final AsyncModel<ProjectIdentifier, Project, PartialProject, Project>?
      project;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? teamProjectProjectId;

  @override
  final String? teamProjectName;
}

abstract class RemoteTeam extends Team
    implements RemoteModel<TeamIdentifier, Team> {
  const RemoteTeam._() : super._();
}

class _RemoteTeam extends RemoteTeam {
  const _RemoteTeam({
    required this.teamId,
    required this.name,
    this.project,
    required this.createdAt,
    required this.updatedAt,
    this.teamProjectProjectId,
    this.teamProjectName,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTeam.fromJson(Map<String, Object?> json) {
    final teamId = json['teamId'] == null
        ? (throw ModelFieldError(
            'Team',
            'teamId',
          ))
        : (json['teamId'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Team',
            'name',
          ))
        : (json['name'] as String);
    final project = json['project'] == null
        ? null
        : AsyncModel<ProjectIdentifier, Project, PartialProject,
            RemoteProject>.fromModel(
            Project.classType.fromJson<RemoteProject>(
              (json['project'] as Map<String, Object?>),
            ),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final teamProjectProjectId = json['teamProjectProjectId'] == null
        ? null
        : (json['teamProjectProjectId'] as String);
    final teamProjectName = json['teamProjectName'] == null
        ? null
        : (json['teamProjectName'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Team',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Team',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Team',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteTeam(
      teamId: teamId,
      name: name,
      project: project,
      createdAt: createdAt,
      updatedAt: updatedAt,
      teamProjectProjectId: teamProjectProjectId,
      teamProjectName: teamProjectName,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String teamId;

  @override
  final String name;

  @override
  final AsyncModel<ProjectIdentifier, Project, PartialProject, RemoteProject>?
      project;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? teamProjectProjectId;

  @override
  final String? teamProjectName;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
