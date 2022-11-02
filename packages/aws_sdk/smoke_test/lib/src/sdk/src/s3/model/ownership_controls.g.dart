// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.ownership_controls;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OwnershipControls extends OwnershipControls {
  @override
  final _i3.BuiltList<_i2.OwnershipControlsRule> rules;

  factory _$OwnershipControls(
          [void Function(OwnershipControlsBuilder)? updates]) =>
      (new OwnershipControlsBuilder()..update(updates))._build();

  _$OwnershipControls._({required this.rules}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rules, r'OwnershipControls', 'rules');
  }

  @override
  OwnershipControls rebuild(void Function(OwnershipControlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnershipControlsBuilder toBuilder() =>
      new OwnershipControlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipControls && rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rules.hashCode));
  }
}

class OwnershipControlsBuilder
    implements Builder<OwnershipControls, OwnershipControlsBuilder> {
  _$OwnershipControls? _$v;

  _i3.ListBuilder<_i2.OwnershipControlsRule>? _rules;
  _i3.ListBuilder<_i2.OwnershipControlsRule> get rules =>
      _$this._rules ??= new _i3.ListBuilder<_i2.OwnershipControlsRule>();
  set rules(_i3.ListBuilder<_i2.OwnershipControlsRule>? rules) =>
      _$this._rules = rules;

  OwnershipControlsBuilder() {
    OwnershipControls._init(this);
  }

  OwnershipControlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnershipControls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OwnershipControls;
  }

  @override
  void update(void Function(OwnershipControlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnershipControls build() => _build();

  _$OwnershipControls _build() {
    _$OwnershipControls _$result;
    try {
      _$result = _$v ?? new _$OwnershipControls._(rules: rules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OwnershipControls', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
