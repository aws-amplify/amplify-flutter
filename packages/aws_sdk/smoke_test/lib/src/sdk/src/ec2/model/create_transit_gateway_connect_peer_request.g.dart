// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_connect_peer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayConnectPeerRequest
    extends CreateTransitGatewayConnectPeerRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? transitGatewayAddress;
  @override
  final String? peerAddress;
  @override
  final TransitGatewayConnectRequestBgpOptions? bgpOptions;
  @override
  final _i3.BuiltList<String>? insideCidrBlocks;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayConnectPeerRequest(
          [void Function(CreateTransitGatewayConnectPeerRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayConnectPeerRequestBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayConnectPeerRequest._(
      {this.transitGatewayAttachmentId,
      this.transitGatewayAddress,
      this.peerAddress,
      this.bgpOptions,
      this.insideCidrBlocks,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayConnectPeerRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayConnectPeerRequest rebuild(
          void Function(CreateTransitGatewayConnectPeerRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayConnectPeerRequestBuilder toBuilder() =>
      new CreateTransitGatewayConnectPeerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayConnectPeerRequest &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        transitGatewayAddress == other.transitGatewayAddress &&
        peerAddress == other.peerAddress &&
        bgpOptions == other.bgpOptions &&
        insideCidrBlocks == other.insideCidrBlocks &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAddress.hashCode);
    _$hash = $jc(_$hash, peerAddress.hashCode);
    _$hash = $jc(_$hash, bgpOptions.hashCode);
    _$hash = $jc(_$hash, insideCidrBlocks.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayConnectPeerRequestBuilder
    implements
        Builder<CreateTransitGatewayConnectPeerRequest,
            CreateTransitGatewayConnectPeerRequestBuilder> {
  _$CreateTransitGatewayConnectPeerRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _transitGatewayAddress;
  String? get transitGatewayAddress => _$this._transitGatewayAddress;
  set transitGatewayAddress(String? transitGatewayAddress) =>
      _$this._transitGatewayAddress = transitGatewayAddress;

  String? _peerAddress;
  String? get peerAddress => _$this._peerAddress;
  set peerAddress(String? peerAddress) => _$this._peerAddress = peerAddress;

  TransitGatewayConnectRequestBgpOptionsBuilder? _bgpOptions;
  TransitGatewayConnectRequestBgpOptionsBuilder get bgpOptions =>
      _$this._bgpOptions ??=
          new TransitGatewayConnectRequestBgpOptionsBuilder();
  set bgpOptions(TransitGatewayConnectRequestBgpOptionsBuilder? bgpOptions) =>
      _$this._bgpOptions = bgpOptions;

  _i3.ListBuilder<String>? _insideCidrBlocks;
  _i3.ListBuilder<String> get insideCidrBlocks =>
      _$this._insideCidrBlocks ??= new _i3.ListBuilder<String>();
  set insideCidrBlocks(_i3.ListBuilder<String>? insideCidrBlocks) =>
      _$this._insideCidrBlocks = insideCidrBlocks;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayConnectPeerRequestBuilder() {
    CreateTransitGatewayConnectPeerRequest._init(this);
  }

  CreateTransitGatewayConnectPeerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _transitGatewayAddress = $v.transitGatewayAddress;
      _peerAddress = $v.peerAddress;
      _bgpOptions = $v.bgpOptions?.toBuilder();
      _insideCidrBlocks = $v.insideCidrBlocks?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayConnectPeerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayConnectPeerRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayConnectPeerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayConnectPeerRequest build() => _build();

  _$CreateTransitGatewayConnectPeerRequest _build() {
    _$CreateTransitGatewayConnectPeerRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayConnectPeerRequest._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              transitGatewayAddress: transitGatewayAddress,
              peerAddress: peerAddress,
              bgpOptions: _bgpOptions?.build(),
              insideCidrBlocks: _insideCidrBlocks?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTransitGatewayConnectPeerRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bgpOptions';
        _bgpOptions?.build();
        _$failedField = 'insideCidrBlocks';
        _insideCidrBlocks?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayConnectPeerRequest',
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
