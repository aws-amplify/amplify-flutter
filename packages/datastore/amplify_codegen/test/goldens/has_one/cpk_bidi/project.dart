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

// ignore_for_file: non_constant_identifier_names

library models.project;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'team.dart';

@immutable
class ProjectIdentifier
    with
        AWSEquatable<ProjectIdentifier>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const ProjectIdentifier({
    required this.projectId,
    required this.name,
  });

  final String projectId;

  final String name;

  @override
  List<Object?> get props => [
        projectId,
        name,
      ];
  @override
  Map<String, Object?> toJson() => {
        'projectId': projectId,
        'name': name,
      };
  @override
  String get runtimeTypeName => 'ProjectIdentifier';
}

class ProjectType
    extends ModelType<ProjectIdentifier, Project, PartialProject> {
  const ProjectType();

  @override
  T fromJson<T extends PartialModel<ProjectIdentifier, Project>>(
      Map<String, Object?> json) {
    if (T == Project || T == Model<ProjectIdentifier, Project>) {
      return Project.fromJson(json) as T;
    }
    if (T == RemoteProject || T == RemoteModel<ProjectIdentifier, Project>) {
      return _RemoteProject.fromJson(json) as T;
    }
    return _PartialProject.fromJson(json) as T;
  }

  @override
  String get modelName => 'Project';
}

class ProjectQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const ProjectQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Project>? _root;

  /// Query field for the [Project.projectId] field.
  QueryField<ModelIdentifier, M, String> get $projectId =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String>(
        const QueryField<ProjectIdentifier, Project, String>(
            fieldName: 'projectId'),
        root: _root,
      );

  /// Query field for the [Project.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String>(
        const QueryField<ProjectIdentifier, Project, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Project.team] field.
  TeamQueryFields<ModelIdentifier, M> get $team =>
      TeamQueryFields(NestedQueryField<ModelIdentifier, M, ProjectIdentifier,
          Project, Team>(
        const QueryField<ProjectIdentifier, Project, Team>(fieldName: 'team'),
        root: _root,
      ));

  /// Query field for the [Project.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project,
          TemporalDateTime?>(
        const QueryField<ProjectIdentifier, Project, TemporalDateTime?>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [Project.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project,
          TemporalDateTime?>(
        const QueryField<ProjectIdentifier, Project, TemporalDateTime?>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [Project.projectTeamTeamId] field.
  QueryField<ModelIdentifier, M, String> get $projectTeamTeamId =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String>(
        const QueryField<ProjectIdentifier, Project, String>(
            fieldName: 'projectTeamTeamId'),
        root: _root,
      );

  /// Query field for the [Project.projectTeamName] field.
  QueryField<ModelIdentifier, M, String> get $projectTeamName =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String>(
        const QueryField<ProjectIdentifier, Project, String>(
            fieldName: 'projectTeamName'),
        root: _root,
      );

  /// Query field for the [Project] model identifier.
  QueryField<ModelIdentifier, M, ProjectIdentifier> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project,
          ProjectIdentifier>(
        const QueryField<ProjectIdentifier, Project, ProjectIdentifier>(
            fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialProject extends PartialModel<ProjectIdentifier, Project>
    with AWSEquatable<PartialProject> {
  const PartialProject._();

  String get projectId;
  String get name;
  AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>? get team;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get projectTeamTeamId;
  String? get projectTeamName;
  @override
  ProjectIdentifier get modelIdentifier => ProjectIdentifier(
        projectId: projectId,
        name: name,
      );
  @override
  ProjectType get modelType => Project.classType;
  @override
  List<Object?> get props => [
        projectId,
        name,
        team,
        createdAt,
        updatedAt,
        projectTeamTeamId,
        projectTeamName,
      ];
  @override
  Map<String, Object?> toJson() => {
        'projectId': projectId,
        'name': name,
        'team': team?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'projectTeamTeamId': projectTeamTeamId,
        'projectTeamName': projectTeamName,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Project';
  @override
  T valueFor<T extends Object?>(
      QueryField<ProjectIdentifier, Project, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'projectId':
        value = projectId;
        break;
      case r'name':
        value = name;
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
      case r'projectTeamTeamId':
        value = projectTeamTeamId;
        break;
      case r'projectTeamName':
        value = projectTeamName;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _PartialProject extends PartialProject {
  const _PartialProject({
    required this.projectId,
    required this.name,
    this.team,
    this.createdAt,
    this.updatedAt,
    this.projectTeamTeamId,
    this.projectTeamName,
  }) : super._();

  factory _PartialProject.fromJson(Map<String, Object?> json) {
    final projectId = json['projectId'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectId',
          ))
        : (json['projectId'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Project',
            'name',
          ))
        : (json['name'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>.fromModel(
            Team.classType
                .fromJson<PartialTeam>((json['team'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectTeamTeamId = json['projectTeamTeamId'] == null
        ? null
        : (json['projectTeamTeamId'] as String);
    final projectTeamName = json['projectTeamName'] == null
        ? null
        : (json['projectTeamName'] as String);
    return _PartialProject(
      projectId: projectId,
      name: name,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectTeamTeamId: projectTeamTeamId,
      projectTeamName: projectTeamName,
    );
  }

  @override
  final String projectId;

  @override
  final String name;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>? team;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? projectTeamTeamId;

  @override
  final String? projectTeamName;
}

abstract class Project extends PartialProject
    implements Model<ProjectIdentifier, Project> {
  factory Project({
    String? projectId,
    required String name,
    Team? team,
    required String projectTeamTeamId,
    required String projectTeamName,
  }) = _Project;

  const Project._() : super._();

  factory Project.fromJson(Map<String, Object?> json) {
    final projectId = json['projectId'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectId',
          ))
        : (json['projectId'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Project',
            'name',
          ))
        : (json['name'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, Team>.fromModel(Team
            .classType
            .fromJson<Team>((json['team'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectTeamTeamId = json['projectTeamTeamId'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectTeamTeamId',
          ))
        : (json['projectTeamTeamId'] as String);
    final projectTeamName = json['projectTeamName'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectTeamName',
          ))
        : (json['projectTeamName'] as String);
    return _Project._(
      projectId: projectId,
      name: name,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectTeamTeamId: projectTeamTeamId,
      projectTeamName: projectTeamName,
    );
  }

  static const ProjectType classType = ProjectType();

  static const ProjectQueryFields<ProjectIdentifier, Project> _queryFields =
      ProjectQueryFields();

  @override
  String get projectId;

  /// Query field for the [projectId] field.
  QueryField<ProjectIdentifier, Project, String> get $projectId =>
      _queryFields.$projectId;

  /// Query field for the [projectId] field.
  @Deprecated(r'Use $projectId instead')
  QueryField<ProjectIdentifier, Project, String> get PROJECT_ID => $projectId;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<ProjectIdentifier, Project, String> get $name =>
      _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<ProjectIdentifier, Project, String> get NAME => $name;
  @override
  AsyncModel<TeamIdentifier, Team, PartialTeam, Team>? get team;

  /// Query field for the [team] field.
  TeamQueryFields<ProjectIdentifier, Project> get $team => _queryFields.$team;

  /// Query field for the [team] field.
  @Deprecated(r'Use $team instead')
  TeamQueryFields<ProjectIdentifier, Project> get TEAM => $team;
  @override
  TemporalDateTime? get createdAt;
  @override
  TemporalDateTime? get updatedAt;
  @override
  String get projectTeamTeamId;

  /// Query field for the [projectTeamTeamId] field.
  QueryField<ProjectIdentifier, Project, String> get $projectTeamTeamId =>
      _queryFields.$projectTeamTeamId;

  /// Query field for the [projectTeamTeamId] field.
  @Deprecated(r'Use $projectTeamTeamId instead')
  QueryField<ProjectIdentifier, Project, String> get PROJECT_TEAM_TEAM_ID =>
      $projectTeamTeamId;
  @override
  String get projectTeamName;

  /// Query field for the [projectTeamName] field.
  QueryField<ProjectIdentifier, Project, String> get $projectTeamName =>
      _queryFields.$projectTeamName;

  /// Query field for the [projectTeamName] field.
  @Deprecated(r'Use $projectTeamName instead')
  QueryField<ProjectIdentifier, Project, String> get PROJECT_TEAM_NAME =>
      $projectTeamName;

  /// Query field for the [modelIdentifier] field.
  QueryField<ProjectIdentifier, Project, ProjectIdentifier>
      get $modelIdentifier => _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<ProjectIdentifier, Project, ProjectIdentifier>
      get MODEL_IDENTIFIER => $modelIdentifier;
}

class _Project extends Project {
  _Project({
    String? projectId,
    required this.name,
    Team? team,
    required this.projectTeamTeamId,
    required this.projectTeamName,
  })  : projectId = projectId ?? uuid(),
        team = team == null ? null : AsyncModel.fromModel(team),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Project._({
    required this.projectId,
    required this.name,
    this.team,
    this.createdAt,
    this.updatedAt,
    required this.projectTeamTeamId,
    required this.projectTeamName,
  }) : super._();

  @override
  final String projectId;

  @override
  final String name;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, Team>? team;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String projectTeamTeamId;

  @override
  final String projectTeamName;
}

abstract class RemoteProject extends Project
    implements RemoteModel<ProjectIdentifier, Project> {
  const RemoteProject._() : super._();
}

class _RemoteProject extends RemoteProject {
  const _RemoteProject({
    required this.projectId,
    required this.name,
    this.team,
    this.createdAt,
    this.updatedAt,
    required this.projectTeamTeamId,
    required this.projectTeamName,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteProject.fromJson(Map<String, Object?> json) {
    final projectId = json['projectId'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectId',
          ))
        : (json['projectId'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Project',
            'name',
          ))
        : (json['name'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, RemoteTeam>.fromModel(
            Team.classType
                .fromJson<RemoteTeam>((json['team'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectTeamTeamId = json['projectTeamTeamId'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectTeamTeamId',
          ))
        : (json['projectTeamTeamId'] as String);
    final projectTeamName = json['projectTeamName'] == null
        ? (throw ModelFieldError(
            'Project',
            'projectTeamName',
          ))
        : (json['projectTeamName'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Project',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Project',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Project',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteProject(
      projectId: projectId,
      name: name,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectTeamTeamId: projectTeamTeamId,
      projectTeamName: projectTeamName,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String projectId;

  @override
  final String name;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, RemoteTeam>? team;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String projectTeamTeamId;

  @override
  final String projectTeamName;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
