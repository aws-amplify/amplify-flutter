// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.in_app_campaign_schedule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppCampaignSchedule extends InAppCampaignSchedule {
  @override
  final String? endDate;
  @override
  final _i2.CampaignEventFilter? eventFilter;
  @override
  final _i3.QuietTime? quietTime;

  factory _$InAppCampaignSchedule(
          [void Function(InAppCampaignScheduleBuilder)? updates]) =>
      (new InAppCampaignScheduleBuilder()..update(updates))._build();

  _$InAppCampaignSchedule._({this.endDate, this.eventFilter, this.quietTime})
      : super._();

  @override
  InAppCampaignSchedule rebuild(
          void Function(InAppCampaignScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppCampaignScheduleBuilder toBuilder() =>
      new InAppCampaignScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppCampaignSchedule &&
        endDate == other.endDate &&
        eventFilter == other.eventFilter &&
        quietTime == other.quietTime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, endDate.hashCode), eventFilter.hashCode),
        quietTime.hashCode));
  }
}

class InAppCampaignScheduleBuilder
    implements Builder<InAppCampaignSchedule, InAppCampaignScheduleBuilder> {
  _$InAppCampaignSchedule? _$v;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  _i2.CampaignEventFilterBuilder? _eventFilter;
  _i2.CampaignEventFilterBuilder get eventFilter =>
      _$this._eventFilter ??= new _i2.CampaignEventFilterBuilder();
  set eventFilter(_i2.CampaignEventFilterBuilder? eventFilter) =>
      _$this._eventFilter = eventFilter;

  _i3.QuietTimeBuilder? _quietTime;
  _i3.QuietTimeBuilder get quietTime =>
      _$this._quietTime ??= new _i3.QuietTimeBuilder();
  set quietTime(_i3.QuietTimeBuilder? quietTime) =>
      _$this._quietTime = quietTime;

  InAppCampaignScheduleBuilder() {
    InAppCampaignSchedule._init(this);
  }

  InAppCampaignScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endDate = $v.endDate;
      _eventFilter = $v.eventFilter?.toBuilder();
      _quietTime = $v.quietTime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppCampaignSchedule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppCampaignSchedule;
  }

  @override
  void update(void Function(InAppCampaignScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppCampaignSchedule build() => _build();

  _$InAppCampaignSchedule _build() {
    _$InAppCampaignSchedule _$result;
    try {
      _$result = _$v ??
          new _$InAppCampaignSchedule._(
              endDate: endDate,
              eventFilter: _eventFilter?.build(),
              quietTime: _quietTime?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventFilter';
        _eventFilter?.build();
        _$failedField = 'quietTime';
        _quietTime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InAppCampaignSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
