// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_enum_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedEnumInput extends MalformedEnumInput {
  @override
  final _i3.EnumString? string;
  @override
  final _i5.BuiltList<_i3.EnumString>? list;
  @override
  final _i5.BuiltMap<_i3.EnumString, _i3.EnumString>? map;
  @override
  final _i4.EnumUnion? union;

  factory _$MalformedEnumInput(
          [void Function(MalformedEnumInputBuilder)? updates]) =>
      (new MalformedEnumInputBuilder()..update(updates))._build();

  _$MalformedEnumInput._({this.string, this.list, this.map, this.union})
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
        list == other.list &&
        map == other.map &&
        union == other.union;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
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

  _i3.EnumString? _string;
  _i3.EnumString? get string => _$this._string;
  set string(_i3.EnumString? string) => _$this._string = string;

  _i5.ListBuilder<_i3.EnumString>? _list;
  _i5.ListBuilder<_i3.EnumString> get list =>
      _$this._list ??= new _i5.ListBuilder<_i3.EnumString>();
  set list(_i5.ListBuilder<_i3.EnumString>? list) => _$this._list = list;

  _i5.MapBuilder<_i3.EnumString, _i3.EnumString>? _map;
  _i5.MapBuilder<_i3.EnumString, _i3.EnumString> get map =>
      _$this._map ??= new _i5.MapBuilder<_i3.EnumString, _i3.EnumString>();
  set map(_i5.MapBuilder<_i3.EnumString, _i3.EnumString>? map) =>
      _$this._map = map;

  _i4.EnumUnion? _union;
  _i4.EnumUnion? get union => _$this._union;
  set union(_i4.EnumUnion? union) => _$this._union = union;

  MalformedEnumInputBuilder() {
    MalformedEnumInput._init(this);
  }

  MalformedEnumInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
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
