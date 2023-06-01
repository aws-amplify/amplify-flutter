// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_int_enums_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlIntEnumsOutput extends XmlIntEnumsOutput {
  @override
  final _i2.IntegerEnum? intEnum1;
  @override
  final _i2.IntegerEnum? intEnum2;
  @override
  final _i2.IntegerEnum? intEnum3;
  @override
  final _i3.BuiltList<_i2.IntegerEnum>? intEnumList;
  @override
  final _i3.BuiltSet<_i2.IntegerEnum>? intEnumSet;
  @override
  final _i3.BuiltMap<String, _i2.IntegerEnum>? intEnumMap;

  factory _$XmlIntEnumsOutput(
          [void Function(XmlIntEnumsOutputBuilder)? updates]) =>
      (new XmlIntEnumsOutputBuilder()..update(updates))._build();

  _$XmlIntEnumsOutput._(
      {this.intEnum1,
      this.intEnum2,
      this.intEnum3,
      this.intEnumList,
      this.intEnumSet,
      this.intEnumMap})
      : super._();

  @override
  XmlIntEnumsOutput rebuild(void Function(XmlIntEnumsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlIntEnumsOutputBuilder toBuilder() =>
      new XmlIntEnumsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlIntEnumsOutput &&
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

class XmlIntEnumsOutputBuilder
    implements Builder<XmlIntEnumsOutput, XmlIntEnumsOutputBuilder> {
  _$XmlIntEnumsOutput? _$v;

  _i2.IntegerEnum? _intEnum1;
  _i2.IntegerEnum? get intEnum1 => _$this._intEnum1;
  set intEnum1(_i2.IntegerEnum? intEnum1) => _$this._intEnum1 = intEnum1;

  _i2.IntegerEnum? _intEnum2;
  _i2.IntegerEnum? get intEnum2 => _$this._intEnum2;
  set intEnum2(_i2.IntegerEnum? intEnum2) => _$this._intEnum2 = intEnum2;

  _i2.IntegerEnum? _intEnum3;
  _i2.IntegerEnum? get intEnum3 => _$this._intEnum3;
  set intEnum3(_i2.IntegerEnum? intEnum3) => _$this._intEnum3 = intEnum3;

  _i3.ListBuilder<_i2.IntegerEnum>? _intEnumList;
  _i3.ListBuilder<_i2.IntegerEnum> get intEnumList =>
      _$this._intEnumList ??= new _i3.ListBuilder<_i2.IntegerEnum>();
  set intEnumList(_i3.ListBuilder<_i2.IntegerEnum>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i3.SetBuilder<_i2.IntegerEnum>? _intEnumSet;
  _i3.SetBuilder<_i2.IntegerEnum> get intEnumSet =>
      _$this._intEnumSet ??= new _i3.SetBuilder<_i2.IntegerEnum>();
  set intEnumSet(_i3.SetBuilder<_i2.IntegerEnum>? intEnumSet) =>
      _$this._intEnumSet = intEnumSet;

  _i3.MapBuilder<String, _i2.IntegerEnum>? _intEnumMap;
  _i3.MapBuilder<String, _i2.IntegerEnum> get intEnumMap =>
      _$this._intEnumMap ??= new _i3.MapBuilder<String, _i2.IntegerEnum>();
  set intEnumMap(_i3.MapBuilder<String, _i2.IntegerEnum>? intEnumMap) =>
      _$this._intEnumMap = intEnumMap;

  XmlIntEnumsOutputBuilder() {
    XmlIntEnumsOutput._init(this);
  }

  XmlIntEnumsOutputBuilder get _$this {
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
  void replace(XmlIntEnumsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlIntEnumsOutput;
  }

  @override
  void update(void Function(XmlIntEnumsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlIntEnumsOutput build() => _build();

  _$XmlIntEnumsOutput _build() {
    _$XmlIntEnumsOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlIntEnumsOutput._(
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
            r'XmlIntEnumsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
