// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:http/http.dart' as http;

Future<void> main(List<String> args) => wrapMain(launch);

Future<void> launch() async {
  // Inputs for Failing Step
  final jobStatus = core.getRequiredInput('job-status');
  final jobIdentifier = core.getRequiredInput('job-identifier');
  final githubToken = core.getRequiredInput('github-token');
  final repo = core.getRequiredInput('repo');
  final runId = core.getRequiredInput('run-id');

  final isFailed = jobStatus == 'failure';
  String? failingStep = isFailed
      ? await getFailingStep(jobIdentifier, githubToken, repo, runId)
      : '';

  // Inputs for Metric
  final metricName = core.getRequiredInput('metric-name');
  final testType = core.getRequiredInput('test-type');
  var category = core.getRequiredInput('category');
  final workflowName = core.getRequiredInput('workflow-name');
  final framework = core.getInput('framework');
  final flutterDartChannel = core.getInput('flutter-dart-channel');
  final dartVersion = core.getInput('dart-version');
  final flutterVersion = core.getInput('flutter-version');
  final dartCompiler = core.getInput('dart-compiler');
  final platform = core.getInput('platform');
  final platformVersion = core.getInput('platform-version');

/*
  print('''{
    metricName: $metricName,
    isFailed: $isFailed,
    testType: $testType,
    category: $category,
    workflowName: $workflowName,
    framework: $framework,
    flutterDartChannel: $flutterDartChannel,
    dartVersion: $dartVersion,
    flutterVersion: $flutterVersion,
    dartCompiler: $dartCompiler,
    platform: $platform,
    platformVersion: $platformVersion,
    failingStep: $failingStep,
  }''');
  */

  final value = isFailed ? '1' : '0';

  if (category.contains('/')) {
    // For working directory "packages/analytics/amplify_analytics_pinpoint"
    category = category.split('/')[1];
  } else if (category.contains('_')) {
    // For integration test scope "amplify_analytics_pinpoint_example"
    category = category.split('_')[1];
  }

  final dimensions = {
    'test-type': testType,
    'category': category,
    'workflow-name': workflowName,
    if (framework.isNotEmpty) 'framework': framework,
    if (flutterDartChannel.isNotEmpty)
      'flutter-dart-channel': flutterDartChannel,
    if (dartVersion.isNotEmpty) 'dart-version': dartVersion,
    if (flutterVersion.isNotEmpty) 'flutter-version': flutterVersion,
    if (dartCompiler.isNotEmpty) 'dart-compiler': dartCompiler,
    if (platform.isNotEmpty) 'platform': platform,
    if (platformVersion.isNotEmpty) 'platform-version': platformVersion,
    if (failingStep.isNotEmpty) 'failing-step': failingStep,
  };

  final dimensionString =
      dimensions.entries.map((e) => '${e.key}=${e.value}').join(',');

  final cloudArgs = <String>[
    'cloudwatch',
    'put-metric-data',
    '--metric-name',
    metricName,
    '--namespace',
    'GithubCanaryApps',
    '--value',
    value,
    '--dimension',
    dimensionString,
  ];

  await processManager.run(
    <String>['aws', ...cloudArgs],
  );

  print('sent the process call with args: $cloudArgs');
}

Future<String> getFailingStep(
  String jobIdentifier,
  String githubToken,
  String repo,
  String runId,
) async {
  final headers = {
    'Authorization': 'token $githubToken',
    'Accept': 'application/vnd.github.v3+json'
  };

  final response = await http.get(
    Uri.parse('https://api.github.com/repos/$repo/actions/runs/$runId/jobs'),
    headers: headers,
  );

  if (response.statusCode != 200) {
    print('Error fetching data from GitHub API.');
    return '';
  }

  final jobsListJson = json.decode(response.body) as Map<String, dynamic>;
  final jobsList = GithubJobsList.fromJson(jobsListJson);

  try {
    final job = jobsList.jobs.firstWhere(
      (element) => element.name == jobIdentifier,
    );

    final failingStep = job.steps.firstWhere(
      (element) => element.conclusion == 'failure',
    );

    return failingStep.name;
  } on Exception catch (e) {
    // Return empty string if no job found or
    print('Exception in retrieving failing step: $e');
    return '';
  }
}

class GithubJobsList {
  GithubJobsList.fromJson(Map<String, dynamic> json)
      : jobs = (json['jobs'] as List<Map<String, dynamic>>)
            .map(GithubJob.fromJson)
            .toList();

  final List<GithubJob> jobs;
}

class GithubJob {
  GithubJob.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        steps = (json['steps'] as List<Map<String, dynamic>>)
            .map(GithubStep.fromJson)
            .toList();

  final String name;
  final List<GithubStep> steps;
}

class GithubStep {
  GithubStep.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        conclusion = json['conclusion'] as String;

  final String name;
  final String conclusion;
}
