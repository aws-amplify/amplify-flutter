// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_peering_connection_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcPeeringConnectionOptionsRequest
    extends ModifyVpcPeeringConnectionOptionsRequest {
  @override
  final PeeringConnectionOptionsRequest? accepterPeeringConnectionOptions;
  @override
  final bool dryRun;
  @override
  final PeeringConnectionOptionsRequest? requesterPeeringConnectionOptions;
  @override
  final String? vpcPeeringConnectionId;

  factory _$ModifyVpcPeeringConnectionOptionsRequest(
          [void Function(ModifyVpcPeeringConnectionOptionsRequestBuilder)?
              updates]) =>
      (new ModifyVpcPeeringConnectionOptionsRequestBuilder()..update(updates))
          ._build();

  _$ModifyVpcPeeringConnectionOptionsRequest._(
      {this.accepterPeeringConnectionOptions,
      required this.dryRun,
      this.requesterPeeringConnectionOptions,
      this.vpcPeeringConnectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpcPeeringConnectionOptionsRequest', 'dryRun');
  }

  @override
  ModifyVpcPeeringConnectionOptionsRequest rebuild(
          void Function(ModifyVpcPeeringConnectionOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcPeeringConnectionOptionsRequestBuilder toBuilder() =>
      new ModifyVpcPeeringConnectionOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcPeeringConnectionOptionsRequest &&
        accepterPeeringConnectionOptions ==
            other.accepterPeeringConnectionOptions &&
        dryRun == other.dryRun &&
        requesterPeeringConnectionOptions ==
            other.requesterPeeringConnectionOptions &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepterPeeringConnectionOptions.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, requesterPeeringConnectionOptions.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcPeeringConnectionOptionsRequestBuilder
    implements
        Builder<ModifyVpcPeeringConnectionOptionsRequest,
            ModifyVpcPeeringConnectionOptionsRequestBuilder> {
  _$ModifyVpcPeeringConnectionOptionsRequest? _$v;

  PeeringConnectionOptionsRequestBuilder? _accepterPeeringConnectionOptions;
  PeeringConnectionOptionsRequestBuilder get accepterPeeringConnectionOptions =>
      _$this._accepterPeeringConnectionOptions ??=
          new PeeringConnectionOptionsRequestBuilder();
  set accepterPeeringConnectionOptions(
          PeeringConnectionOptionsRequestBuilder?
              accepterPeeringConnectionOptions) =>
      _$this._accepterPeeringConnectionOptions =
          accepterPeeringConnectionOptions;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  PeeringConnectionOptionsRequestBuilder? _requesterPeeringConnectionOptions;
  PeeringConnectionOptionsRequestBuilder
      get requesterPeeringConnectionOptions =>
          _$this._requesterPeeringConnectionOptions ??=
              new PeeringConnectionOptionsRequestBuilder();
  set requesterPeeringConnectionOptions(
          PeeringConnectionOptionsRequestBuilder?
              requesterPeeringConnectionOptions) =>
      _$this._requesterPeeringConnectionOptions =
          requesterPeeringConnectionOptions;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  ModifyVpcPeeringConnectionOptionsRequestBuilder() {
    ModifyVpcPeeringConnectionOptionsRequest._init(this);
  }

  ModifyVpcPeeringConnectionOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepterPeeringConnectionOptions =
          $v.accepterPeeringConnectionOptions?.toBuilder();
      _dryRun = $v.dryRun;
      _requesterPeeringConnectionOptions =
          $v.requesterPeeringConnectionOptions?.toBuilder();
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcPeeringConnectionOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcPeeringConnectionOptionsRequest;
  }

  @override
  void update(
      void Function(ModifyVpcPeeringConnectionOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcPeeringConnectionOptionsRequest build() => _build();

  _$ModifyVpcPeeringConnectionOptionsRequest _build() {
    _$ModifyVpcPeeringConnectionOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcPeeringConnectionOptionsRequest._(
              accepterPeeringConnectionOptions:
                  _accepterPeeringConnectionOptions?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyVpcPeeringConnectionOptionsRequest', 'dryRun'),
              requesterPeeringConnectionOptions:
                  _requesterPeeringConnectionOptions?.build(),
              vpcPeeringConnectionId: vpcPeeringConnectionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accepterPeeringConnectionOptions';
        _accepterPeeringConnectionOptions?.build();

        _$failedField = 'requesterPeeringConnectionOptions';
        _requesterPeeringConnectionOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcPeeringConnectionOptionsRequest',
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
