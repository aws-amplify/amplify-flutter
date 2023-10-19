// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

part 'github_jobs.g.dart';

const serializable = JsonSerializable(
  createToJson: false,
  anyMap: true,
);

@serializable
class GithubJobsList {
  const GithubJobsList({
    required this.jobs,
  });
  factory GithubJobsList.fromJson(Map<String, Object?> json) =>
      _$GithubJobsListFromJson(json);
  final List<GithubJob> jobs;
}

@serializable
class GithubJob {
  const GithubJob({
    required this.name,
    required this.steps,
  });
  factory GithubJob.fromJson(Map<String, dynamic> json) =>
      _$GithubJobFromJson(json);
  final String name;

  final List<GithubStep> steps;
}

@serializable
class GithubStep {
  const GithubStep({
    required this.name,
    required this.conclusion,
  });
  factory GithubStep.fromJson(Map<String, dynamic> json) =>
      _$GithubStepFromJson(json);
  final String name;
  final String? conclusion;
}
