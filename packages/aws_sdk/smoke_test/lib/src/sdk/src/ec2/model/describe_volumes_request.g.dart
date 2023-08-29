// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volumes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumesRequest extends DescribeVolumesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? volumeIds;
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeVolumesRequest(
          [void Function(DescribeVolumesRequestBuilder)? updates]) =>
      (new DescribeVolumesRequestBuilder()..update(updates))._build();

  _$DescribeVolumesRequest._(
      {this.filters,
      this.volumeIds,
      required this.dryRun,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVolumesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVolumesRequest', 'maxResults');
  }

  @override
  DescribeVolumesRequest rebuild(
          void Function(DescribeVolumesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumesRequestBuilder toBuilder() =>
      new DescribeVolumesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumesRequest &&
        filters == other.filters &&
        volumeIds == other.volumeIds &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, volumeIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumesRequestBuilder
    implements Builder<DescribeVolumesRequest, DescribeVolumesRequestBuilder> {
  _$DescribeVolumesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _volumeIds;
  _i3.ListBuilder<String> get volumeIds =>
      _$this._volumeIds ??= new _i3.ListBuilder<String>();
  set volumeIds(_i3.ListBuilder<String>? volumeIds) =>
      _$this._volumeIds = volumeIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVolumesRequestBuilder() {
    DescribeVolumesRequest._init(this);
  }

  DescribeVolumesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _volumeIds = $v.volumeIds?.toBuilder();
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumesRequest;
  }

  @override
  void update(void Function(DescribeVolumesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumesRequest build() => _build();

  _$DescribeVolumesRequest _build() {
    _$DescribeVolumesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumesRequest._(
              filters: _filters?.build(),
              volumeIds: _volumeIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVolumesRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeVolumesRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'volumeIds';
        _volumeIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
