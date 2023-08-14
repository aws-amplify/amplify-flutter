// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_trust_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessTrustProvider extends VerifiedAccessTrustProvider {
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
  @override
  final OidcOptions? oidcOptions;
  @override
  final DeviceOptions? deviceOptions;
  @override
  final String? policyReferenceName;
  @override
  final String? creationTime;
  @override
  final String? lastUpdatedTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$VerifiedAccessTrustProvider(
          [void Function(VerifiedAccessTrustProviderBuilder)? updates]) =>
      (new VerifiedAccessTrustProviderBuilder()..update(updates))._build();

  _$VerifiedAccessTrustProvider._(
      {this.verifiedAccessTrustProviderId,
      this.description,
      this.trustProviderType,
      this.userTrustProviderType,
      this.deviceTrustProviderType,
      this.oidcOptions,
      this.deviceOptions,
      this.policyReferenceName,
      this.creationTime,
      this.lastUpdatedTime,
      this.tags})
      : super._();

  @override
  VerifiedAccessTrustProvider rebuild(
          void Function(VerifiedAccessTrustProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessTrustProviderBuilder toBuilder() =>
      new VerifiedAccessTrustProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessTrustProvider &&
        verifiedAccessTrustProviderId == other.verifiedAccessTrustProviderId &&
        description == other.description &&
        trustProviderType == other.trustProviderType &&
        userTrustProviderType == other.userTrustProviderType &&
        deviceTrustProviderType == other.deviceTrustProviderType &&
        oidcOptions == other.oidcOptions &&
        deviceOptions == other.deviceOptions &&
        policyReferenceName == other.policyReferenceName &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProviderId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, trustProviderType.hashCode);
    _$hash = $jc(_$hash, userTrustProviderType.hashCode);
    _$hash = $jc(_$hash, deviceTrustProviderType.hashCode);
    _$hash = $jc(_$hash, oidcOptions.hashCode);
    _$hash = $jc(_$hash, deviceOptions.hashCode);
    _$hash = $jc(_$hash, policyReferenceName.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessTrustProviderBuilder
    implements
        Builder<VerifiedAccessTrustProvider,
            VerifiedAccessTrustProviderBuilder> {
  _$VerifiedAccessTrustProvider? _$v;

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

  OidcOptionsBuilder? _oidcOptions;
  OidcOptionsBuilder get oidcOptions =>
      _$this._oidcOptions ??= new OidcOptionsBuilder();
  set oidcOptions(OidcOptionsBuilder? oidcOptions) =>
      _$this._oidcOptions = oidcOptions;

  DeviceOptionsBuilder? _deviceOptions;
  DeviceOptionsBuilder get deviceOptions =>
      _$this._deviceOptions ??= new DeviceOptionsBuilder();
  set deviceOptions(DeviceOptionsBuilder? deviceOptions) =>
      _$this._deviceOptions = deviceOptions;

  String? _policyReferenceName;
  String? get policyReferenceName => _$this._policyReferenceName;
  set policyReferenceName(String? policyReferenceName) =>
      _$this._policyReferenceName = policyReferenceName;

  String? _creationTime;
  String? get creationTime => _$this._creationTime;
  set creationTime(String? creationTime) => _$this._creationTime = creationTime;

  String? _lastUpdatedTime;
  String? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(String? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VerifiedAccessTrustProviderBuilder();

  VerifiedAccessTrustProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProviderId = $v.verifiedAccessTrustProviderId;
      _description = $v.description;
      _trustProviderType = $v.trustProviderType;
      _userTrustProviderType = $v.userTrustProviderType;
      _deviceTrustProviderType = $v.deviceTrustProviderType;
      _oidcOptions = $v.oidcOptions?.toBuilder();
      _deviceOptions = $v.deviceOptions?.toBuilder();
      _policyReferenceName = $v.policyReferenceName;
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessTrustProvider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessTrustProvider;
  }

  @override
  void update(void Function(VerifiedAccessTrustProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessTrustProvider build() => _build();

  _$VerifiedAccessTrustProvider _build() {
    _$VerifiedAccessTrustProvider _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessTrustProvider._(
              verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
              description: description,
              trustProviderType: trustProviderType,
              userTrustProviderType: userTrustProviderType,
              deviceTrustProviderType: deviceTrustProviderType,
              oidcOptions: _oidcOptions?.build(),
              deviceOptions: _deviceOptions?.build(),
              policyReferenceName: policyReferenceName,
              creationTime: creationTime,
              lastUpdatedTime: lastUpdatedTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oidcOptions';
        _oidcOptions?.build();
        _$failedField = 'deviceOptions';
        _deviceOptions?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessTrustProvider', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
