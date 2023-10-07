// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubJobsList _$GithubJobsListFromJson(Map json) => GithubJobsList(
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => GithubJob.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

GithubJob _$GithubJobFromJson(Map json) => GithubJob(
      name: json['name'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => GithubStep.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

GithubStep _$GithubStepFromJson(Map json) => GithubStep(
      name: json['name'] as String,
      conclusion: json['conclusion'] as String?,
    );
