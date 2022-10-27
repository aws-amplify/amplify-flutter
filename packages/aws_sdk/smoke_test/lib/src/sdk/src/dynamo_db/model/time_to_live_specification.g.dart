// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.time_to_live_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeToLiveSpecification extends TimeToLiveSpecification {
  @override
  final String attributeName;
  @override
  final bool enabled;

  factory _$TimeToLiveSpecification(
          [void Function(TimeToLiveSpecificationBuilder)? updates]) =>
      (new TimeToLiveSpecificationBuilder()..update(updates))._build();

  _$TimeToLiveSpecification._(
      {required this.attributeName, required this.enabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeName, r'TimeToLiveSpecification', 'attributeName');
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'TimeToLiveSpecification', 'enabled');
  }

  @override
  TimeToLiveSpecification rebuild(
          void Function(TimeToLiveSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeToLiveSpecificationBuilder toBuilder() =>
      new TimeToLiveSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeToLiveSpecification &&
        attributeName == other.attributeName &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributeName.hashCode), enabled.hashCode));
  }
}

class TimeToLiveSpecificationBuilder
    implements
        Builder<TimeToLiveSpecification, TimeToLiveSpecificationBuilder> {
  _$TimeToLiveSpecification? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  TimeToLiveSpecificationBuilder() {
    TimeToLiveSpecification._init(this);
  }

  TimeToLiveSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeToLiveSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeToLiveSpecification;
  }

  @override
  void update(void Function(TimeToLiveSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeToLiveSpecification build() => _build();

  _$TimeToLiveSpecification _build() {
    final _$result = _$v ??
        new _$TimeToLiveSpecification._(
            attributeName: BuiltValueNullFieldError.checkNotNull(
                attributeName, r'TimeToLiveSpecification', 'attributeName'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'TimeToLiveSpecification', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
