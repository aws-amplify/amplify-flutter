// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_enum_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedEnumInput extends MalformedEnumInput {
  @override
  final EnumString? string;
  @override
  final EnumTraitString? stringWithEnumTrait;
  @override
  final _i3.BuiltList<EnumString>? list;
  @override
  final _i3.BuiltMap<EnumString, EnumString>? map;
  @override
  final EnumUnion? union;

  factory _$MalformedEnumInput(
          [void Function(MalformedEnumInputBuilder)? updates]) =>
      (new MalformedEnumInputBuilder()..update(updates))._build();

  _$MalformedEnumInput._(
      {this.string, this.stringWithEnumTrait, this.list, this.map, this.union})
      : super._();

  @override
  MalformedEnumInput rebuild(
          void Function(MalformedEnumInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedEnumInputBuilder toBuilder() =>
      new MalformedEnumInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedEnumInput &&
        string == other.string &&
        stringWithEnumTrait == other.stringWithEnumTrait &&
        list == other.list &&
        map == other.map &&
        union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, stringWithEnumTrait.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, map.hashCode);
    _$hash = $jc(_$hash, union.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedEnumInputBuilder
    implements Builder<MalformedEnumInput, MalformedEnumInputBuilder> {
  _$MalformedEnumInput? _$v;

  EnumString? _string;
  EnumString? get string => _$this._string;
  set string(EnumString? string) => _$this._string = string;

  EnumTraitString? _stringWithEnumTrait;
  EnumTraitString? get stringWithEnumTrait => _$this._stringWithEnumTrait;
  set stringWithEnumTrait(EnumTraitString? stringWithEnumTrait) =>
      _$this._stringWithEnumTrait = stringWithEnumTrait;

  _i3.ListBuilder<EnumString>? _list;
  _i3.ListBuilder<EnumString> get list =>
      _$this._list ??= new _i3.ListBuilder<EnumString>();
  set list(_i3.ListBuilder<EnumString>? list) => _$this._list = list;

  _i3.MapBuilder<EnumString, EnumString>? _map;
  _i3.MapBuilder<EnumString, EnumString> get map =>
      _$this._map ??= new _i3.MapBuilder<EnumString, EnumString>();
  set map(_i3.MapBuilder<EnumString, EnumString>? map) => _$this._map = map;

  EnumUnion? _union;
  EnumUnion? get union => _$this._union;
  set union(EnumUnion? union) => _$this._union = union;

  MalformedEnumInputBuilder();

  MalformedEnumInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _stringWithEnumTrait = $v.stringWithEnumTrait;
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedEnumInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedEnumInput;
  }

  @override
  void update(void Function(MalformedEnumInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedEnumInput build() => _build();

  _$MalformedEnumInput _build() {
    _$MalformedEnumInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedEnumInput._(
              string: string,
              stringWithEnumTrait: stringWithEnumTrait,
              list: _list?.build(),
              map: _map?.build(),
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
            r'MalformedEnumInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
