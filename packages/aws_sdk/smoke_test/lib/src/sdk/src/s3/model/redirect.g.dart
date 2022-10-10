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
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, hostName.hashCode), httpRedirectCode.hashCode),
                protocol.hashCode),
            replaceKeyPrefixWith.hashCode),
        replaceKeyWith.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
