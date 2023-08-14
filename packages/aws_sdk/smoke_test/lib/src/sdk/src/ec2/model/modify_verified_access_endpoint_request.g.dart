// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessEndpointRequest
    extends ModifyVerifiedAccessEndpointRequest {
  @override
  final String? verifiedAccessEndpointId;
  @override
  final String? verifiedAccessGroupId;
  @override
  final ModifyVerifiedAccessEndpointLoadBalancerOptions? loadBalancerOptions;
  @override
  final ModifyVerifiedAccessEndpointEniOptions? networkInterfaceOptions;
  @override
  final String? description;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$ModifyVerifiedAccessEndpointRequest(
          [void Function(ModifyVerifiedAccessEndpointRequestBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessEndpointRequestBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessEndpointRequest._(
      {this.verifiedAccessEndpointId,
      this.verifiedAccessGroupId,
      this.loadBalancerOptions,
      this.networkInterfaceOptions,
      this.description,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVerifiedAccessEndpointRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessEndpointRequest rebuild(
          void Function(ModifyVerifiedAccessEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessEndpointRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessEndpointRequest &&
        verifiedAccessEndpointId == other.verifiedAccessEndpointId &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        loadBalancerOptions == other.loadBalancerOptions &&
        networkInterfaceOptions == other.networkInterfaceOptions &&
        description == other.description &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpointId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, loadBalancerOptions.hashCode);
    _$hash = $jc(_$hash, networkInterfaceOptions.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessEndpointRequestBuilder
    implements
        Builder<ModifyVerifiedAccessEndpointRequest,
            ModifyVerifiedAccessEndpointRequestBuilder> {
  _$ModifyVerifiedAccessEndpointRequest? _$v;

  String? _verifiedAccessEndpointId;
  String? get verifiedAccessEndpointId => _$this._verifiedAccessEndpointId;
  set verifiedAccessEndpointId(String? verifiedAccessEndpointId) =>
      _$this._verifiedAccessEndpointId = verifiedAccessEndpointId;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder? _loadBalancerOptions;
  ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder
      get loadBalancerOptions => _$this._loadBalancerOptions ??=
          new ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder();
  set loadBalancerOptions(
          ModifyVerifiedAccessEndpointLoadBalancerOptionsBuilder?
              loadBalancerOptions) =>
      _$this._loadBalancerOptions = loadBalancerOptions;

  ModifyVerifiedAccessEndpointEniOptionsBuilder? _networkInterfaceOptions;
  ModifyVerifiedAccessEndpointEniOptionsBuilder get networkInterfaceOptions =>
      _$this._networkInterfaceOptions ??=
          new ModifyVerifiedAccessEndpointEniOptionsBuilder();
  set networkInterfaceOptions(
          ModifyVerifiedAccessEndpointEniOptionsBuilder?
              networkInterfaceOptions) =>
      _$this._networkInterfaceOptions = networkInterfaceOptions;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVerifiedAccessEndpointRequestBuilder() {
    ModifyVerifiedAccessEndpointRequest._init(this);
  }

  ModifyVerifiedAccessEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpointId = $v.verifiedAccessEndpointId;
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _loadBalancerOptions = $v.loadBalancerOptions?.toBuilder();
      _networkInterfaceOptions = $v.networkInterfaceOptions?.toBuilder();
      _description = $v.description;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessEndpointRequest;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessEndpointRequest build() => _build();

  _$ModifyVerifiedAccessEndpointRequest _build() {
    _$ModifyVerifiedAccessEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessEndpointRequest._(
              verifiedAccessEndpointId: verifiedAccessEndpointId,
              verifiedAccessGroupId: verifiedAccessGroupId,
              loadBalancerOptions: _loadBalancerOptions?.build(),
              networkInterfaceOptions: _networkInterfaceOptions?.build(),
              description: description,
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyVerifiedAccessEndpointRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loadBalancerOptions';
        _loadBalancerOptions?.build();
        _$failedField = 'networkInterfaceOptions';
        _networkInterfaceOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessEndpointRequest',
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
