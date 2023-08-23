// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption('job-status')
    ..addOption('substring')
    ..addOption('github-token')
    ..addOption('repo')
    ..addOption('run-id');

  final results = parser.parse(args);

  final jobStatus = results['job-status'];

  if (jobStatus != 'failure') {
    print('Job status is not failure. Exiting.');
    exit(0);
  }

  final substring = results['substring']?.trim();
  final githubToken = results['github-token'];
  final repo = results['repo'];
  final runId = results['run-id'];

  if ([substring, githubToken, repo, runId]
      .any((e) => e == null || e.isEmpty)) {
    print('All arguments are required.');
    exit(1);
  }

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
    exit(1);
  }

  final jobsJson = json.decode(response.body) as Map<String, dynamic>;
  final jobList = jobsJson['jobs'] as List<dynamic>;

  print('=== JOBS LIST ===');
  print(jobList);

  print('\n');
  print('\n');
  print('\n');

  try {
    final jobJson =
        jobList.firstWhere((element) => element['name'].contains(substring));
    final steps = jobJson['steps'] as List<dynamic>;

    print('=== STEPS LIST ===');
    print(steps);

    final failingStep = steps.firstWhere(
        (element) => element['conclusion'] == 'failure',
        orElse: () => null);

    print('=== FAILING STEP ===');
    print(failingStep['name']);
  } on Exception catch (_) {
    // Return empty string if no job found or
    print(' === IN EXCEPTION BLOCK ===');
    print("");
    exit(0);
  }
}
