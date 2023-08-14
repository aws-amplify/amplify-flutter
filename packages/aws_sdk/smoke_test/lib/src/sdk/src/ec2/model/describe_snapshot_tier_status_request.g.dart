// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_snapshot_tier_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotTierStatusRequest
    extends DescribeSnapshotTierStatusRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int? maxResults;

  factory _$DescribeSnapshotTierStatusRequest(
          [void Function(DescribeSnapshotTierStatusRequestBuilder)? updates]) =>
      (new DescribeSnapshotTierStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeSnapshotTierStatusRequest._(
      {this.filters, required this.dryRun, this.nextToken, this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSnapshotTierStatusRequest', 'dryRun');
  }

  @override
  DescribeSnapshotTierStatusRequest rebuild(
          void Function(DescribeSnapshotTierStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotTierStatusRequestBuilder toBuilder() =>
      new DescribeSnapshotTierStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotTierStatusRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotTierStatusRequestBuilder
    implements
        Builder<DescribeSnapshotTierStatusRequest,
            DescribeSnapshotTierStatusRequestBuilder> {
  _$DescribeSnapshotTierStatusRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeSnapshotTierStatusRequestBuilder() {
    DescribeSnapshotTierStatusRequest._init(this);
  }

  DescribeSnapshotTierStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotTierStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotTierStatusRequest;
  }

  @override
  void update(
      void Function(DescribeSnapshotTierStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotTierStatusRequest build() => _build();

  _$DescribeSnapshotTierStatusRequest _build() {
    _$DescribeSnapshotTierStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSnapshotTierStatusRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSnapshotTierStatusRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: maxResults);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSnapshotTierStatusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
