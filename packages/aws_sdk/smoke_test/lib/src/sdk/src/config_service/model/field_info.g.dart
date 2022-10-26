// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.field_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldInfo extends FieldInfo {
  @override
  final String? name;

  factory _$FieldInfo([void Function(FieldInfoBuilder)? updates]) =>
      (new FieldInfoBuilder()..update(updates))._build();

  _$FieldInfo._({this.name}) : super._();

  @override
  FieldInfo rebuild(void Function(FieldInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldInfoBuilder toBuilder() => new FieldInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldInfo && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }
}

class FieldInfoBuilder implements Builder<FieldInfo, FieldInfoBuilder> {
  _$FieldInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FieldInfoBuilder() {
    FieldInfo._init(this);
  }

  FieldInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FieldInfo;
  }

  @override
  void update(void Function(FieldInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldInfo build() => _build();

  _$FieldInfo _build() {
    final _$result = _$v ?? new _$FieldInfo._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
