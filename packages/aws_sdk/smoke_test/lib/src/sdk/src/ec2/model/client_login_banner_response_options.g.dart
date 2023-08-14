// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_login_banner_response_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientLoginBannerResponseOptions
    extends ClientLoginBannerResponseOptions {
  @override
  final bool enabled;
  @override
  final String? bannerText;

  factory _$ClientLoginBannerResponseOptions(
          [void Function(ClientLoginBannerResponseOptionsBuilder)? updates]) =>
      (new ClientLoginBannerResponseOptionsBuilder()..update(updates))._build();

  _$ClientLoginBannerResponseOptions._({required this.enabled, this.bannerText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'ClientLoginBannerResponseOptions', 'enabled');
  }

  @override
  ClientLoginBannerResponseOptions rebuild(
          void Function(ClientLoginBannerResponseOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientLoginBannerResponseOptionsBuilder toBuilder() =>
      new ClientLoginBannerResponseOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientLoginBannerResponseOptions &&
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

class ClientLoginBannerResponseOptionsBuilder
    implements
        Builder<ClientLoginBannerResponseOptions,
            ClientLoginBannerResponseOptionsBuilder> {
  _$ClientLoginBannerResponseOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _bannerText;
  String? get bannerText => _$this._bannerText;
  set bannerText(String? bannerText) => _$this._bannerText = bannerText;

  ClientLoginBannerResponseOptionsBuilder() {
    ClientLoginBannerResponseOptions._init(this);
  }

  ClientLoginBannerResponseOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _bannerText = $v.bannerText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientLoginBannerResponseOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientLoginBannerResponseOptions;
  }

  @override
  void update(void Function(ClientLoginBannerResponseOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientLoginBannerResponseOptions build() => _build();

  _$ClientLoginBannerResponseOptions _build() {
    final _$result = _$v ??
        new _$ClientLoginBannerResponseOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'ClientLoginBannerResponseOptions', 'enabled'),
            bannerText: bannerText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
