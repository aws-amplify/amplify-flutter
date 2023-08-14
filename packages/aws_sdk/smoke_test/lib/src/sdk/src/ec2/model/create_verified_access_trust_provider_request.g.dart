// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_trust_provider_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessTrustProviderRequest
    extends CreateVerifiedAccessTrustProviderRequest {
  @override
  final TrustProviderType? trustProviderType;
  @override
  final UserTrustProviderType? userTrustProviderType;
  @override
  final DeviceTrustProviderType? deviceTrustProviderType;
  @override
  final CreateVerifiedAccessTrustProviderOidcOptions? oidcOptions;
  @override
  final CreateVerifiedAccessTrustProviderDeviceOptions? deviceOptions;
  @override
  final String? policyReferenceName;
  @override
  final String? description;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$CreateVerifiedAccessTrustProviderRequest(
          [void Function(CreateVerifiedAccessTrustProviderRequestBuilder)?
              updates]) =>
      (new CreateVerifiedAccessTrustProviderRequestBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessTrustProviderRequest._(
      {this.trustProviderType,
      this.userTrustProviderType,
      this.deviceTrustProviderType,
      this.oidcOptions,
      this.deviceOptions,
      this.policyReferenceName,
      this.description,
      this.tagSpecifications,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVerifiedAccessTrustProviderRequest', 'dryRun');
  }

  @override
  CreateVerifiedAccessTrustProviderRequest rebuild(
          void Function(CreateVerifiedAccessTrustProviderRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessTrustProviderRequestBuilder toBuilder() =>
      new CreateVerifiedAccessTrustProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessTrustProviderRequest &&
        trustProviderType == other.trustProviderType &&
        userTrustProviderType == other.userTrustProviderType &&
        deviceTrustProviderType == other.deviceTrustProviderType &&
        oidcOptions == other.oidcOptions &&
        deviceOptions == other.deviceOptions &&
        policyReferenceName == other.policyReferenceName &&
        description == other.description &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trustProviderType.hashCode);
    _$hash = $jc(_$hash, userTrustProviderType.hashCode);
    _$hash = $jc(_$hash, deviceTrustProviderType.hashCode);
    _$hash = $jc(_$hash, oidcOptions.hashCode);
    _$hash = $jc(_$hash, deviceOptions.hashCode);
    _$hash = $jc(_$hash, policyReferenceName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessTrustProviderRequestBuilder
    implements
        Builder<CreateVerifiedAccessTrustProviderRequest,
            CreateVerifiedAccessTrustProviderRequestBuilder> {
  _$CreateVerifiedAccessTrustProviderRequest? _$v;

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

  CreateVerifiedAccessTrustProviderOidcOptionsBuilder? _oidcOptions;
  CreateVerifiedAccessTrustProviderOidcOptionsBuilder get oidcOptions =>
      _$this._oidcOptions ??=
          new CreateVerifiedAccessTrustProviderOidcOptionsBuilder();
  set oidcOptions(
          CreateVerifiedAccessTrustProviderOidcOptionsBuilder? oidcOptions) =>
      _$this._oidcOptions = oidcOptions;

  CreateVerifiedAccessTrustProviderDeviceOptionsBuilder? _deviceOptions;
  CreateVerifiedAccessTrustProviderDeviceOptionsBuilder get deviceOptions =>
      _$this._deviceOptions ??=
          new CreateVerifiedAccessTrustProviderDeviceOptionsBuilder();
  set deviceOptions(
          CreateVerifiedAccessTrustProviderDeviceOptionsBuilder?
              deviceOptions) =>
      _$this._deviceOptions = deviceOptions;

  String? _policyReferenceName;
  String? get policyReferenceName => _$this._policyReferenceName;
  set policyReferenceName(String? policyReferenceName) =>
      _$this._policyReferenceName = policyReferenceName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateVerifiedAccessTrustProviderRequestBuilder() {
    CreateVerifiedAccessTrustProviderRequest._init(this);
  }

  CreateVerifiedAccessTrustProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trustProviderType = $v.trustProviderType;
      _userTrustProviderType = $v.userTrustProviderType;
      _deviceTrustProviderType = $v.deviceTrustProviderType;
      _oidcOptions = $v.oidcOptions?.toBuilder();
      _deviceOptions = $v.deviceOptions?.toBuilder();
      _policyReferenceName = $v.policyReferenceName;
      _description = $v.description;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessTrustProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessTrustProviderRequest;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessTrustProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessTrustProviderRequest build() => _build();

  _$CreateVerifiedAccessTrustProviderRequest _build() {
    _$CreateVerifiedAccessTrustProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessTrustProviderRequest._(
              trustProviderType: trustProviderType,
              userTrustProviderType: userTrustProviderType,
              deviceTrustProviderType: deviceTrustProviderType,
              oidcOptions: _oidcOptions?.build(),
              deviceOptions: _deviceOptions?.build(),
              policyReferenceName: policyReferenceName,
              description: description,
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'CreateVerifiedAccessTrustProviderRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oidcOptions';
        _oidcOptions?.build();
        _$failedField = 'deviceOptions';
        _deviceOptions?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessTrustProviderRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
