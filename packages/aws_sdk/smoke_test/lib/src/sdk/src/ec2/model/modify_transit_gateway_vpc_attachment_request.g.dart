// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_transit_gateway_vpc_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayVpcAttachmentRequest
    extends ModifyTransitGatewayVpcAttachmentRequest {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final _i3.BuiltList<String>? addSubnetIds;
  @override
  final _i3.BuiltList<String>? removeSubnetIds;
  @override
  final ModifyTransitGatewayVpcAttachmentRequestOptions? options;
  @override
  final bool dryRun;

  factory _$ModifyTransitGatewayVpcAttachmentRequest(
          [void Function(ModifyTransitGatewayVpcAttachmentRequestBuilder)?
              updates]) =>
      (new ModifyTransitGatewayVpcAttachmentRequestBuilder()..update(updates))
          ._build();

  _$ModifyTransitGatewayVpcAttachmentRequest._(
      {this.transitGatewayAttachmentId,
      this.addSubnetIds,
      this.removeSubnetIds,
      this.options,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyTransitGatewayVpcAttachmentRequest', 'dryRun');
  }

  @override
  ModifyTransitGatewayVpcAttachmentRequest rebuild(
          void Function(ModifyTransitGatewayVpcAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayVpcAttachmentRequestBuilder toBuilder() =>
      new ModifyTransitGatewayVpcAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayVpcAttachmentRequest &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        addSubnetIds == other.addSubnetIds &&
        removeSubnetIds == other.removeSubnetIds &&
        options == other.options &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, addSubnetIds.hashCode);
    _$hash = $jc(_$hash, removeSubnetIds.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTransitGatewayVpcAttachmentRequestBuilder
    implements
        Builder<ModifyTransitGatewayVpcAttachmentRequest,
            ModifyTransitGatewayVpcAttachmentRequestBuilder> {
  _$ModifyTransitGatewayVpcAttachmentRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  _i3.ListBuilder<String>? _addSubnetIds;
  _i3.ListBuilder<String> get addSubnetIds =>
      _$this._addSubnetIds ??= new _i3.ListBuilder<String>();
  set addSubnetIds(_i3.ListBuilder<String>? addSubnetIds) =>
      _$this._addSubnetIds = addSubnetIds;

  _i3.ListBuilder<String>? _removeSubnetIds;
  _i3.ListBuilder<String> get removeSubnetIds =>
      _$this._removeSubnetIds ??= new _i3.ListBuilder<String>();
  set removeSubnetIds(_i3.ListBuilder<String>? removeSubnetIds) =>
      _$this._removeSubnetIds = removeSubnetIds;

  ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder? _options;
  ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder get options =>
      _$this._options ??=
          new ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder();
  set options(
          ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder? options) =>
      _$this._options = options;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyTransitGatewayVpcAttachmentRequestBuilder() {
    ModifyTransitGatewayVpcAttachmentRequest._init(this);
  }

  ModifyTransitGatewayVpcAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _addSubnetIds = $v.addSubnetIds?.toBuilder();
      _removeSubnetIds = $v.removeSubnetIds?.toBuilder();
      _options = $v.options?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayVpcAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayVpcAttachmentRequest;
  }

  @override
  void update(
      void Function(ModifyTransitGatewayVpcAttachmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayVpcAttachmentRequest build() => _build();

  _$ModifyTransitGatewayVpcAttachmentRequest _build() {
    _$ModifyTransitGatewayVpcAttachmentRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyTransitGatewayVpcAttachmentRequest._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              addSubnetIds: _addSubnetIds?.build(),
              removeSubnetIds: _removeSubnetIds?.build(),
              options: _options?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyTransitGatewayVpcAttachmentRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addSubnetIds';
        _addSubnetIds?.build();
        _$failedField = 'removeSubnetIds';
        _removeSubnetIds?.build();
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTransitGatewayVpcAttachmentRequest',
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
