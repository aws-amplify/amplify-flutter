// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

import 'package:actions/src/node/process.dart';

@JS()
external GitHub get github;

@JS()
@anonymous
extension type GitHub._(JSObject it) {
  /// The GitHub context this action is running in.
  /// 
  /// See: https://docs.github.com/en/actions/learn-github-actions/contexts#github-context
  external GitHubContext get context;
}

/// A typed representation of the `github` context object.
/// 
/// See also: 
/// - https://docs.github.com/en/actions/learn-github-actions/contexts#github-context
/// - https://docs.github.com/en/actions/learn-github-actions/variables#default-environment-variables
@JS('github.Context')
extension type GitHubContext._(JSObject it) {
  /// The webhook payload object that triggered this workflow.
  external WebhookPayload get payload;

  /// The name of the event that triggered the workflow run.
  /// 
  /// From the `GITHUB_EVENT_NAME` environment variable.
  external String get eventName;

  /// The commit SHA that triggered the workflow. 
  /// 
  /// The value of this commit SHA depends on the event that triggered the workflow. 
  /// For more information, see [Events that trigger workflows](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows).
  /// 
  /// For example, `ffac537e6cbbf934b08745a378932722df287a53`.
  /// 
  /// From the `GITHUB_SHA` environment variable.
  external String get sha;

  /// The fully-formed ref of the branch or tag that triggered the workflow run. 
  /// 
  /// For workflows triggered by push, this is the branch or tag ref that was pushed. 
  /// For workflows triggered by pull_request, this is the pull request merge branch. 
  /// For workflows triggered by release, this is the release tag created. For other 
  /// triggers, this is the branch or tag ref that triggered the workflow run. 
  /// 
  /// This is only set if a branch or tag is available for the event type. The ref given 
  /// is fully-formed, meaning that for branches the format is `refs/heads/<branch_name>`, 
  /// for pull requests it is `refs/pull/<pr_number>/merge`, and for tags it is 
  /// `refs/tags/<tag_name>`. 
  /// 
  /// For example, `refs/heads/feature-branch-1`.
  /// 
  /// From the `GITHUB_REF` environment variable.
  external String get ref;

  /// The name of the workflow. If the workflow file doesn't specify a `name`, the value of 
  /// this property is the full path of the workflow file in the repository.
  /// 
  /// From the `GITHUB_WORKFLOW` environment variable.
  external String get workflow;

  /// The name of the action currently running, or the `id` of a step. 
  /// 
  /// GitHub removes special characters, and uses the name `__run` when the current step runs 
  /// a script without an `id`. If you use the same action more than once in the same job, 
  /// the name will include a suffix with the sequence number with underscore before it. 
  /// 
  /// For example, the first script you run will have the name `__run`, and the second script 
  /// will be named `__run_2`. Similarly, the second invocation of `actions/checkout` will be 
  /// `actionscheckout2`.
  /// 
  /// From the `GITHUB_ACTION` environment variable.
  external String get action;

  /// The username of the user that triggered the initial workflow run. 
  /// 
  /// If the workflow run is a re-run, this value may differ from `github.triggering_actor`. 
  /// Any workflow re-runs will use the privileges of `github.actor`, even if the actor initiating 
  /// the re-run (`github.triggering_actor`) has different privileges.
  /// 
  /// From the `GITHUB_ACTOR` environment variable.
  external String get actor;

  /// The `job_id` of the current job.
  /// 
  /// **Note:** This context property is set by the Actions runner, and is only available within 
  /// the execution `steps` of a job. Otherwise, the value of this property will be `null`.
  /// 
  /// From the `GITHUB_JOB` environment variable.
  external String get job;

  /// A unique number for each run of a particular workflow in a repository. 
  /// 
  /// This number begins at 1 for the workflow's first run, and increments with each new run. This 
  /// number does not change if you re-run the workflow run.
  /// 
  /// From the `GITHUB_RUN_NUMBER` environment variable.
  external int get runNumber;

  /// A unique number for each workflow run within a repository. 
  /// 
  /// This number does not change if you re-run the workflow run.
  /// 
  /// From the `GITHUB_RUN_ID` environment variable.
  external int get runId;

  /// The URL of the GitHub REST API.
  /// 
  /// From the `GITHUB_API_URL` environment variable.
  external String get apiUrl;

  /// The URL of the GitHub server. 
  /// 
  /// For example: `https://github.com`.
  /// 
  /// From the `GITHUB_SERVER_URL` environment variable.
  external String get serverUrl;

  /// The URL of the GitHub GraphQL API.
  /// 
  /// From the `GITHUB_GRAPHQL_URL` environment variable.
  external String get graphqlUrl;

  /// The issue or pull request which triggered this action.
  external GitHubIssue get issue;

  /// The repo from which this action was run.
  external GitHubRepo get repo;

  /// The name of the base ref or target branch of the pull request in a workflow run. 
  /// 
  /// This is only set when the event that triggers a workflow run is either `pull_request`
  /// or `pull_request_target`. 
  /// 
  /// For example, `main`.
  /// 
  /// From the `GITHUB_BASE_REF` environment variable.
  String? get baseRef => process.getEnv('GITHUB_BASE_REF');

  /// The head ref or source branch of the pull request in a workflow run. 
  /// 
  /// This property is only set when the event that triggers a workflow run is either 
  /// `pull_request` or `pull_request_target`. 
  /// 
  /// For example, feature-branch-1.
  /// 
  /// From the `GITHUB_HEAD_REF` environment variable.
  String? get headRef => process.getEnv('GITHUB_HEAD_REF');

  /// The short ref name of the branch or tag that triggered the workflow run. 
  /// 
  /// This value matches the branch or tag name shown on GitHub. 
  /// 
  /// For example, `feature-branch-1`.
  /// 
  /// From the `GITHUB_REF_NAME` environment variable.
  String get refName => process.getEnv('GITHUB_REF_NAME')!;

  /// The type of ref that triggered the workflow run. 
  /// 
  /// Valid values are `branch` or `tag`.
  /// 
  /// From the `GITHUB_REF_TYPE` environment variable.
  GitHubRefType get refType => GitHubRefType.values.byName(
    process.getEnv('GITHUB_REF_TYPE')!,
  );

  /// A unique number for each attempt of a particular workflow run in a repository. 
  /// 
  /// This number begins at `1` for the workflow run's first attempt, and increments 
  /// with each re-run. 
  /// 
  /// For example, `3`.
  /// 
  /// From the `GITHUB_RUN_ATTEMPT` environment variable.
  int get runAttempt => int.parse(process.getEnv('GITHUB_RUN_ATTEMPT')!);

  /// The URL to this workflow's run.
  String get workflowRunUrl => '$serverUrl/${repo.owner}/${repo.repo}/actions/runs/$runId';
}

enum GitHubRefType { branch, tag }

@JS()
@anonymous
extension type GitHubRepo._(JSObject it) {
  external String get owner;
  external String get repo;
}

@JS()
@anonymous
extension type GitHubIssue._(JSObject it) implements GitHubRepo {
  external int get number;
}

@JS()
@anonymous
extension type WebhookPayload._(JSObject it) implements JSObject {
  @JS('pull_request')
  external PullRequest? get pullRequest;
}

@JS()
@anonymous
extension type PullRequest._(JSObject it) implements JSObject {
  external int get number;
  
  @JS('html_url')
  external String? get htmlUrl;
  external String? get body;
}
