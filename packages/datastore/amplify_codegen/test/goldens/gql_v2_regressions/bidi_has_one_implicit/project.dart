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

import 'team.dart';

class ProjectType extends ModelType<String, Project, PartialProject> {
  const ProjectType();

  @override
  T fromJson<T extends PartialModel<String, Project>>(
    Map<String, Object?> json,
  ) {
    if (T == Project || T == Model<String, Project>) {
      return Project.fromJson(json) as T;
    }
    if (T == RemoteProject || T == RemoteModel<String, Project>) {
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

  /// Query field for the [Project.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Project, String>(
        const QueryField<String, Project, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Project.name] field.
  QueryField<ModelIdentifier, M, String?> get $name =>
      NestedQueryField<ModelIdentifier, M, String, Project, String?>(
        const QueryField<String, Project, String?>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Project.team] field.
  TeamQueryFields<ModelIdentifier, M> get $team => TeamQueryFields(
        NestedQueryField<ModelIdentifier, M, String, Project, Team>(
          const QueryField<String, Project, Team>(fieldName: 'team'),
          root: _root,
        ),
      );

  /// Query field for the [Project.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Project, TemporalDateTime>(
        const QueryField<String, Project, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Project.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Project, TemporalDateTime>(
        const QueryField<String, Project, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Project.projectTeamId] field.
  QueryField<ModelIdentifier, M, String?> get $projectTeamId =>
      NestedQueryField<ModelIdentifier, M, String, Project, String?>(
        const QueryField<String, Project, String?>(fieldName: 'projectTeamId'),
        root: _root,
      );

  /// Query field for the [Project] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Project, String>(
        const QueryField<String, Project, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialProject extends PartialModel<String, Project>
    with AWSEquatable<PartialProject> {
  const PartialProject._();

  String get id;
  String? get name;
  AsyncModel<String, Team, PartialTeam, PartialTeam>? get team;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get projectTeamId;
  @override
  String get modelIdentifier => id;
  @override
  ProjectType get modelType => Project.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        team,
        createdAt,
        updatedAt,
        projectTeamId,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'team': team?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'projectTeamId': projectTeamId,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Project';
}

class _PartialProject extends PartialProject {
  const _PartialProject({
    required this.id,
    this.name,
    this.team,
    this.createdAt,
    this.updatedAt,
    this.projectTeamId,
  }) : super._();

  factory _PartialProject.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Project',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<String, Team, PartialTeam, PartialTeam>.fromModel(
            Team.classType
                .fromJson<PartialTeam>((json['team'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectTeamId = json['projectTeamId'] == null
        ? null
        : (json['projectTeamId'] as String);
    return _PartialProject(
      id: id,
      name: name,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectTeamId: projectTeamId,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final AsyncModel<String, Team, PartialTeam, PartialTeam>? team;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? projectTeamId;
}

abstract class Project extends PartialProject
    implements Model<String, Project> {
  factory Project({
    String? id,
    String? name,
    Team? team,
    String? projectTeamId,
  }) = _Project;

  const Project._() : super._();

  factory Project.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Project',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<String, Team, PartialTeam, Team>.fromModel(
            Team.classType
                .fromJson<Team>((json['team'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Project',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Project',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectTeamId = json['projectTeamId'] == null
        ? null
        : (json['projectTeamId'] as String);
    return _Project._(
      id: id,
      name: name,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectTeamId: projectTeamId,
    );
  }

  static const ProjectType classType = ProjectType();

  static const ProjectQueryFields<String, Project> _queryFields =
      ProjectQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Project, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Project, String> get ID => $id;
  @override
  String? get name;

  /// Query field for the [name] field.
  QueryField<String, Project, String?> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, Project, String?> get NAME => $name;
  @override
  AsyncModel<String, Team, PartialTeam, Team>? get team;

  /// Query field for the [team] field.
  TeamQueryFields<String, Project> get $team => _queryFields.$team;

  /// Query field for the [team] field.
  @Deprecated(r'Use $team instead')
  TeamQueryFields<String, Project> get TEAM => $team;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get projectTeamId;

  /// Query field for the [projectTeamId] field.
  QueryField<String, Project, String?> get $projectTeamId =>
      _queryFields.$projectTeamId;

  /// Query field for the [projectTeamId] field.
  @Deprecated(r'Use $projectTeamId instead')
  QueryField<String, Project, String?> get PROJECT_TEAM_ID => $projectTeamId;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Project, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Project, String> get MODEL_IDENTIFIER => $modelIdentifier;
  @override
  T valueFor<T extends Object?>(QueryField<String, Project, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
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
      case r'projectTeamId':
        value = projectTeamId;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _Project extends Project {
  _Project({
    String? id,
    this.name,
    Team? team,
    this.projectTeamId,
  })  : id = id ?? uuid(),
        team = team == null ? null : AsyncModel.fromModel(team),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Project._({
    required this.id,
    this.name,
    this.team,
    required this.createdAt,
    required this.updatedAt,
    this.projectTeamId,
  }) : super._();

  @override
  final String id;

  @override
  final String? name;

  @override
  final AsyncModel<String, Team, PartialTeam, Team>? team;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? projectTeamId;
}

abstract class RemoteProject extends Project
    implements RemoteModel<String, Project> {
  const RemoteProject._() : super._();
}

class _RemoteProject extends RemoteProject {
  const _RemoteProject({
    required this.id,
    this.name,
    this.team,
    required this.createdAt,
    required this.updatedAt,
    this.projectTeamId,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteProject.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Project',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final team = json['team'] == null
        ? null
        : AsyncModel<String, Team, PartialTeam, RemoteTeam>.fromModel(
            Team.classType
                .fromJson<RemoteTeam>((json['team'] as Map<String, Object?>)),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Project',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Project',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectTeamId = json['projectTeamId'] == null
        ? null
        : (json['projectTeamId'] as String);
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
      id: id,
      name: name,
      team: team,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectTeamId: projectTeamId,
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
  final AsyncModel<String, Team, PartialTeam, RemoteTeam>? team;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? projectTeamId;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
