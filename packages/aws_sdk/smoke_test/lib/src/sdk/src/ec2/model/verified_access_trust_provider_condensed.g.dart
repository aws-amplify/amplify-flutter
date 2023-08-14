// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_trust_provider_condensed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessTrustProviderCondensed
    extends VerifiedAccessTrustProviderCondensed {
  @override
  final String? verifiedAccessTrustProviderId;
  @override
  final String? description;
  @override
  final TrustProviderType? trustProviderType;
  @override
  final UserTrustProviderType? userTrustProviderType;
  @override
  final DeviceTrustProviderType? deviceTrustProviderType;

  factory _$VerifiedAccessTrustProviderCondensed(
          [void Function(VerifiedAccessTrustProviderCondensedBuilder)?
              updates]) =>
      (new VerifiedAccessTrustProviderCondensedBuilder()..update(updates))
          ._build();

  _$VerifiedAccessTrustProviderCondensed._(
      {this.verifiedAccessTrustProviderId,
      this.description,
      this.trustProviderType,
      this.userTrustProviderType,
      this.deviceTrustProviderType})
      : super._();

  @override
  VerifiedAccessTrustProviderCondensed rebuild(
          void Function(VerifiedAccessTrustProviderCondensedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessTrustProviderCondensedBuilder toBuilder() =>
      new VerifiedAccessTrustProviderCondensedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessTrustProviderCondensed &&
        verifiedAccessTrustProviderId == other.verifiedAccessTrustProviderId &&
        description == other.description &&
        trustProviderType == other.trustProviderType &&
        userTrustProviderType == other.userTrustProviderType &&
        deviceTrustProviderType == other.deviceTrustProviderType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProviderId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, trustProviderType.hashCode);
    _$hash = $jc(_$hash, userTrustProviderType.hashCode);
    _$hash = $jc(_$hash, deviceTrustProviderType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessTrustProviderCondensedBuilder
    implements
        Builder<VerifiedAccessTrustProviderCondensed,
            VerifiedAccessTrustProviderCondensedBuilder> {
  _$VerifiedAccessTrustProviderCondensed? _$v;

  String? _verifiedAccessTrustProviderId;
  String? get verifiedAccessTrustProviderId =>
      _$this._verifiedAccessTrustProviderId;
  set verifiedAccessTrustProviderId(String? verifiedAccessTrustProviderId) =>
      _$this._verifiedAccessTrustProviderId = verifiedAccessTrustProviderId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TrustProviderType? _trustProviderType;
  TrustProviderType? get trustProviderType => _$this._trustProviderType;
  set trustProviderType(TrustProviderType? trustProviderType) =>
      _$this._trustProviderType = trustProviderType;

  UserTrustProviderType? _userTrustProviderType;
  UserTrustProviderType? get userTrustProviderType =>
      _$this._userTrustProviderType;
  set userTrustProviderType(UserTrustProviderType? userTrustProviderType) =>
      _$this._userTrustProviderType = userTrustProviderType;

  DeviceTrustProviderType? _deviceTrustProviderType;
  DeviceTrustProviderType? get deviceTrustProviderType =>
      _$this._deviceTrustProviderType;
  set deviceTrustProviderType(
          DeviceTrustProviderType? deviceTrustProviderType) =>
      _$this._deviceTrustProviderType = deviceTrustProviderType;

  VerifiedAccessTrustProviderCondensedBuilder();

  VerifiedAccessTrustProviderCondensedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProviderId = $v.verifiedAccessTrustProviderId;
      _description = $v.description;
      _trustProviderType = $v.trustProviderType;
      _userTrustProviderType = $v.userTrustProviderType;
      _deviceTrustProviderType = $v.deviceTrustProviderType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessTrustProviderCondensed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessTrustProviderCondensed;
  }

  @override
  void update(
      void Function(VerifiedAccessTrustProviderCondensedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessTrustProviderCondensed build() => _build();

  _$VerifiedAccessTrustProviderCondensed _build() {
    final _$result = _$v ??
        new _$VerifiedAccessTrustProviderCondensed._(
            verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
            description: description,
            trustProviderType: trustProviderType,
            userTrustProviderType: userTrustProviderType,
            deviceTrustProviderType: deviceTrustProviderType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
