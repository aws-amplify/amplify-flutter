// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.mutual_tls_authentication;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MutualTlsAuthentication extends MutualTlsAuthentication {
  @override
  final String? truststoreUri;
  @override
  final String? truststoreVersion;
  @override
  final _i2.BuiltList<String>? truststoreWarnings;

  factory _$MutualTlsAuthentication(
          [void Function(MutualTlsAuthenticationBuilder)? updates]) =>
      (new MutualTlsAuthenticationBuilder()..update(updates))._build();

  _$MutualTlsAuthentication._(
      {this.truststoreUri, this.truststoreVersion, this.truststoreWarnings})
      : super._();

  @override
  MutualTlsAuthentication rebuild(
          void Function(MutualTlsAuthenticationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MutualTlsAuthenticationBuilder toBuilder() =>
      new MutualTlsAuthenticationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MutualTlsAuthentication &&
        truststoreUri == other.truststoreUri &&
        truststoreVersion == other.truststoreVersion &&
        truststoreWarnings == other.truststoreWarnings;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, truststoreUri.hashCode), truststoreVersion.hashCode),
        truststoreWarnings.hashCode));
  }
}

class MutualTlsAuthenticationBuilder
    implements
        Builder<MutualTlsAuthentication, MutualTlsAuthenticationBuilder> {
  _$MutualTlsAuthentication? _$v;

  String? _truststoreUri;
  String? get truststoreUri => _$this._truststoreUri;
  set truststoreUri(String? truststoreUri) =>
      _$this._truststoreUri = truststoreUri;

  String? _truststoreVersion;
  String? get truststoreVersion => _$this._truststoreVersion;
  set truststoreVersion(String? truststoreVersion) =>
      _$this._truststoreVersion = truststoreVersion;

  _i2.ListBuilder<String>? _truststoreWarnings;
  _i2.ListBuilder<String> get truststoreWarnings =>
      _$this._truststoreWarnings ??= new _i2.ListBuilder<String>();
  set truststoreWarnings(_i2.ListBuilder<String>? truststoreWarnings) =>
      _$this._truststoreWarnings = truststoreWarnings;

  MutualTlsAuthenticationBuilder() {
    MutualTlsAuthentication._init(this);
  }

  MutualTlsAuthenticationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _truststoreUri = $v.truststoreUri;
      _truststoreVersion = $v.truststoreVersion;
      _truststoreWarnings = $v.truststoreWarnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MutualTlsAuthentication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MutualTlsAuthentication;
  }

  @override
  void update(void Function(MutualTlsAuthenticationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MutualTlsAuthentication build() => _build();

  _$MutualTlsAuthentication _build() {
    _$MutualTlsAuthentication _$result;
    try {
      _$result = _$v ??
          new _$MutualTlsAuthentication._(
              truststoreUri: truststoreUri,
              truststoreVersion: truststoreVersion,
              truststoreWarnings: _truststoreWarnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'truststoreWarnings';
        _truststoreWarnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MutualTlsAuthentication', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
