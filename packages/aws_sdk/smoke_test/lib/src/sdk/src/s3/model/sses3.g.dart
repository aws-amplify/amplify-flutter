// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.sses3;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Sses3 extends Sses3 {
  factory _$Sses3([void Function(Sses3Builder)? updates]) =>
      (new Sses3Builder()..update(updates))._build();

  _$Sses3._() : super._();

  @override
  Sses3 rebuild(void Function(Sses3Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Sses3Builder toBuilder() => new Sses3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sses3;
  }

  @override
  int get hashCode {
    return 662058572;
  }
}

class Sses3Builder implements Builder<Sses3, Sses3Builder> {
  _$Sses3? _$v;

  Sses3Builder() {
    Sses3._init(this);
  }

  @override
  void replace(Sses3 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sses3;
  }

  @override
  void update(void Function(Sses3Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sses3 build() => _build();

  _$Sses3 _build() {
    final _$result = _$v ?? new _$Sses3._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
