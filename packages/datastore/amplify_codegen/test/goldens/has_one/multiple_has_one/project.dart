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

  /// Query field for the [Project.devTeam] field.
  TeamQueryFields<ModelIdentifier, M> get $devTeam =>
      TeamQueryFields(NestedQueryField<ModelIdentifier, M, ProjectIdentifier,
          Project, Team>(
        const QueryField<ProjectIdentifier, Project, Team>(
            fieldName: 'devTeam'),
        root: _root,
      ));

  /// Query field for the [Project.productTeam] field.
  TeamQueryFields<ModelIdentifier, M> get $productTeam =>
      TeamQueryFields(NestedQueryField<ModelIdentifier, M, ProjectIdentifier,
          Project, Team>(
        const QueryField<ProjectIdentifier, Project, Team>(
            fieldName: 'productTeam'),
        root: _root,
      ));

  /// Query field for the [Project.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project,
          TemporalDateTime>(
        const QueryField<ProjectIdentifier, Project, TemporalDateTime>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [Project.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project,
          TemporalDateTime>(
        const QueryField<ProjectIdentifier, Project, TemporalDateTime>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [Project.projectDevTeamTeamId] field.
  QueryField<ModelIdentifier, M, String?> get $projectDevTeamTeamId =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String?>(
        const QueryField<ProjectIdentifier, Project, String?>(
            fieldName: 'projectDevTeamTeamId'),
        root: _root,
      );

  /// Query field for the [Project.projectDevTeamName] field.
  QueryField<ModelIdentifier, M, String?> get $projectDevTeamName =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String?>(
        const QueryField<ProjectIdentifier, Project, String?>(
            fieldName: 'projectDevTeamName'),
        root: _root,
      );

  /// Query field for the [Project.projectProductTeamTeamId] field.
  QueryField<ModelIdentifier, M, String?> get $projectProductTeamTeamId =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String?>(
        const QueryField<ProjectIdentifier, Project, String?>(
            fieldName: 'projectProductTeamTeamId'),
        root: _root,
      );

  /// Query field for the [Project.projectProductTeamName] field.
  QueryField<ModelIdentifier, M, String?> get $projectProductTeamName =>
      NestedQueryField<ModelIdentifier, M, ProjectIdentifier, Project, String?>(
        const QueryField<ProjectIdentifier, Project, String?>(
            fieldName: 'projectProductTeamName'),
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
  AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>? get devTeam;
  AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>? get productTeam;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String? get projectDevTeamTeamId;
  String? get projectDevTeamName;
  String? get projectProductTeamTeamId;
  String? get projectProductTeamName;
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
        devTeam,
        productTeam,
        createdAt,
        updatedAt,
        projectDevTeamTeamId,
        projectDevTeamName,
        projectProductTeamTeamId,
        projectProductTeamName,
      ];
  @override
  Map<String, Object?> toJson() => {
        'projectId': projectId,
        'name': name,
        'devTeam': devTeam?.toJson(),
        'productTeam': productTeam?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'projectDevTeamTeamId': projectDevTeamTeamId,
        'projectDevTeamName': projectDevTeamName,
        'projectProductTeamTeamId': projectProductTeamTeamId,
        'projectProductTeamName': projectProductTeamName,
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
      case r'devTeam':
        value = devTeam;
        break;
      case r'productTeam':
        value = productTeam;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'projectDevTeamTeamId':
        value = projectDevTeamTeamId;
        break;
      case r'projectDevTeamName':
        value = projectDevTeamName;
        break;
      case r'projectProductTeamTeamId':
        value = projectProductTeamTeamId;
        break;
      case r'projectProductTeamName':
        value = projectProductTeamName;
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
    this.devTeam,
    this.productTeam,
    this.createdAt,
    this.updatedAt,
    this.projectDevTeamTeamId,
    this.projectDevTeamName,
    this.projectProductTeamTeamId,
    this.projectProductTeamName,
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
    final devTeam = json['devTeam'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>.fromModel(
            Team.classType.fromJson<PartialTeam>(
                (json['devTeam'] as Map<String, Object?>)));
    final productTeam = json['productTeam'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>.fromModel(
            Team.classType.fromJson<PartialTeam>(
                (json['productTeam'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final projectDevTeamTeamId = json['projectDevTeamTeamId'] == null
        ? null
        : (json['projectDevTeamTeamId'] as String);
    final projectDevTeamName = json['projectDevTeamName'] == null
        ? null
        : (json['projectDevTeamName'] as String);
    final projectProductTeamTeamId = json['projectProductTeamTeamId'] == null
        ? null
        : (json['projectProductTeamTeamId'] as String);
    final projectProductTeamName = json['projectProductTeamName'] == null
        ? null
        : (json['projectProductTeamName'] as String);
    return _PartialProject(
      projectId: projectId,
      name: name,
      devTeam: devTeam,
      productTeam: productTeam,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectDevTeamTeamId: projectDevTeamTeamId,
      projectDevTeamName: projectDevTeamName,
      projectProductTeamTeamId: projectProductTeamTeamId,
      projectProductTeamName: projectProductTeamName,
    );
  }

  @override
  final String projectId;

  @override
  final String name;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>? devTeam;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, PartialTeam>? productTeam;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String? projectDevTeamTeamId;

  @override
  final String? projectDevTeamName;

  @override
  final String? projectProductTeamTeamId;

  @override
  final String? projectProductTeamName;
}

abstract class Project extends PartialProject
    implements Model<ProjectIdentifier, Project> {
  factory Project({
    String? projectId,
    required String name,
    Team? devTeam,
    Team? productTeam,
    String? projectDevTeamTeamId,
    String? projectDevTeamName,
    String? projectProductTeamTeamId,
    String? projectProductTeamName,
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
    final devTeam = json['devTeam'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, Team>.fromModel(Team
            .classType
            .fromJson<Team>((json['devTeam'] as Map<String, Object?>)));
    final productTeam = json['productTeam'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, Team>.fromModel(Team
            .classType
            .fromJson<Team>((json['productTeam'] as Map<String, Object?>)));
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
    final projectDevTeamTeamId = json['projectDevTeamTeamId'] == null
        ? null
        : (json['projectDevTeamTeamId'] as String);
    final projectDevTeamName = json['projectDevTeamName'] == null
        ? null
        : (json['projectDevTeamName'] as String);
    final projectProductTeamTeamId = json['projectProductTeamTeamId'] == null
        ? null
        : (json['projectProductTeamTeamId'] as String);
    final projectProductTeamName = json['projectProductTeamName'] == null
        ? null
        : (json['projectProductTeamName'] as String);
    return _Project._(
      projectId: projectId,
      name: name,
      devTeam: devTeam,
      productTeam: productTeam,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectDevTeamTeamId: projectDevTeamTeamId,
      projectDevTeamName: projectDevTeamName,
      projectProductTeamTeamId: projectProductTeamTeamId,
      projectProductTeamName: projectProductTeamName,
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
  AsyncModel<TeamIdentifier, Team, PartialTeam, Team>? get devTeam;

  /// Query field for the [devTeam] field.
  TeamQueryFields<ProjectIdentifier, Project> get $devTeam =>
      _queryFields.$devTeam;

  /// Query field for the [devTeam] field.
  @Deprecated(r'Use $devTeam instead')
  TeamQueryFields<ProjectIdentifier, Project> get DEV_TEAM => $devTeam;
  @override
  AsyncModel<TeamIdentifier, Team, PartialTeam, Team>? get productTeam;

  /// Query field for the [productTeam] field.
  TeamQueryFields<ProjectIdentifier, Project> get $productTeam =>
      _queryFields.$productTeam;

  /// Query field for the [productTeam] field.
  @Deprecated(r'Use $productTeam instead')
  TeamQueryFields<ProjectIdentifier, Project> get PRODUCT_TEAM => $productTeam;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String? get projectDevTeamTeamId;

  /// Query field for the [projectDevTeamTeamId] field.
  QueryField<ProjectIdentifier, Project, String?> get $projectDevTeamTeamId =>
      _queryFields.$projectDevTeamTeamId;

  /// Query field for the [projectDevTeamTeamId] field.
  @Deprecated(r'Use $projectDevTeamTeamId instead')
  QueryField<ProjectIdentifier, Project, String?>
      get PROJECT_DEV_TEAM_TEAM_ID => $projectDevTeamTeamId;
  @override
  String? get projectDevTeamName;

  /// Query field for the [projectDevTeamName] field.
  QueryField<ProjectIdentifier, Project, String?> get $projectDevTeamName =>
      _queryFields.$projectDevTeamName;

  /// Query field for the [projectDevTeamName] field.
  @Deprecated(r'Use $projectDevTeamName instead')
  QueryField<ProjectIdentifier, Project, String?> get PROJECT_DEV_TEAM_NAME =>
      $projectDevTeamName;
  @override
  String? get projectProductTeamTeamId;

  /// Query field for the [projectProductTeamTeamId] field.
  QueryField<ProjectIdentifier, Project, String?>
      get $projectProductTeamTeamId => _queryFields.$projectProductTeamTeamId;

  /// Query field for the [projectProductTeamTeamId] field.
  @Deprecated(r'Use $projectProductTeamTeamId instead')
  QueryField<ProjectIdentifier, Project, String?>
      get PROJECT_PRODUCT_TEAM_TEAM_ID => $projectProductTeamTeamId;
  @override
  String? get projectProductTeamName;

  /// Query field for the [projectProductTeamName] field.
  QueryField<ProjectIdentifier, Project, String?> get $projectProductTeamName =>
      _queryFields.$projectProductTeamName;

  /// Query field for the [projectProductTeamName] field.
  @Deprecated(r'Use $projectProductTeamName instead')
  QueryField<ProjectIdentifier, Project, String?>
      get PROJECT_PRODUCT_TEAM_NAME => $projectProductTeamName;

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
    Team? devTeam,
    Team? productTeam,
    this.projectDevTeamTeamId,
    this.projectDevTeamName,
    this.projectProductTeamTeamId,
    this.projectProductTeamName,
  })  : projectId = projectId ?? uuid(),
        devTeam = devTeam == null ? null : AsyncModel.fromModel(devTeam),
        productTeam =
            productTeam == null ? null : AsyncModel.fromModel(productTeam),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Project._({
    required this.projectId,
    required this.name,
    this.devTeam,
    this.productTeam,
    required this.createdAt,
    required this.updatedAt,
    this.projectDevTeamTeamId,
    this.projectDevTeamName,
    this.projectProductTeamTeamId,
    this.projectProductTeamName,
  }) : super._();

  @override
  final String projectId;

  @override
  final String name;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, Team>? devTeam;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, Team>? productTeam;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? projectDevTeamTeamId;

  @override
  final String? projectDevTeamName;

  @override
  final String? projectProductTeamTeamId;

  @override
  final String? projectProductTeamName;
}

abstract class RemoteProject extends Project
    implements RemoteModel<ProjectIdentifier, Project> {
  const RemoteProject._() : super._();
}

class _RemoteProject extends RemoteProject {
  const _RemoteProject({
    required this.projectId,
    required this.name,
    this.devTeam,
    this.productTeam,
    required this.createdAt,
    required this.updatedAt,
    this.projectDevTeamTeamId,
    this.projectDevTeamName,
    this.projectProductTeamTeamId,
    this.projectProductTeamName,
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
    final devTeam = json['devTeam'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, RemoteTeam>.fromModel(
            Team.classType.fromJson<RemoteTeam>(
                (json['devTeam'] as Map<String, Object?>)));
    final productTeam = json['productTeam'] == null
        ? null
        : AsyncModel<TeamIdentifier, Team, PartialTeam, RemoteTeam>.fromModel(
            Team.classType.fromJson<RemoteTeam>(
                (json['productTeam'] as Map<String, Object?>)));
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
    final projectDevTeamTeamId = json['projectDevTeamTeamId'] == null
        ? null
        : (json['projectDevTeamTeamId'] as String);
    final projectDevTeamName = json['projectDevTeamName'] == null
        ? null
        : (json['projectDevTeamName'] as String);
    final projectProductTeamTeamId = json['projectProductTeamTeamId'] == null
        ? null
        : (json['projectProductTeamTeamId'] as String);
    final projectProductTeamName = json['projectProductTeamName'] == null
        ? null
        : (json['projectProductTeamName'] as String);
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
      devTeam: devTeam,
      productTeam: productTeam,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectDevTeamTeamId: projectDevTeamTeamId,
      projectDevTeamName: projectDevTeamName,
      projectProductTeamTeamId: projectProductTeamTeamId,
      projectProductTeamName: projectProductTeamName,
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
  final AsyncModel<TeamIdentifier, Team, PartialTeam, RemoteTeam>? devTeam;

  @override
  final AsyncModel<TeamIdentifier, Team, PartialTeam, RemoteTeam>? productTeam;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String? projectDevTeamTeamId;

  @override
  final String? projectDevTeamName;

  @override
  final String? projectProductTeamTeamId;

  @override
  final String? projectProductTeamName;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
