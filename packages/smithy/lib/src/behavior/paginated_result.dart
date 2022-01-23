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
