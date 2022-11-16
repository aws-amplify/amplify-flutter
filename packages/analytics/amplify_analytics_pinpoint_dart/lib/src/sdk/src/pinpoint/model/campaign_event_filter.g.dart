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
    return $jf($jc($jc(0, dimensions.hashCode), filterType.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
