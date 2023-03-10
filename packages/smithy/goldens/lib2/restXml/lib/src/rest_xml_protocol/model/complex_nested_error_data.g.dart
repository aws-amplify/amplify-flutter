// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.complex_nested_error_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexNestedErrorData extends ComplexNestedErrorData {
  @override
  final String? foo;

  factory _$ComplexNestedErrorData(
          [void Function(ComplexNestedErrorDataBuilder)? updates]) =>
      (new ComplexNestedErrorDataBuilder()..update(updates))._build();

  _$ComplexNestedErrorData._({this.foo}) : super._();

  @override
  ComplexNestedErrorData rebuild(
          void Function(ComplexNestedErrorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplexNestedErrorDataBuilder toBuilder() =>
      new ComplexNestedErrorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexNestedErrorData && foo == other.foo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplexNestedErrorDataBuilder
    implements Builder<ComplexNestedErrorData, ComplexNestedErrorDataBuilder> {
  _$ComplexNestedErrorData? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  ComplexNestedErrorDataBuilder() {
    ComplexNestedErrorData._init(this);
  }

  ComplexNestedErrorDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplexNestedErrorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplexNestedErrorData;
  }

  @override
  void update(void Function(ComplexNestedErrorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexNestedErrorData build() => _build();

  _$ComplexNestedErrorData _build() {
    final _$result = _$v ?? new _$ComplexNestedErrorData._(foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
