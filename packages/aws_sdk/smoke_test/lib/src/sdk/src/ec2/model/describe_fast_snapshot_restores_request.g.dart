// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fast_snapshot_restores_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFastSnapshotRestoresRequest
    extends DescribeFastSnapshotRestoresRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeFastSnapshotRestoresRequest(
          [void Function(DescribeFastSnapshotRestoresRequestBuilder)?
              updates]) =>
      (new DescribeFastSnapshotRestoresRequestBuilder()..update(updates))
          ._build();

  _$DescribeFastSnapshotRestoresRequest._(
      {this.filters, this.maxResults, this.nextToken, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFastSnapshotRestoresRequest', 'dryRun');
  }

  @override
  DescribeFastSnapshotRestoresRequest rebuild(
          void Function(DescribeFastSnapshotRestoresRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFastSnapshotRestoresRequestBuilder toBuilder() =>
      new DescribeFastSnapshotRestoresRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFastSnapshotRestoresRequest &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFastSnapshotRestoresRequestBuilder
    implements
        Builder<DescribeFastSnapshotRestoresRequest,
            DescribeFastSnapshotRestoresRequestBuilder> {
  _$DescribeFastSnapshotRestoresRequest? _$v;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeFastSnapshotRestoresRequestBuilder() {
    DescribeFastSnapshotRestoresRequest._init(this);
  }

  DescribeFastSnapshotRestoresRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFastSnapshotRestoresRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFastSnapshotRestoresRequest;
  }

  @override
  void update(
      void Function(DescribeFastSnapshotRestoresRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFastSnapshotRestoresRequest build() => _build();

  _$DescribeFastSnapshotRestoresRequest _build() {
    _$DescribeFastSnapshotRestoresRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeFastSnapshotRestoresRequest._(
              filters: _filters?.build(),
              maxResults: maxResults,
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeFastSnapshotRestoresRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFastSnapshotRestoresRequest',
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
