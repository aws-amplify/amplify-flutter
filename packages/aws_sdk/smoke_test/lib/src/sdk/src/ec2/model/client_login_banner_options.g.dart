// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_login_banner_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientLoginBannerOptions extends ClientLoginBannerOptions {
  @override
  final bool enabled;
  @override
  final String? bannerText;

  factory _$ClientLoginBannerOptions(
          [void Function(ClientLoginBannerOptionsBuilder)? updates]) =>
      (new ClientLoginBannerOptionsBuilder()..update(updates))._build();

  _$ClientLoginBannerOptions._({required this.enabled, this.bannerText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ClientLoginBannerOptions', 'enabled');
  }

  @override
  ClientLoginBannerOptions rebuild(
          void Function(ClientLoginBannerOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientLoginBannerOptionsBuilder toBuilder() =>
      new ClientLoginBannerOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientLoginBannerOptions &&
        enabled == other.enabled &&
        bannerText == other.bannerText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, bannerText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientLoginBannerOptionsBuilder
    implements
        Builder<ClientLoginBannerOptions, ClientLoginBannerOptionsBuilder> {
  _$ClientLoginBannerOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _bannerText;
  String? get bannerText => _$this._bannerText;
  set bannerText(String? bannerText) => _$this._bannerText = bannerText;

  ClientLoginBannerOptionsBuilder() {
    ClientLoginBannerOptions._init(this);
  }

  ClientLoginBannerOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _bannerText = $v.bannerText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientLoginBannerOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientLoginBannerOptions;
  }

  @override
  void update(void Function(ClientLoginBannerOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientLoginBannerOptions build() => _build();

  _$ClientLoginBannerOptions _build() {
    final _$result = _$v ??
        new _$ClientLoginBannerOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ClientLoginBannerOptions', 'enabled'),
            bannerText: bannerText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
