// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_int_enums_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlIntEnumsInputOutput extends XmlIntEnumsInputOutput {
  @override
  final int? intEnum1;
  @override
  final int? intEnum2;
  @override
  final int? intEnum3;
  @override
  final _i3.BuiltList<int>? intEnumList;
  @override
  final _i3.BuiltSet<int>? intEnumSet;
  @override
  final _i3.BuiltMap<String, int>? intEnumMap;

  factory _$XmlIntEnumsInputOutput(
          [void Function(XmlIntEnumsInputOutputBuilder)? updates]) =>
      (new XmlIntEnumsInputOutputBuilder()..update(updates))._build();

  _$XmlIntEnumsInputOutput._(
      {this.intEnum1,
      this.intEnum2,
      this.intEnum3,
      this.intEnumList,
      this.intEnumSet,
      this.intEnumMap})
      : super._();

  @override
  XmlIntEnumsInputOutput rebuild(
          void Function(XmlIntEnumsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlIntEnumsInputOutputBuilder toBuilder() =>
      new XmlIntEnumsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlIntEnumsInputOutput &&
        intEnum1 == other.intEnum1 &&
        intEnum2 == other.intEnum2 &&
        intEnum3 == other.intEnum3 &&
        intEnumList == other.intEnumList &&
        intEnumSet == other.intEnumSet &&
        intEnumMap == other.intEnumMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, intEnum1.hashCode);
    _$hash = $jc(_$hash, intEnum2.hashCode);
    _$hash = $jc(_$hash, intEnum3.hashCode);
    _$hash = $jc(_$hash, intEnumList.hashCode);
    _$hash = $jc(_$hash, intEnumSet.hashCode);
    _$hash = $jc(_$hash, intEnumMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlIntEnumsInputOutputBuilder
    implements Builder<XmlIntEnumsInputOutput, XmlIntEnumsInputOutputBuilder> {
  _$XmlIntEnumsInputOutput? _$v;

  int? _intEnum1;
  int? get intEnum1 => _$this._intEnum1;
  set intEnum1(int? intEnum1) => _$this._intEnum1 = intEnum1;

  int? _intEnum2;
  int? get intEnum2 => _$this._intEnum2;
  set intEnum2(int? intEnum2) => _$this._intEnum2 = intEnum2;

  int? _intEnum3;
  int? get intEnum3 => _$this._intEnum3;
  set intEnum3(int? intEnum3) => _$this._intEnum3 = intEnum3;

  _i3.ListBuilder<int>? _intEnumList;
  _i3.ListBuilder<int> get intEnumList =>
      _$this._intEnumList ??= new _i3.ListBuilder<int>();
  set intEnumList(_i3.ListBuilder<int>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i3.SetBuilder<int>? _intEnumSet;
  _i3.SetBuilder<int> get intEnumSet =>
      _$this._intEnumSet ??= new _i3.SetBuilder<int>();
  set intEnumSet(_i3.SetBuilder<int>? intEnumSet) =>
      _$this._intEnumSet = intEnumSet;

  _i3.MapBuilder<String, int>? _intEnumMap;
  _i3.MapBuilder<String, int> get intEnumMap =>
      _$this._intEnumMap ??= new _i3.MapBuilder<String, int>();
  set intEnumMap(_i3.MapBuilder<String, int>? intEnumMap) =>
      _$this._intEnumMap = intEnumMap;

  XmlIntEnumsInputOutputBuilder();

  XmlIntEnumsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intEnum1 = $v.intEnum1;
      _intEnum2 = $v.intEnum2;
      _intEnum3 = $v.intEnum3;
      _intEnumList = $v.intEnumList?.toBuilder();
      _intEnumSet = $v.intEnumSet?.toBuilder();
      _intEnumMap = $v.intEnumMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlIntEnumsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlIntEnumsInputOutput;
  }

  @override
  void update(void Function(XmlIntEnumsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlIntEnumsInputOutput build() => _build();

  _$XmlIntEnumsInputOutput _build() {
    _$XmlIntEnumsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlIntEnumsInputOutput._(
              intEnum1: intEnum1,
              intEnum2: intEnum2,
              intEnum3: intEnum3,
              intEnumList: _intEnumList?.build(),
              intEnumSet: _intEnumSet?.build(),
              intEnumMap: _intEnumMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'intEnumSet';
        _intEnumSet?.build();
        _$failedField = 'intEnumMap';
        _intEnumMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlIntEnumsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
