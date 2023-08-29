// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_trust_provider_device_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessTrustProviderDeviceOptions
    extends CreateVerifiedAccessTrustProviderDeviceOptions {
  @override
  final String? tenantId;

  factory _$CreateVerifiedAccessTrustProviderDeviceOptions(
          [void Function(CreateVerifiedAccessTrustProviderDeviceOptionsBuilder)?
              updates]) =>
      (new CreateVerifiedAccessTrustProviderDeviceOptionsBuilder()
            ..update(updates))
          ._build();

  _$CreateVerifiedAccessTrustProviderDeviceOptions._({this.tenantId})
      : super._();

  @override
  CreateVerifiedAccessTrustProviderDeviceOptions rebuild(
          void Function(CreateVerifiedAccessTrustProviderDeviceOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessTrustProviderDeviceOptionsBuilder toBuilder() =>
      new CreateVerifiedAccessTrustProviderDeviceOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessTrustProviderDeviceOptions &&
        tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessTrustProviderDeviceOptionsBuilder
    implements
        Builder<CreateVerifiedAccessTrustProviderDeviceOptions,
            CreateVerifiedAccessTrustProviderDeviceOptionsBuilder> {
  _$CreateVerifiedAccessTrustProviderDeviceOptions? _$v;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  CreateVerifiedAccessTrustProviderDeviceOptionsBuilder();

  CreateVerifiedAccessTrustProviderDeviceOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessTrustProviderDeviceOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessTrustProviderDeviceOptions;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessTrustProviderDeviceOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessTrustProviderDeviceOptions build() => _build();

  _$CreateVerifiedAccessTrustProviderDeviceOptions _build() {
    final _$result = _$v ??
        new _$CreateVerifiedAccessTrustProviderDeviceOptions._(
            tenantId: tenantId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
