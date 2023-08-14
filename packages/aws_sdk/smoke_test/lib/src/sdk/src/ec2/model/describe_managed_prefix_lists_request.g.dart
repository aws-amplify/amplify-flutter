// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_managed_prefix_lists_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeManagedPrefixListsRequest
    extends DescribeManagedPrefixListsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? prefixListIds;

  factory _$DescribeManagedPrefixListsRequest(
          [void Function(DescribeManagedPrefixListsRequestBuilder)? updates]) =>
      (new DescribeManagedPrefixListsRequestBuilder()..update(updates))
          ._build();

  _$DescribeManagedPrefixListsRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.prefixListIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeManagedPrefixListsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeManagedPrefixListsRequest', 'maxResults');
  }

  @override
  DescribeManagedPrefixListsRequest rebuild(
          void Function(DescribeManagedPrefixListsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeManagedPrefixListsRequestBuilder toBuilder() =>
      new DescribeManagedPrefixListsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeManagedPrefixListsRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        prefixListIds == other.prefixListIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, prefixListIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeManagedPrefixListsRequestBuilder
    implements
        Builder<DescribeManagedPrefixListsRequest,
            DescribeManagedPrefixListsRequestBuilder> {
  _$DescribeManagedPrefixListsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _prefixListIds;
  _i3.ListBuilder<String> get prefixListIds =>
      _$this._prefixListIds ??= new _i3.ListBuilder<String>();
  set prefixListIds(_i3.ListBuilder<String>? prefixListIds) =>
      _$this._prefixListIds = prefixListIds;

  DescribeManagedPrefixListsRequestBuilder() {
    DescribeManagedPrefixListsRequest._init(this);
  }

  DescribeManagedPrefixListsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _prefixListIds = $v.prefixListIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeManagedPrefixListsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeManagedPrefixListsRequest;
  }

  @override
  void update(
      void Function(DescribeManagedPrefixListsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeManagedPrefixListsRequest build() => _build();

  _$DescribeManagedPrefixListsRequest _build() {
    _$DescribeManagedPrefixListsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeManagedPrefixListsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeManagedPrefixListsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeManagedPrefixListsRequest', 'maxResults'),
              nextToken: nextToken,
              prefixListIds: _prefixListIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'prefixListIds';
        _prefixListIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeManagedPrefixListsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
