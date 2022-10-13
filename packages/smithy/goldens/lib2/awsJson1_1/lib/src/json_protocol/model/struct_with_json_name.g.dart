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
    return $jf($jc(0, value.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
