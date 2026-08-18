// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// Deletes every `Blog` from the shared e2e backend in a single paginated pass.
Future<void> purgeAllBlogs() async {
  var deleted = 0;
  var failed = 0;
  GraphQLRequest<PaginatedResult<Blog>>? request = ModelQueries.list<Blog>(
    Blog.classType,
    limit: 1000,
  );

  while (request != null) {
    final res = await Amplify.API.query(request: request).response;
    if (res.hasErrors) {
      fail('Cleanup list query failed: ${res.errors}');
    }
    final data = res.data;
    final blogs = (data?.items ?? const <Blog?>[]).whereType<Blog>().toList();

    for (var i = 0; i < blogs.length; i += 25) {
      final end = (i + 25 < blogs.length) ? i + 25 : blogs.length;
      final results = await Future.wait(
        blogs
            .sublist(i, end)
            .map(
              (blog) => Amplify.API
                  .mutate(
                    request: ModelMutations.deleteById(
                      Blog.classType,
                      blog.modelIdentifier,
                      authorizationMode: APIAuthorizationType.userPools,
                    ),
                  )
                  .response,
            ),
      );
      for (final result in results) {
        result.hasErrors ? failed++ : deleted++;
      }
    }

    request = (data?.hasNextResult ?? false)
        ? data!.requestForNextResult
        : null;
  }

  safePrint('CLEANUP: deleted=$deleted failed=$failed');
}
