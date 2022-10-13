// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.simple_struct;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleStruct extends SimpleStruct {
  @override
  final String? value;

  factory _$SimpleStruct([void Function(SimpleStructBuilder)? updates]) =>
      (new SimpleStructBuilder()..update(updates))._build();

  _$SimpleStruct._({this.value}) : super._();

  @override
  SimpleStruct rebuild(void Function(SimpleStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleStructBuilder toBuilder() => new SimpleStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleStruct && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }
}

class SimpleStructBuilder
    implements Builder<SimpleStruct, SimpleStructBuilder> {
  _$SimpleStruct? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  SimpleStructBuilder() {
    SimpleStruct._init(this);
  }

  SimpleStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleStruct;
  }

  @override
  void update(void Function(SimpleStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleStruct build() => _build();

  _$SimpleStruct _build() {
    final _$result = _$v ?? new _$SimpleStruct._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
