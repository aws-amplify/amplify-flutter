// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.mutual_tls_authentication_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MutualTlsAuthenticationInput extends MutualTlsAuthenticationInput {
  @override
  final String? truststoreUri;
  @override
  final String? truststoreVersion;

  factory _$MutualTlsAuthenticationInput(
          [void Function(MutualTlsAuthenticationInputBuilder)? updates]) =>
      (new MutualTlsAuthenticationInputBuilder()..update(updates))._build();

  _$MutualTlsAuthenticationInput._({this.truststoreUri, this.truststoreVersion})
      : super._();

  @override
  MutualTlsAuthenticationInput rebuild(
          void Function(MutualTlsAuthenticationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MutualTlsAuthenticationInputBuilder toBuilder() =>
      new MutualTlsAuthenticationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MutualTlsAuthenticationInput &&
        truststoreUri == other.truststoreUri &&
        truststoreVersion == other.truststoreVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, truststoreUri.hashCode);
    _$hash = $jc(_$hash, truststoreVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MutualTlsAuthenticationInputBuilder
    implements
        Builder<MutualTlsAuthenticationInput,
            MutualTlsAuthenticationInputBuilder> {
  _$MutualTlsAuthenticationInput? _$v;

  String? _truststoreUri;
  String? get truststoreUri => _$this._truststoreUri;
  set truststoreUri(String? truststoreUri) =>
      _$this._truststoreUri = truststoreUri;

  String? _truststoreVersion;
  String? get truststoreVersion => _$this._truststoreVersion;
  set truststoreVersion(String? truststoreVersion) =>
      _$this._truststoreVersion = truststoreVersion;

  MutualTlsAuthenticationInputBuilder() {
    MutualTlsAuthenticationInput._init(this);
  }

  MutualTlsAuthenticationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _truststoreUri = $v.truststoreUri;
      _truststoreVersion = $v.truststoreVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MutualTlsAuthenticationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MutualTlsAuthenticationInput;
  }

  @override
  void update(void Function(MutualTlsAuthenticationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MutualTlsAuthenticationInput build() => _build();

  _$MutualTlsAuthenticationInput _build() {
    final _$result = _$v ??
        new _$MutualTlsAuthenticationInput._(
            truststoreUri: truststoreUri, truststoreVersion: truststoreVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
