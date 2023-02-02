// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.campaign_event_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CampaignEventFilter extends CampaignEventFilter {
  @override
  final _i2.EventDimensions dimensions;
  @override
  final _i3.FilterType filterType;

  factory _$CampaignEventFilter(
          [void Function(CampaignEventFilterBuilder)? updates]) =>
      (new CampaignEventFilterBuilder()..update(updates))._build();

  _$CampaignEventFilter._({required this.dimensions, required this.filterType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dimensions, r'CampaignEventFilter', 'dimensions');
    BuiltValueNullFieldError.checkNotNull(
        filterType, r'CampaignEventFilter', 'filterType');
  }

  @override
  CampaignEventFilter rebuild(
          void Function(CampaignEventFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampaignEventFilterBuilder toBuilder() =>
      new CampaignEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampaignEventFilter &&
        dimensions == other.dimensions &&
        filterType == other.filterType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dimensions.hashCode);
    _$hash = $jc(_$hash, filterType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CampaignEventFilterBuilder
    implements Builder<CampaignEventFilter, CampaignEventFilterBuilder> {
  _$CampaignEventFilter? _$v;

  _i2.EventDimensionsBuilder? _dimensions;
  _i2.EventDimensionsBuilder get dimensions =>
      _$this._dimensions ??= new _i2.EventDimensionsBuilder();
  set dimensions(_i2.EventDimensionsBuilder? dimensions) =>
      _$this._dimensions = dimensions;

  _i3.FilterType? _filterType;
  _i3.FilterType? get filterType => _$this._filterType;
  set filterType(_i3.FilterType? filterType) => _$this._filterType = filterType;

  CampaignEventFilterBuilder() {
    CampaignEventFilter._init(this);
  }

  CampaignEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dimensions = $v.dimensions.toBuilder();
      _filterType = $v.filterType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampaignEventFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CampaignEventFilter;
  }

  @override
  void update(void Function(CampaignEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampaignEventFilter build() => _build();

  _$CampaignEventFilter _build() {
    _$CampaignEventFilter _$result;
    try {
      _$result = _$v ??
          new _$CampaignEventFilter._(
              dimensions: dimensions.build(),
              filterType: BuiltValueNullFieldError.checkNotNull(
                  filterType, r'CampaignEventFilter', 'filterType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dimensions';
        dimensions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CampaignEventFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
