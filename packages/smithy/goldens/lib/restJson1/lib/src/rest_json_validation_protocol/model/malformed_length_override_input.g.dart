// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_length_override_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedLengthOverrideInput extends MalformedLengthOverrideInput {
  @override
  final _i3.Uint8List? blob;
  @override
  final String? string;
  @override
  final String? minString;
  @override
  final String? maxString;
  @override
  final _i4.BuiltList<String>? list;
  @override
  final _i4.BuiltListMultimap<String, String>? map;

  factory _$MalformedLengthOverrideInput(
          [void Function(MalformedLengthOverrideInputBuilder)? updates]) =>
      (new MalformedLengthOverrideInputBuilder()..update(updates))._build();

  _$MalformedLengthOverrideInput._(
      {this.blob,
      this.string,
      this.minString,
      this.maxString,
      this.list,
      this.map})
      : super._();

  @override
  MalformedLengthOverrideInput rebuild(
          void Function(MalformedLengthOverrideInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLengthOverrideInputBuilder toBuilder() =>
      new MalformedLengthOverrideInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLengthOverrideInput &&
        blob == other.blob &&
        string == other.string &&
        minString == other.minString &&
        maxString == other.maxString &&
        list == other.list &&
        map == other.map;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blob.hashCode);
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, minString.hashCode);
    _$hash = $jc(_$hash, maxString.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, map.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedLengthOverrideInputBuilder
    implements
        Builder<MalformedLengthOverrideInput,
            MalformedLengthOverrideInputBuilder> {
  _$MalformedLengthOverrideInput? _$v;

  _i3.Uint8List? _blob;
  _i3.Uint8List? get blob => _$this._blob;
  set blob(_i3.Uint8List? blob) => _$this._blob = blob;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  String? _minString;
  String? get minString => _$this._minString;
  set minString(String? minString) => _$this._minString = minString;

  String? _maxString;
  String? get maxString => _$this._maxString;
  set maxString(String? maxString) => _$this._maxString = maxString;

  _i4.ListBuilder<String>? _list;
  _i4.ListBuilder<String> get list =>
      _$this._list ??= new _i4.ListBuilder<String>();
  set list(_i4.ListBuilder<String>? list) => _$this._list = list;

  _i4.ListMultimapBuilder<String, String>? _map;
  _i4.ListMultimapBuilder<String, String> get map =>
      _$this._map ??= new _i4.ListMultimapBuilder<String, String>();
  set map(_i4.ListMultimapBuilder<String, String>? map) => _$this._map = map;

  MalformedLengthOverrideInputBuilder();

  MalformedLengthOverrideInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _string = $v.string;
      _minString = $v.minString;
      _maxString = $v.maxString;
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedLengthOverrideInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLengthOverrideInput;
  }

  @override
  void update(void Function(MalformedLengthOverrideInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedLengthOverrideInput build() => _build();

  _$MalformedLengthOverrideInput _build() {
    _$MalformedLengthOverrideInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedLengthOverrideInput._(
              blob: blob,
              string: string,
              minString: minString,
              maxString: maxString,
              list: _list?.build(),
              map: _map?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'map';
        _map?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedLengthOverrideInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
