// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_regions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeRegionsRequest extends DescribeRegionsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? regionNames;
  @override
  final bool dryRun;
  @override
  final bool allRegions;

  factory _$DescribeRegionsRequest(
          [void Function(DescribeRegionsRequestBuilder)? updates]) =>
      (new DescribeRegionsRequestBuilder()..update(updates))._build();

  _$DescribeRegionsRequest._(
      {this.filters,
      this.regionNames,
      required this.dryRun,
      required this.allRegions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeRegionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        allRegions, r'DescribeRegionsRequest', 'allRegions');
  }

  @override
  DescribeRegionsRequest rebuild(
          void Function(DescribeRegionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeRegionsRequestBuilder toBuilder() =>
      new DescribeRegionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeRegionsRequest &&
        filters == other.filters &&
        regionNames == other.regionNames &&
        dryRun == other.dryRun &&
        allRegions == other.allRegions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, regionNames.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, allRegions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeRegionsRequestBuilder
    implements Builder<DescribeRegionsRequest, DescribeRegionsRequestBuilder> {
  _$DescribeRegionsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _regionNames;
  _i3.ListBuilder<String> get regionNames =>
      _$this._regionNames ??= new _i3.ListBuilder<String>();
  set regionNames(_i3.ListBuilder<String>? regionNames) =>
      _$this._regionNames = regionNames;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _allRegions;
  bool? get allRegions => _$this._allRegions;
  set allRegions(bool? allRegions) => _$this._allRegions = allRegions;

  DescribeRegionsRequestBuilder() {
    DescribeRegionsRequest._init(this);
  }

  DescribeRegionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _regionNames = $v.regionNames?.toBuilder();
      _dryRun = $v.dryRun;
      _allRegions = $v.allRegions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeRegionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeRegionsRequest;
  }

  @override
  void update(void Function(DescribeRegionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeRegionsRequest build() => _build();

  _$DescribeRegionsRequest _build() {
    _$DescribeRegionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeRegionsRequest._(
              filters: _filters?.build(),
              regionNames: _regionNames?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeRegionsRequest', 'dryRun'),
              allRegions: BuiltValueNullFieldError.checkNotNull(
                  allRegions, r'DescribeRegionsRequest', 'allRegions'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'regionNames';
        _regionNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeRegionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
