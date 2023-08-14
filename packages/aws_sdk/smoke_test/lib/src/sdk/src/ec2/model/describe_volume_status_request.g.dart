// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volume_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumeStatusRequest extends DescribeVolumeStatusRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? volumeIds;
  @override
  final bool dryRun;

  factory _$DescribeVolumeStatusRequest(
          [void Function(DescribeVolumeStatusRequestBuilder)? updates]) =>
      (new DescribeVolumeStatusRequestBuilder()..update(updates))._build();

  _$DescribeVolumeStatusRequest._(
      {this.filters,
      required this.maxResults,
      this.nextToken,
      this.volumeIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVolumeStatusRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVolumeStatusRequest', 'dryRun');
  }

  @override
  DescribeVolumeStatusRequest rebuild(
          void Function(DescribeVolumeStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumeStatusRequestBuilder toBuilder() =>
      new DescribeVolumeStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumeStatusRequest &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        volumeIds == other.volumeIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, volumeIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumeStatusRequestBuilder
    implements
        Builder<DescribeVolumeStatusRequest,
            DescribeVolumeStatusRequestBuilder> {
  _$DescribeVolumeStatusRequest? _$v;

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

  _i3.ListBuilder<String>? _volumeIds;
  _i3.ListBuilder<String> get volumeIds =>
      _$this._volumeIds ??= new _i3.ListBuilder<String>();
  set volumeIds(_i3.ListBuilder<String>? volumeIds) =>
      _$this._volumeIds = volumeIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVolumeStatusRequestBuilder() {
    DescribeVolumeStatusRequest._init(this);
  }

  DescribeVolumeStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _volumeIds = $v.volumeIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumeStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumeStatusRequest;
  }

  @override
  void update(void Function(DescribeVolumeStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumeStatusRequest build() => _build();

  _$DescribeVolumeStatusRequest _build() {
    _$DescribeVolumeStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumeStatusRequest._(
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeVolumeStatusRequest', 'maxResults'),
              nextToken: nextToken,
              volumeIds: _volumeIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVolumeStatusRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'volumeIds';
        _volumeIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumeStatusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
