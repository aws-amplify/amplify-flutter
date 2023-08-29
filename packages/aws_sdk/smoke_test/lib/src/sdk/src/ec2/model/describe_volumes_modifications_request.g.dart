// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volumes_modifications_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumesModificationsRequest
    extends DescribeVolumesModificationsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? volumeIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeVolumesModificationsRequest(
          [void Function(DescribeVolumesModificationsRequestBuilder)?
              updates]) =>
      (new DescribeVolumesModificationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeVolumesModificationsRequest._(
      {required this.dryRun,
      this.volumeIds,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVolumesModificationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVolumesModificationsRequest', 'maxResults');
  }

  @override
  DescribeVolumesModificationsRequest rebuild(
          void Function(DescribeVolumesModificationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumesModificationsRequestBuilder toBuilder() =>
      new DescribeVolumesModificationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumesModificationsRequest &&
        dryRun == other.dryRun &&
        volumeIds == other.volumeIds &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, volumeIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumesModificationsRequestBuilder
    implements
        Builder<DescribeVolumesModificationsRequest,
            DescribeVolumesModificationsRequestBuilder> {
  _$DescribeVolumesModificationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _volumeIds;
  _i3.ListBuilder<String> get volumeIds =>
      _$this._volumeIds ??= new _i3.ListBuilder<String>();
  set volumeIds(_i3.ListBuilder<String>? volumeIds) =>
      _$this._volumeIds = volumeIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeVolumesModificationsRequestBuilder() {
    DescribeVolumesModificationsRequest._init(this);
  }

  DescribeVolumesModificationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _volumeIds = $v.volumeIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumesModificationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumesModificationsRequest;
  }

  @override
  void update(
      void Function(DescribeVolumesModificationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumesModificationsRequest build() => _build();

  _$DescribeVolumesModificationsRequest _build() {
    _$DescribeVolumesModificationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumesModificationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVolumesModificationsRequest', 'dryRun'),
              volumeIds: _volumeIds?.build(),
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVolumesModificationsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumeIds';
        _volumeIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumesModificationsRequest',
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
