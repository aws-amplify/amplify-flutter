// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.time_tolive_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeToliveSpecification extends TimeToliveSpecification {
  @override
  final String attributeName;
  @override
  final bool enabled;

  factory _$TimeToliveSpecification(
          [void Function(TimeToliveSpecificationBuilder)? updates]) =>
      (new TimeToliveSpecificationBuilder()..update(updates))._build();

  _$TimeToliveSpecification._(
      {required this.attributeName, required this.enabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeName, r'TimeToliveSpecification', 'attributeName');
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'TimeToliveSpecification', 'enabled');
  }

  @override
  TimeToliveSpecification rebuild(
          void Function(TimeToliveSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeToliveSpecificationBuilder toBuilder() =>
      new TimeToliveSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeToliveSpecification &&
        attributeName == other.attributeName &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributeName.hashCode), enabled.hashCode));
  }
}

class TimeToliveSpecificationBuilder
    implements
        Builder<TimeToliveSpecification, TimeToliveSpecificationBuilder> {
  _$TimeToliveSpecification? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  TimeToliveSpecificationBuilder() {
    TimeToliveSpecification._init(this);
  }

  TimeToliveSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeToliveSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeToliveSpecification;
  }

  @override
  void update(void Function(TimeToliveSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeToliveSpecification build() => _build();

  _$TimeToliveSpecification _build() {
    final _$result = _$v ??
        new _$TimeToliveSpecification._(
            attributeName: BuiltValueNullFieldError.checkNotNull(
                attributeName, r'TimeToliveSpecification', 'attributeName'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'TimeToliveSpecification', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
