// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.template;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Template extends Template {
  @override
  final String? value;

  factory _$Template([void Function(TemplateBuilder)? updates]) =>
      (new TemplateBuilder()..update(updates))._build();

  _$Template._({this.value}) : super._();

  @override
  Template rebuild(void Function(TemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateBuilder toBuilder() => new TemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Template && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }
}

class TemplateBuilder implements Builder<Template, TemplateBuilder> {
  _$Template? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  TemplateBuilder() {
    Template._init(this);
  }

  TemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Template other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Template;
  }

  @override
  void update(void Function(TemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Template build() => _build();

  _$Template _build() {
    final _$result = _$v ?? new _$Template._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
