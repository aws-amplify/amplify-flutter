// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class GraphQLSubscriptionOperation<T> {
  final Function cancel;

  const GraphQLSubscriptionOperation({required this.cancel});
}
