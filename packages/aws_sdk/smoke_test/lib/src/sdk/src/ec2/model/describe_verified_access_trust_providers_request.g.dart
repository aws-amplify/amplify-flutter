// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_trust_providers_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessTrustProvidersRequest
    extends DescribeVerifiedAccessTrustProvidersRequest {
  @override
  final _i3.BuiltList<String>? verifiedAccessTrustProviderIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeVerifiedAccessTrustProvidersRequest(
          [void Function(DescribeVerifiedAccessTrustProvidersRequestBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessTrustProvidersRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeVerifiedAccessTrustProvidersRequest._(
      {this.verifiedAccessTrustProviderIds,
      required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeVerifiedAccessTrustProvidersRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVerifiedAccessTrustProvidersRequest', 'dryRun');
  }

  @override
  DescribeVerifiedAccessTrustProvidersRequest rebuild(
          void Function(DescribeVerifiedAccessTrustProvidersRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessTrustProvidersRequestBuilder toBuilder() =>
      new DescribeVerifiedAccessTrustProvidersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessTrustProvidersRequest &&
        verifiedAccessTrustProviderIds ==
            other.verifiedAccessTrustProviderIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProviderIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessTrustProvidersRequestBuilder
    implements
        Builder<DescribeVerifiedAccessTrustProvidersRequest,
            DescribeVerifiedAccessTrustProvidersRequestBuilder> {
  _$DescribeVerifiedAccessTrustProvidersRequest? _$v;

  _i3.ListBuilder<String>? _verifiedAccessTrustProviderIds;
  _i3.ListBuilder<String> get verifiedAccessTrustProviderIds =>
      _$this._verifiedAccessTrustProviderIds ??= new _i3.ListBuilder<String>();
  set verifiedAccessTrustProviderIds(
          _i3.ListBuilder<String>? verifiedAccessTrustProviderIds) =>
      _$this._verifiedAccessTrustProviderIds = verifiedAccessTrustProviderIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVerifiedAccessTrustProvidersRequestBuilder() {
    DescribeVerifiedAccessTrustProvidersRequest._init(this);
  }

  DescribeVerifiedAccessTrustProvidersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProviderIds =
          $v.verifiedAccessTrustProviderIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessTrustProvidersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessTrustProvidersRequest;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessTrustProvidersRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessTrustProvidersRequest build() => _build();

  _$DescribeVerifiedAccessTrustProvidersRequest _build() {
    _$DescribeVerifiedAccessTrustProvidersRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessTrustProvidersRequest._(
              verifiedAccessTrustProviderIds:
                  _verifiedAccessTrustProviderIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVerifiedAccessTrustProvidersRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeVerifiedAccessTrustProvidersRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProviderIds';
        _verifiedAccessTrustProviderIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessTrustProvidersRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
