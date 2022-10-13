// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

class PaginatedResult<Items, PageSize> {
  const PaginatedResult(
    this.items, {
    required this.hasNext,
    required Future<PaginatedResult<Items, PageSize>> Function([PageSize?])
        next,
  }) : _next = next;

  final Items items;
  final bool hasNext;
  final Future<PaginatedResult<Items, PageSize>> Function([PageSize?]) _next;

  /// Retrieves the next set of results.
  Future<PaginatedResult<Items, PageSize>> next([PageSize? pageSize]) =>
      _next(pageSize);
}
