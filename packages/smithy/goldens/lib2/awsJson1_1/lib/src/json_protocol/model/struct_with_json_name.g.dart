// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.struct_with_json_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructWithJsonName extends StructWithJsonName {
  @override
  final String? value;

  factory _$StructWithJsonName(
          [void Function(StructWithJsonNameBuilder)? updates]) =>
      (new StructWithJsonNameBuilder()..update(updates))._build();

  _$StructWithJsonName._({this.value}) : super._();

  @override
  StructWithJsonName rebuild(
          void Function(StructWithJsonNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructWithJsonNameBuilder toBuilder() =>
      new StructWithJsonNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructWithJsonName && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StructWithJsonNameBuilder
    implements Builder<StructWithJsonName, StructWithJsonNameBuilder> {
  _$StructWithJsonName? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  StructWithJsonNameBuilder() {
    StructWithJsonName._init(this);
  }

  StructWithJsonNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructWithJsonName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StructWithJsonName;
  }

  @override
  void update(void Function(StructWithJsonNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructWithJsonName build() => _build();

  _$StructWithJsonName _build() {
    final _$result = _$v ?? new _$StructWithJsonName._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
