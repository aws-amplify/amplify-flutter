// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_egress_only_internet_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateEgressOnlyInternetGatewayRequest
    extends CreateEgressOnlyInternetGatewayRequest {
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateEgressOnlyInternetGatewayRequest(
          [void Function(CreateEgressOnlyInternetGatewayRequestBuilder)?
              updates]) =>
      (new CreateEgressOnlyInternetGatewayRequestBuilder()..update(updates))
          ._build();

  _$CreateEgressOnlyInternetGatewayRequest._(
      {this.clientToken,
      required this.dryRun,
      this.vpcId,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateEgressOnlyInternetGatewayRequest', 'dryRun');
  }

  @override
  CreateEgressOnlyInternetGatewayRequest rebuild(
          void Function(CreateEgressOnlyInternetGatewayRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateEgressOnlyInternetGatewayRequestBuilder toBuilder() =>
      new CreateEgressOnlyInternetGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateEgressOnlyInternetGatewayRequest &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        vpcId == other.vpcId &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateEgressOnlyInternetGatewayRequestBuilder
    implements
        Builder<CreateEgressOnlyInternetGatewayRequest,
            CreateEgressOnlyInternetGatewayRequestBuilder> {
  _$CreateEgressOnlyInternetGatewayRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateEgressOnlyInternetGatewayRequestBuilder() {
    CreateEgressOnlyInternetGatewayRequest._init(this);
  }

  CreateEgressOnlyInternetGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _vpcId = $v.vpcId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateEgressOnlyInternetGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateEgressOnlyInternetGatewayRequest;
  }

  @override
  void update(
      void Function(CreateEgressOnlyInternetGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateEgressOnlyInternetGatewayRequest build() => _build();

  _$CreateEgressOnlyInternetGatewayRequest _build() {
    _$CreateEgressOnlyInternetGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateEgressOnlyInternetGatewayRequest._(
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateEgressOnlyInternetGatewayRequest', 'dryRun'),
              vpcId: vpcId,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateEgressOnlyInternetGatewayRequest',
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
