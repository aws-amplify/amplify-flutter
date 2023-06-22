// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_evaluation_filters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceEvaluationFilters extends ResourceEvaluationFilters {
  @override
  final _i2.EvaluationMode? evaluationMode;
  @override
  final _i3.TimeWindow? timeWindow;
  @override
  final String? evaluationContextIdentifier;

  factory _$ResourceEvaluationFilters(
          [void Function(ResourceEvaluationFiltersBuilder)? updates]) =>
      (new ResourceEvaluationFiltersBuilder()..update(updates))._build();

  _$ResourceEvaluationFilters._(
      {this.evaluationMode, this.timeWindow, this.evaluationContextIdentifier})
      : super._();

  @override
  ResourceEvaluationFilters rebuild(
          void Function(ResourceEvaluationFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceEvaluationFiltersBuilder toBuilder() =>
      new ResourceEvaluationFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceEvaluationFilters &&
        evaluationMode == other.evaluationMode &&
        timeWindow == other.timeWindow &&
        evaluationContextIdentifier == other.evaluationContextIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationMode.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, evaluationContextIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceEvaluationFiltersBuilder
    implements
        Builder<ResourceEvaluationFilters, ResourceEvaluationFiltersBuilder> {
  _$ResourceEvaluationFilters? _$v;

  _i2.EvaluationMode? _evaluationMode;
  _i2.EvaluationMode? get evaluationMode => _$this._evaluationMode;
  set evaluationMode(_i2.EvaluationMode? evaluationMode) =>
      _$this._evaluationMode = evaluationMode;

  _i3.TimeWindowBuilder? _timeWindow;
  _i3.TimeWindowBuilder get timeWindow =>
      _$this._timeWindow ??= new _i3.TimeWindowBuilder();
  set timeWindow(_i3.TimeWindowBuilder? timeWindow) =>
      _$this._timeWindow = timeWindow;

  String? _evaluationContextIdentifier;
  String? get evaluationContextIdentifier =>
      _$this._evaluationContextIdentifier;
  set evaluationContextIdentifier(String? evaluationContextIdentifier) =>
      _$this._evaluationContextIdentifier = evaluationContextIdentifier;

  ResourceEvaluationFiltersBuilder() {
    ResourceEvaluationFilters._init(this);
  }

  ResourceEvaluationFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationMode = $v.evaluationMode;
      _timeWindow = $v.timeWindow?.toBuilder();
      _evaluationContextIdentifier = $v.evaluationContextIdentifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceEvaluationFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceEvaluationFilters;
  }

  @override
  void update(void Function(ResourceEvaluationFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceEvaluationFilters build() => _build();

  _$ResourceEvaluationFilters _build() {
    _$ResourceEvaluationFilters _$result;
    try {
      _$result = _$v ??
          new _$ResourceEvaluationFilters._(
              evaluationMode: evaluationMode,
              timeWindow: _timeWindow?.build(),
              evaluationContextIdentifier: evaluationContextIdentifier);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeWindow';
        _timeWindow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceEvaluationFilters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
