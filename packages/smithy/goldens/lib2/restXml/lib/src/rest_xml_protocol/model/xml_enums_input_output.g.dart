// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_enums_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlEnumsInputOutput extends XmlEnumsInputOutput {
  @override
  final FooEnum? fooEnum1;
  @override
  final FooEnum? fooEnum2;
  @override
  final FooEnum? fooEnum3;
  @override
  final _i3.BuiltList<FooEnum>? fooEnumList;
  @override
  final _i3.BuiltSet<FooEnum>? fooEnumSet;
  @override
  final _i3.BuiltMap<String, FooEnum>? fooEnumMap;

  factory _$XmlEnumsInputOutput(
          [void Function(XmlEnumsInputOutputBuilder)? updates]) =>
      (new XmlEnumsInputOutputBuilder()..update(updates))._build();

  _$XmlEnumsInputOutput._(
      {this.fooEnum1,
      this.fooEnum2,
      this.fooEnum3,
      this.fooEnumList,
      this.fooEnumSet,
      this.fooEnumMap})
      : super._();

  @override
  XmlEnumsInputOutput rebuild(
          void Function(XmlEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlEnumsInputOutputBuilder toBuilder() =>
      new XmlEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlEnumsInputOutput &&
        fooEnum1 == other.fooEnum1 &&
        fooEnum2 == other.fooEnum2 &&
        fooEnum3 == other.fooEnum3 &&
        fooEnumList == other.fooEnumList &&
        fooEnumSet == other.fooEnumSet &&
        fooEnumMap == other.fooEnumMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fooEnum1.hashCode);
    _$hash = $jc(_$hash, fooEnum2.hashCode);
    _$hash = $jc(_$hash, fooEnum3.hashCode);
    _$hash = $jc(_$hash, fooEnumList.hashCode);
    _$hash = $jc(_$hash, fooEnumSet.hashCode);
    _$hash = $jc(_$hash, fooEnumMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlEnumsInputOutputBuilder
    implements Builder<XmlEnumsInputOutput, XmlEnumsInputOutputBuilder> {
  _$XmlEnumsInputOutput? _$v;

  FooEnum? _fooEnum1;
  FooEnum? get fooEnum1 => _$this._fooEnum1;
  set fooEnum1(FooEnum? fooEnum1) => _$this._fooEnum1 = fooEnum1;

  FooEnum? _fooEnum2;
  FooEnum? get fooEnum2 => _$this._fooEnum2;
  set fooEnum2(FooEnum? fooEnum2) => _$this._fooEnum2 = fooEnum2;

  FooEnum? _fooEnum3;
  FooEnum? get fooEnum3 => _$this._fooEnum3;
  set fooEnum3(FooEnum? fooEnum3) => _$this._fooEnum3 = fooEnum3;

  _i3.ListBuilder<FooEnum>? _fooEnumList;
  _i3.ListBuilder<FooEnum> get fooEnumList =>
      _$this._fooEnumList ??= new _i3.ListBuilder<FooEnum>();
  set fooEnumList(_i3.ListBuilder<FooEnum>? fooEnumList) =>
      _$this._fooEnumList = fooEnumList;

  _i3.SetBuilder<FooEnum>? _fooEnumSet;
  _i3.SetBuilder<FooEnum> get fooEnumSet =>
      _$this._fooEnumSet ??= new _i3.SetBuilder<FooEnum>();
  set fooEnumSet(_i3.SetBuilder<FooEnum>? fooEnumSet) =>
      _$this._fooEnumSet = fooEnumSet;

  _i3.MapBuilder<String, FooEnum>? _fooEnumMap;
  _i3.MapBuilder<String, FooEnum> get fooEnumMap =>
      _$this._fooEnumMap ??= new _i3.MapBuilder<String, FooEnum>();
  set fooEnumMap(_i3.MapBuilder<String, FooEnum>? fooEnumMap) =>
      _$this._fooEnumMap = fooEnumMap;

  XmlEnumsInputOutputBuilder();

  XmlEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fooEnum1 = $v.fooEnum1;
      _fooEnum2 = $v.fooEnum2;
      _fooEnum3 = $v.fooEnum3;
      _fooEnumList = $v.fooEnumList?.toBuilder();
      _fooEnumSet = $v.fooEnumSet?.toBuilder();
      _fooEnumMap = $v.fooEnumMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlEnumsInputOutput;
  }

  @override
  void update(void Function(XmlEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlEnumsInputOutput build() => _build();

  _$XmlEnumsInputOutput _build() {
    _$XmlEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlEnumsInputOutput._(
              fooEnum1: fooEnum1,
              fooEnum2: fooEnum2,
              fooEnum3: fooEnum3,
              fooEnumList: _fooEnumList?.build(),
              fooEnumSet: _fooEnumSet?.build(),
              fooEnumMap: _fooEnumMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooEnumList';
        _fooEnumList?.build();
        _$failedField = 'fooEnumSet';
        _fooEnumSet?.build();
        _$failedField = 'fooEnumMap';
        _fooEnumMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
