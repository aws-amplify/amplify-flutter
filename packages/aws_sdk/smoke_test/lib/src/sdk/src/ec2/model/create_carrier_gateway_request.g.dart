// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_carrier_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCarrierGatewayRequest extends CreateCarrierGatewayRequest {
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$CreateCarrierGatewayRequest(
          [void Function(CreateCarrierGatewayRequestBuilder)? updates]) =>
      (new CreateCarrierGatewayRequestBuilder()..update(updates))._build();

  _$CreateCarrierGatewayRequest._(
      {this.vpcId,
      this.tagSpecifications,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateCarrierGatewayRequest', 'dryRun');
  }

  @override
  CreateCarrierGatewayRequest rebuild(
          void Function(CreateCarrierGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCarrierGatewayRequestBuilder toBuilder() =>
      new CreateCarrierGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCarrierGatewayRequest &&
        vpcId == other.vpcId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCarrierGatewayRequestBuilder
    implements
        Builder<CreateCarrierGatewayRequest,
            CreateCarrierGatewayRequestBuilder> {
  _$CreateCarrierGatewayRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateCarrierGatewayRequestBuilder() {
    CreateCarrierGatewayRequest._init(this);
  }

  CreateCarrierGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCarrierGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCarrierGatewayRequest;
  }

  @override
  void update(void Function(CreateCarrierGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCarrierGatewayRequest build() => _build();

  _$CreateCarrierGatewayRequest _build() {
    _$CreateCarrierGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCarrierGatewayRequest._(
              vpcId: vpcId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateCarrierGatewayRequest', 'dryRun'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCarrierGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
