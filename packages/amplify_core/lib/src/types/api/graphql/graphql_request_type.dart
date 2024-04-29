// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

enum GraphQLRequestType { query, mutation, subscription }

enum GraphQLRequestOperation {
  get,
  list,
  search,
  create,
  update,
  delete,
  onCreate,
  onUpdate,
  onDelete
}
