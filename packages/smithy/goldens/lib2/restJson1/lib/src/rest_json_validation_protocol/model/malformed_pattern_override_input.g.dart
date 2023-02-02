// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_pattern_override_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPatternOverrideInput extends MalformedPatternOverrideInput {
  @override
  final _i4.BuiltList<String>? list;
  @override
  final _i4.BuiltMap<String, String>? map;
  @override
  final String? string;
  @override
  final _i3.PatternUnionOverride? union;

  factory _$MalformedPatternOverrideInput(
          [void Function(MalformedPatternOverrideInputBuilder)? updates]) =>
      (new MalformedPatternOverrideInputBuilder()..update(updates))._build();

  _$MalformedPatternOverrideInput._(
      {this.list, this.map, this.string, this.union})
      : super._();

  @override
  MalformedPatternOverrideInput rebuild(
          void Function(MalformedPatternOverrideInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedPatternOverrideInputBuilder toBuilder() =>
      new MalformedPatternOverrideInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedPatternOverrideInput &&
        list == other.list &&
        map == other.map &&
        string == other.string &&
        union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, map.hashCode);
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, union.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedPatternOverrideInputBuilder
    implements
        Builder<MalformedPatternOverrideInput,
            MalformedPatternOverrideInputBuilder> {
  _$MalformedPatternOverrideInput? _$v;

  _i4.ListBuilder<String>? _list;
  _i4.ListBuilder<String> get list =>
      _$this._list ??= new _i4.ListBuilder<String>();
  set list(_i4.ListBuilder<String>? list) => _$this._list = list;

  _i4.MapBuilder<String, String>? _map;
  _i4.MapBuilder<String, String> get map =>
      _$this._map ??= new _i4.MapBuilder<String, String>();
  set map(_i4.MapBuilder<String, String>? map) => _$this._map = map;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  _i3.PatternUnionOverride? _union;
  _i3.PatternUnionOverride? get union => _$this._union;
  set union(_i3.PatternUnionOverride? union) => _$this._union = union;

  MalformedPatternOverrideInputBuilder() {
    MalformedPatternOverrideInput._init(this);
  }

  MalformedPatternOverrideInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _string = $v.string;
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedPatternOverrideInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedPatternOverrideInput;
  }

  @override
  void update(void Function(MalformedPatternOverrideInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedPatternOverrideInput build() => _build();

  _$MalformedPatternOverrideInput _build() {
    _$MalformedPatternOverrideInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedPatternOverrideInput._(
              list: _list?.build(),
              map: _map?.build(),
              string: string,
              union: union);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'map';
        _map?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedPatternOverrideInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
