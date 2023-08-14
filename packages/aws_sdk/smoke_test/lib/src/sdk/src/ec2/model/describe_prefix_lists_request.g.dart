// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_prefix_lists_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePrefixListsRequest extends DescribePrefixListsRequest {
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

  factory _$DescribePrefixListsRequest(
          [void Function(DescribePrefixListsRequestBuilder)? updates]) =>
      (new DescribePrefixListsRequestBuilder()..update(updates))._build();

  _$DescribePrefixListsRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.prefixListIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribePrefixListsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribePrefixListsRequest', 'maxResults');
  }

  @override
  DescribePrefixListsRequest rebuild(
          void Function(DescribePrefixListsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePrefixListsRequestBuilder toBuilder() =>
      new DescribePrefixListsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePrefixListsRequest &&
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

class DescribePrefixListsRequestBuilder
    implements
        Builder<DescribePrefixListsRequest, DescribePrefixListsRequestBuilder> {
  _$DescribePrefixListsRequest? _$v;

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

  DescribePrefixListsRequestBuilder() {
    DescribePrefixListsRequest._init(this);
  }

  DescribePrefixListsRequestBuilder get _$this {
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
  void replace(DescribePrefixListsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePrefixListsRequest;
  }

  @override
  void update(void Function(DescribePrefixListsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePrefixListsRequest build() => _build();

  _$DescribePrefixListsRequest _build() {
    _$DescribePrefixListsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribePrefixListsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribePrefixListsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribePrefixListsRequest', 'maxResults'),
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
            r'DescribePrefixListsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
