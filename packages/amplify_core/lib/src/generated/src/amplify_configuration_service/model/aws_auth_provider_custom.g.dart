// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_provider_custom.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthProviderCustom extends AWSAuthProviderCustom {
  @override
  final String developerProvidedName;

  factory _$AWSAuthProviderCustom(
          [void Function(AWSAuthProviderCustomBuilder)? updates]) =>
      (new AWSAuthProviderCustomBuilder()..update(updates))._build();

  _$AWSAuthProviderCustom._({required this.developerProvidedName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(developerProvidedName,
        r'AWSAuthProviderCustom', 'developerProvidedName');
  }

  @override
  AWSAuthProviderCustom rebuild(
          void Function(AWSAuthProviderCustomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthProviderCustomBuilder toBuilder() =>
      new AWSAuthProviderCustomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthProviderCustom &&
        developerProvidedName == other.developerProvidedName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, developerProvidedName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAuthProviderCustomBuilder
    implements Builder<AWSAuthProviderCustom, AWSAuthProviderCustomBuilder> {
  _$AWSAuthProviderCustom? _$v;

  String? _developerProvidedName;
  String? get developerProvidedName => _$this._developerProvidedName;
  set developerProvidedName(String? developerProvidedName) =>
      _$this._developerProvidedName = developerProvidedName;

  AWSAuthProviderCustomBuilder() {
    AWSAuthProviderCustom._init(this);
  }

  AWSAuthProviderCustomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _developerProvidedName = $v.developerProvidedName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthProviderCustom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthProviderCustom;
  }

  @override
  void update(void Function(AWSAuthProviderCustomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthProviderCustom build() => _build();

  _$AWSAuthProviderCustom _build() {
    final _$result = _$v ??
        new _$AWSAuthProviderCustom._(
            developerProvidedName: BuiltValueNullFieldError.checkNotNull(
                developerProvidedName,
                r'AWSAuthProviderCustom',
                'developerProvidedName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
