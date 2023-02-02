// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.redirect;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Redirect extends Redirect {
  @override
  final String? hostName;
  @override
  final String? httpRedirectCode;
  @override
  final _i2.Protocol? protocol;
  @override
  final String? replaceKeyPrefixWith;
  @override
  final String? replaceKeyWith;

  factory _$Redirect([void Function(RedirectBuilder)? updates]) =>
      (new RedirectBuilder()..update(updates))._build();

  _$Redirect._(
      {this.hostName,
      this.httpRedirectCode,
      this.protocol,
      this.replaceKeyPrefixWith,
      this.replaceKeyWith})
      : super._();

  @override
  Redirect rebuild(void Function(RedirectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RedirectBuilder toBuilder() => new RedirectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Redirect &&
        hostName == other.hostName &&
        httpRedirectCode == other.httpRedirectCode &&
        protocol == other.protocol &&
        replaceKeyPrefixWith == other.replaceKeyPrefixWith &&
        replaceKeyWith == other.replaceKeyWith;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostName.hashCode);
    _$hash = $jc(_$hash, httpRedirectCode.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, replaceKeyPrefixWith.hashCode);
    _$hash = $jc(_$hash, replaceKeyWith.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RedirectBuilder implements Builder<Redirect, RedirectBuilder> {
  _$Redirect? _$v;

  String? _hostName;
  String? get hostName => _$this._hostName;
  set hostName(String? hostName) => _$this._hostName = hostName;

  String? _httpRedirectCode;
  String? get httpRedirectCode => _$this._httpRedirectCode;
  set httpRedirectCode(String? httpRedirectCode) =>
      _$this._httpRedirectCode = httpRedirectCode;

  _i2.Protocol? _protocol;
  _i2.Protocol? get protocol => _$this._protocol;
  set protocol(_i2.Protocol? protocol) => _$this._protocol = protocol;

  String? _replaceKeyPrefixWith;
  String? get replaceKeyPrefixWith => _$this._replaceKeyPrefixWith;
  set replaceKeyPrefixWith(String? replaceKeyPrefixWith) =>
      _$this._replaceKeyPrefixWith = replaceKeyPrefixWith;

  String? _replaceKeyWith;
  String? get replaceKeyWith => _$this._replaceKeyWith;
  set replaceKeyWith(String? replaceKeyWith) =>
      _$this._replaceKeyWith = replaceKeyWith;

  RedirectBuilder() {
    Redirect._init(this);
  }

  RedirectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostName = $v.hostName;
      _httpRedirectCode = $v.httpRedirectCode;
      _protocol = $v.protocol;
      _replaceKeyPrefixWith = $v.replaceKeyPrefixWith;
      _replaceKeyWith = $v.replaceKeyWith;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Redirect other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Redirect;
  }

  @override
  void update(void Function(RedirectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Redirect build() => _build();

  _$Redirect _build() {
    final _$result = _$v ??
        new _$Redirect._(
            hostName: hostName,
            httpRedirectCode: httpRedirectCode,
            protocol: protocol,
            replaceKeyPrefixWith: replaceKeyPrefixWith,
            replaceKeyWith: replaceKeyWith);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
