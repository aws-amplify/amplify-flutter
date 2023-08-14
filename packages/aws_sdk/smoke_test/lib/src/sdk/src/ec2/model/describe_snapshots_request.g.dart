// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_snapshots_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotsRequest extends DescribeSnapshotsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? ownerIds;
  @override
  final _i3.BuiltList<String>? restorableByUserIds;
  @override
  final _i3.BuiltList<String>? snapshotIds;
  @override
  final bool dryRun;

  factory _$DescribeSnapshotsRequest(
          [void Function(DescribeSnapshotsRequestBuilder)? updates]) =>
      (new DescribeSnapshotsRequestBuilder()..update(updates))._build();

  _$DescribeSnapshotsRequest._(
      {this.filters,
      required this.maxResults,
      this.nextToken,
      this.ownerIds,
      this.restorableByUserIds,
      this.snapshotIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSnapshotsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSnapshotsRequest', 'dryRun');
  }

  @override
  DescribeSnapshotsRequest rebuild(
          void Function(DescribeSnapshotsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotsRequestBuilder toBuilder() =>
      new DescribeSnapshotsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotsRequest &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        ownerIds == other.ownerIds &&
        restorableByUserIds == other.restorableByUserIds &&
        snapshotIds == other.snapshotIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ownerIds.hashCode);
    _$hash = $jc(_$hash, restorableByUserIds.hashCode);
    _$hash = $jc(_$hash, snapshotIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotsRequestBuilder
    implements
        Builder<DescribeSnapshotsRequest, DescribeSnapshotsRequestBuilder> {
  _$DescribeSnapshotsRequest? _$v;

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

  _i3.ListBuilder<String>? _ownerIds;
  _i3.ListBuilder<String> get ownerIds =>
      _$this._ownerIds ??= new _i3.ListBuilder<String>();
  set ownerIds(_i3.ListBuilder<String>? ownerIds) =>
      _$this._ownerIds = ownerIds;

  _i3.ListBuilder<String>? _restorableByUserIds;
  _i3.ListBuilder<String> get restorableByUserIds =>
      _$this._restorableByUserIds ??= new _i3.ListBuilder<String>();
  set restorableByUserIds(_i3.ListBuilder<String>? restorableByUserIds) =>
      _$this._restorableByUserIds = restorableByUserIds;

  _i3.ListBuilder<String>? _snapshotIds;
  _i3.ListBuilder<String> get snapshotIds =>
      _$this._snapshotIds ??= new _i3.ListBuilder<String>();
  set snapshotIds(_i3.ListBuilder<String>? snapshotIds) =>
      _$this._snapshotIds = snapshotIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeSnapshotsRequestBuilder() {
    DescribeSnapshotsRequest._init(this);
  }

  DescribeSnapshotsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _ownerIds = $v.ownerIds?.toBuilder();
      _restorableByUserIds = $v.restorableByUserIds?.toBuilder();
      _snapshotIds = $v.snapshotIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotsRequest;
  }

  @override
  void update(void Function(DescribeSnapshotsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotsRequest build() => _build();

  _$DescribeSnapshotsRequest _build() {
    _$DescribeSnapshotsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSnapshotsRequest._(
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeSnapshotsRequest', 'maxResults'),
              nextToken: nextToken,
              ownerIds: _ownerIds?.build(),
              restorableByUserIds: _restorableByUserIds?.build(),
              snapshotIds: _snapshotIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSnapshotsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'ownerIds';
        _ownerIds?.build();
        _$failedField = 'restorableByUserIds';
        _restorableByUserIds?.build();
        _$failedField = 'snapshotIds';
        _snapshotIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSnapshotsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
