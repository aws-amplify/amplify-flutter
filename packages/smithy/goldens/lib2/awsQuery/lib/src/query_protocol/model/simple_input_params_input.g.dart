// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_input_params_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleInputParamsInput extends SimpleInputParamsInput {
  @override
  final String? foo;
  @override
  final String? bar;
  @override
  final bool? baz;
  @override
  final int? bam;
  @override
  final double? floatValue;
  @override
  final double? boo;
  @override
  final _i3.Uint8List? qux;
  @override
  final FooEnum? fooEnum;
  @override
  final IntegerEnum? integerEnum;

  factory _$SimpleInputParamsInput(
          [void Function(SimpleInputParamsInputBuilder)? updates]) =>
      (new SimpleInputParamsInputBuilder()..update(updates))._build();

  _$SimpleInputParamsInput._(
      {this.foo,
      this.bar,
      this.baz,
      this.bam,
      this.floatValue,
      this.boo,
      this.qux,
      this.fooEnum,
      this.integerEnum})
      : super._();

  @override
  SimpleInputParamsInput rebuild(
          void Function(SimpleInputParamsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleInputParamsInputBuilder toBuilder() =>
      new SimpleInputParamsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleInputParamsInput &&
        foo == other.foo &&
        bar == other.bar &&
        baz == other.baz &&
        bam == other.bam &&
        floatValue == other.floatValue &&
        boo == other.boo &&
        qux == other.qux &&
        fooEnum == other.fooEnum &&
        integerEnum == other.integerEnum;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, bar.hashCode);
    _$hash = $jc(_$hash, baz.hashCode);
    _$hash = $jc(_$hash, bam.hashCode);
    _$hash = $jc(_$hash, floatValue.hashCode);
    _$hash = $jc(_$hash, boo.hashCode);
    _$hash = $jc(_$hash, qux.hashCode);
    _$hash = $jc(_$hash, fooEnum.hashCode);
    _$hash = $jc(_$hash, integerEnum.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimpleInputParamsInputBuilder
    implements Builder<SimpleInputParamsInput, SimpleInputParamsInputBuilder> {
  _$SimpleInputParamsInput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  String? _bar;
  String? get bar => _$this._bar;
  set bar(String? bar) => _$this._bar = bar;

  bool? _baz;
  bool? get baz => _$this._baz;
  set baz(bool? baz) => _$this._baz = baz;

  int? _bam;
  int? get bam => _$this._bam;
  set bam(int? bam) => _$this._bam = bam;

  double? _floatValue;
  double? get floatValue => _$this._floatValue;
  set floatValue(double? floatValue) => _$this._floatValue = floatValue;

  double? _boo;
  double? get boo => _$this._boo;
  set boo(double? boo) => _$this._boo = boo;

  _i3.Uint8List? _qux;
  _i3.Uint8List? get qux => _$this._qux;
  set qux(_i3.Uint8List? qux) => _$this._qux = qux;

  FooEnum? _fooEnum;
  FooEnum? get fooEnum => _$this._fooEnum;
  set fooEnum(FooEnum? fooEnum) => _$this._fooEnum = fooEnum;

  IntegerEnum? _integerEnum;
  IntegerEnum? get integerEnum => _$this._integerEnum;
  set integerEnum(IntegerEnum? integerEnum) =>
      _$this._integerEnum = integerEnum;

  SimpleInputParamsInputBuilder();

  SimpleInputParamsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _bar = $v.bar;
      _baz = $v.baz;
      _bam = $v.bam;
      _floatValue = $v.floatValue;
      _boo = $v.boo;
      _qux = $v.qux;
      _fooEnum = $v.fooEnum;
      _integerEnum = $v.integerEnum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleInputParamsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleInputParamsInput;
  }

  @override
  void update(void Function(SimpleInputParamsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleInputParamsInput build() => _build();

  _$SimpleInputParamsInput _build() {
    final _$result = _$v ??
        new _$SimpleInputParamsInput._(
            foo: foo,
            bar: bar,
            baz: baz,
            bam: bam,
            floatValue: floatValue,
            boo: boo,
            qux: qux,
            fooEnum: fooEnum,
            integerEnum: integerEnum);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
