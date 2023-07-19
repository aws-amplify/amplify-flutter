// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_disabled_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionDisabledException extends RegionDisabledException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$RegionDisabledException(
          [void Function(RegionDisabledExceptionBuilder)? updates]) =>
      (new RegionDisabledExceptionBuilder()..update(updates))._build();

  _$RegionDisabledException._({this.message, this.headers}) : super._();

  @override
  RegionDisabledException rebuild(
          void Function(RegionDisabledExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionDisabledExceptionBuilder toBuilder() =>
      new RegionDisabledExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionDisabledException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegionDisabledExceptionBuilder
    implements
        Builder<RegionDisabledException, RegionDisabledExceptionBuilder> {
  _$RegionDisabledException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  RegionDisabledExceptionBuilder();

  RegionDisabledExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionDisabledException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionDisabledException;
  }

  @override
  void update(void Function(RegionDisabledExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionDisabledException build() => _build();

  _$RegionDisabledException _build() {
    final _$result = _$v ??
        new _$RegionDisabledException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
