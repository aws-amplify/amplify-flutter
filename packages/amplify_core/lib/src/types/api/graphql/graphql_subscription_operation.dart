// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class GraphQLSubscriptionOperation<T> {
  const GraphQLSubscriptionOperation({required this.cancel});

  final Function cancel;
}
