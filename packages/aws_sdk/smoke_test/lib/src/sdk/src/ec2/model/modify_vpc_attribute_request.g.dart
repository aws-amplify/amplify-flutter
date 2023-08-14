// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcAttributeRequest extends ModifyVpcAttributeRequest {
  @override
  final AttributeBooleanValue? enableDnsHostnames;
  @override
  final AttributeBooleanValue? enableDnsSupport;
  @override
  final String? vpcId;
  @override
  final AttributeBooleanValue? enableNetworkAddressUsageMetrics;

  factory _$ModifyVpcAttributeRequest(
          [void Function(ModifyVpcAttributeRequestBuilder)? updates]) =>
      (new ModifyVpcAttributeRequestBuilder()..update(updates))._build();

  _$ModifyVpcAttributeRequest._(
      {this.enableDnsHostnames,
      this.enableDnsSupport,
      this.vpcId,
      this.enableNetworkAddressUsageMetrics})
      : super._();

  @override
  ModifyVpcAttributeRequest rebuild(
          void Function(ModifyVpcAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcAttributeRequestBuilder toBuilder() =>
      new ModifyVpcAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcAttributeRequest &&
        enableDnsHostnames == other.enableDnsHostnames &&
        enableDnsSupport == other.enableDnsSupport &&
        vpcId == other.vpcId &&
        enableNetworkAddressUsageMetrics ==
            other.enableNetworkAddressUsageMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enableDnsHostnames.hashCode);
    _$hash = $jc(_$hash, enableDnsSupport.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, enableNetworkAddressUsageMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcAttributeRequestBuilder
    implements
        Builder<ModifyVpcAttributeRequest, ModifyVpcAttributeRequestBuilder> {
  _$ModifyVpcAttributeRequest? _$v;

  AttributeBooleanValueBuilder? _enableDnsHostnames;
  AttributeBooleanValueBuilder get enableDnsHostnames =>
      _$this._enableDnsHostnames ??= new AttributeBooleanValueBuilder();
  set enableDnsHostnames(AttributeBooleanValueBuilder? enableDnsHostnames) =>
      _$this._enableDnsHostnames = enableDnsHostnames;

  AttributeBooleanValueBuilder? _enableDnsSupport;
  AttributeBooleanValueBuilder get enableDnsSupport =>
      _$this._enableDnsSupport ??= new AttributeBooleanValueBuilder();
  set enableDnsSupport(AttributeBooleanValueBuilder? enableDnsSupport) =>
      _$this._enableDnsSupport = enableDnsSupport;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  AttributeBooleanValueBuilder? _enableNetworkAddressUsageMetrics;
  AttributeBooleanValueBuilder get enableNetworkAddressUsageMetrics =>
      _$this._enableNetworkAddressUsageMetrics ??=
          new AttributeBooleanValueBuilder();
  set enableNetworkAddressUsageMetrics(
          AttributeBooleanValueBuilder? enableNetworkAddressUsageMetrics) =>
      _$this._enableNetworkAddressUsageMetrics =
          enableNetworkAddressUsageMetrics;

  ModifyVpcAttributeRequestBuilder();

  ModifyVpcAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableDnsHostnames = $v.enableDnsHostnames?.toBuilder();
      _enableDnsSupport = $v.enableDnsSupport?.toBuilder();
      _vpcId = $v.vpcId;
      _enableNetworkAddressUsageMetrics =
          $v.enableNetworkAddressUsageMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcAttributeRequest;
  }

  @override
  void update(void Function(ModifyVpcAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcAttributeRequest build() => _build();

  _$ModifyVpcAttributeRequest _build() {
    _$ModifyVpcAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcAttributeRequest._(
              enableDnsHostnames: _enableDnsHostnames?.build(),
              enableDnsSupport: _enableDnsSupport?.build(),
              vpcId: vpcId,
              enableNetworkAddressUsageMetrics:
                  _enableNetworkAddressUsageMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enableDnsHostnames';
        _enableDnsHostnames?.build();
        _$failedField = 'enableDnsSupport';
        _enableDnsSupport?.build();

        _$failedField = 'enableNetworkAddressUsageMetrics';
        _enableNetworkAddressUsageMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
