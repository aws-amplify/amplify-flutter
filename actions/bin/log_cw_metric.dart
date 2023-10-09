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
  final matrixRawInput = core.getInput('matrix', defaultValue: '');

  // Parse the matrix string (input is raw json string with " and \n)
  String? parseMatrixInput(String matrixRawInput) {
    if (matrixRawInput.isEmpty) {
      return null;
    }

    core.info('Accepted matrix input: <$matrixRawInput>');

    final matrixCleanedInput = matrixRawInput
        .replaceAll('\n', '')
        .replaceAll(r'\', '')
        .replaceAll(' ', '');
    final matrix = json.decode(matrixCleanedInput) as Map<String, dynamic>;

    final matrixValues = matrix.values.map((e) => e).join(', ');
    return matrixValues;
  }

  final matrixValues = parseMatrixInput(matrixRawInput);

  final jobIdentifier =
      ('${github.context.job} ${matrixValues == null ? '' : '($matrixValues)'}')
          .trim();

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

  final workingDirectory = core.getRequiredInput('working-directory');

  final categories = [
    'canaries',
    'analytics',
    'api',
    'auth',
    'authenticator',
    'core',
    'datastore',
    'db_common',
    'push',
    'secure_storage',
    'storage',
    'aws_common',
    'aws_signature_v4',
    'smithy',
    'worker_bee',
    'amplify_flutter',
    'amplify_lints',
    'amplify_native_legacy_wrapper',
    'pub_server',
  ];

  var category = '';
  for (final cat in categories) {
    if (workingDirectory.contains(cat)) {
      category = cat;
      break;
    }
  }

  if (category.isEmpty) {
    throw Exception(
      'WorkingDirectory input of $workingDirectory must contain a valid category.',
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

/* Notes on Difficulty Getting Failing Step (Oct 6 2023)

1. GithubActions provides no API to directly get failing step name 
2. GithubActions provides no API to get the currently running jobId
  i. Thus we need to manually parse the jobs of a run, and find the job that matches (done below). 
3. GithubActions provides no API to get the actual job name (ie. name: 'job name') 
  i. If a job name is set, Github job runs use it.  
  ii. Otherwise they use the github.context.job, which is the job id like "build-and-test" but not the actual numeric job id which is a uuid.
  iii. Setting a job name will break this method. 

*/
Future<String> getFailingStep(
  String jobIdentifier,
  String githubToken,
  String repo,
  String runId,
) async {
  try {
    jobIdentifier = jobIdentifier.toLowerCase();

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
    final matchingJob = jobsList.jobs.firstWhere(
        (job) => job.name.toLowerCase().contains(jobIdentifier),
        orElse: () => throw Exception(
            'No job found matching <$jobIdentifier>.  Ensure full workflow path run name is unique.  Available jobs: ${jobsList.jobs.map((e) => e.name).join(', ')}.  Note that the "jobIdentifier" used to find the proper job uses the job id and not the job name, setting the "name" field in the workflow yaml will break this logic.  See comments for more context.'));
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
