// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_struct.dart';

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
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
