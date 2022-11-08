// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.request_progress;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestProgress extends RequestProgress {
  @override
  final bool? enabled;

  factory _$RequestProgress([void Function(RequestProgressBuilder)? updates]) =>
      (new RequestProgressBuilder()..update(updates))._build();

  _$RequestProgress._({this.enabled}) : super._();

  @override
  RequestProgress rebuild(void Function(RequestProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestProgressBuilder toBuilder() =>
      new RequestProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestProgress && enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc(0, enabled.hashCode));
  }
}

class RequestProgressBuilder
    implements Builder<RequestProgress, RequestProgressBuilder> {
  _$RequestProgress? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  RequestProgressBuilder() {
    RequestProgress._init(this);
  }

  RequestProgressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestProgress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestProgress;
  }

  @override
  void update(void Function(RequestProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestProgress build() => _build();

  _$RequestProgress _build() {
    final _$result = _$v ?? new _$RequestProgress._(enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
