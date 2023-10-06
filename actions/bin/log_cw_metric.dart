// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:actions/src/githubJobs/github_jobs.dart';
import 'package:actions/src/node/actions/github.dart';

import 'package:actions/src/node/process_manager.dart';

Future<void> main(List<String> args) => wrapMain(logMetric);

Future<void> logMetric() async {
  // Inputs for Failing Step
  final jobStatus = core.getRequiredInput('job-status');

  // Create job identifier from matrix values
  final matrixRawInput = core.getRequiredInput('matrix');

  // Parse the matrix string (input is raw json string with " and \n)
  final matrixCleanedInput = matrixRawInput
      .replaceAll('\n', '')
      .replaceAll(r'\', '')
      .replaceAll(' ', '');
  final matrix = json.decode(matrixCleanedInput) as Map<String, dynamic>;

  final matrixValues = matrix.values.map((e) => e).join(', ');
  final jobIdentifier =
      '${github.context.job} ${matrixValues.isEmpty ? '' : '($matrixValues)'}';

  core.info('Job identifier: $jobIdentifier');

  final githubToken = core.getRequiredInput('github-token');
  final repo = '${github.context.repo.owner}/${github.context.repo.repo}';
  final runId = '${github.context.runId}';

  final isFailed = jobStatus == 'failure';
  final failingStep = isFailed
      ? await getFailingStep(jobIdentifier, githubToken, repo, runId)
      : '';

  // Inputs for Metric
  final metricName = core.getRequiredInput('metric-name');
  final testType = core.getRequiredInput('test-type');
  if (!['canary', 'e2e', 'unit'].contains(testType)) {
    throw Exception(
      'test-type input of $testType must be one of: canary, e2e, unit',
    );
  }

  final packageName = core.getRequiredInput('package-name');
  final category = packageName.split('_')[1];
  if (!['canaries', 'analytics', 'api', 'auth', 'datastore', 'push', 'storage']
      .contains(category)) {
    throw Exception(
      'packageName input of $packageName must contain a valid category of: canaries, analytics, api, auth, datastore, push, storage',
    );
  }

  final workflowName = '${github.context.workflow}/${github.context.job}';

  final framework = core.getInput('framework');
  if (!['dart', 'flutter'].contains(framework)) {
    throw Exception(
      'framework input of $framework must be one of: dart, flutter',
    );
  }
  final flutterDartChannel = core.getInput('flutter-dart-channel');
  final dartVersion = core.getInput('dart-version');
  final flutterVersion = core.getInput('flutter-version');
  final dartCompiler = core.getInput('dart-compiler');
  final platform = core.getInput('platform');
  final platformVersion = core.getInput('platform-version');

  final value = isFailed ? '1' : '0';

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

  core.info('Sent cloudwatch metric with args: $cloudArgs');
}

Future<String> getFailingStep(
  String jobIdentifier,
  String githubToken,
  String repo,
  String runId,
) async {
  try {
    final headers = {
      'Authorization': 'token $githubToken',
      'Accept': 'application/vnd.github.v3+json',
      'user-agent': 'amplify-flutter',
    };

    final response = await HttpClient().getJson(
      'https://api.github.com/repos/$repo/actions/runs/$runId/jobs',
      headers: headers,
    );

    final jobsList = GithubJobsList.fromJson(response);
    final matchingJob =
        jobsList.jobs.firstWhere((job) => job.name == jobIdentifier);
    final steps = matchingJob.steps;

    final failingStep = steps.firstWhere(
      (element) => element.conclusion == 'failure',
    );
    core.info('FailingStep was: ${failingStep.name}');

    return failingStep.name;
  } on Exception catch (e) {
    core.error('Error fetching data from GitHub API: $e');
    return '';
  }
}
