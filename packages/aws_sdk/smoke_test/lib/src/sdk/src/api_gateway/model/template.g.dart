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
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
