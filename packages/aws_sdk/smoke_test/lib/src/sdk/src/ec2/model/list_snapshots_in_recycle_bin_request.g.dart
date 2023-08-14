// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_snapshots_in_recycle_bin_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSnapshotsInRecycleBinRequest
    extends ListSnapshotsInRecycleBinRequest {
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? snapshotIds;
  @override
  final bool dryRun;

  factory _$ListSnapshotsInRecycleBinRequest(
          [void Function(ListSnapshotsInRecycleBinRequestBuilder)? updates]) =>
      (new ListSnapshotsInRecycleBinRequestBuilder()..update(updates))._build();

  _$ListSnapshotsInRecycleBinRequest._(
      {this.maxResults, this.nextToken, this.snapshotIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ListSnapshotsInRecycleBinRequest', 'dryRun');
  }

  @override
  ListSnapshotsInRecycleBinRequest rebuild(
          void Function(ListSnapshotsInRecycleBinRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSnapshotsInRecycleBinRequestBuilder toBuilder() =>
      new ListSnapshotsInRecycleBinRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSnapshotsInRecycleBinRequest &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        snapshotIds == other.snapshotIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, snapshotIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSnapshotsInRecycleBinRequestBuilder
    implements
        Builder<ListSnapshotsInRecycleBinRequest,
            ListSnapshotsInRecycleBinRequestBuilder> {
  _$ListSnapshotsInRecycleBinRequest? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _snapshotIds;
  _i3.ListBuilder<String> get snapshotIds =>
      _$this._snapshotIds ??= new _i3.ListBuilder<String>();
  set snapshotIds(_i3.ListBuilder<String>? snapshotIds) =>
      _$this._snapshotIds = snapshotIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ListSnapshotsInRecycleBinRequestBuilder() {
    ListSnapshotsInRecycleBinRequest._init(this);
  }

  ListSnapshotsInRecycleBinRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _snapshotIds = $v.snapshotIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSnapshotsInRecycleBinRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSnapshotsInRecycleBinRequest;
  }

  @override
  void update(void Function(ListSnapshotsInRecycleBinRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSnapshotsInRecycleBinRequest build() => _build();

  _$ListSnapshotsInRecycleBinRequest _build() {
    _$ListSnapshotsInRecycleBinRequest _$result;
    try {
      _$result = _$v ??
          new _$ListSnapshotsInRecycleBinRequest._(
              maxResults: maxResults,
              nextToken: nextToken,
              snapshotIds: _snapshotIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ListSnapshotsInRecycleBinRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotIds';
        _snapshotIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListSnapshotsInRecycleBinRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
