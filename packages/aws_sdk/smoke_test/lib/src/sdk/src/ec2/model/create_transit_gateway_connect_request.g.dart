// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_connect_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayConnectRequest
    extends CreateTransitGatewayConnectRequest {
  @override
  final String? transportTransitGatewayAttachmentId;
  @override
  final CreateTransitGatewayConnectRequestOptions? options;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayConnectRequest(
          [void Function(CreateTransitGatewayConnectRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayConnectRequestBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayConnectRequest._(
      {this.transportTransitGatewayAttachmentId,
      this.options,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayConnectRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayConnectRequest rebuild(
          void Function(CreateTransitGatewayConnectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayConnectRequestBuilder toBuilder() =>
      new CreateTransitGatewayConnectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayConnectRequest &&
        transportTransitGatewayAttachmentId ==
            other.transportTransitGatewayAttachmentId &&
        options == other.options &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transportTransitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayConnectRequestBuilder
    implements
        Builder<CreateTransitGatewayConnectRequest,
            CreateTransitGatewayConnectRequestBuilder> {
  _$CreateTransitGatewayConnectRequest? _$v;

  String? _transportTransitGatewayAttachmentId;
  String? get transportTransitGatewayAttachmentId =>
      _$this._transportTransitGatewayAttachmentId;
  set transportTransitGatewayAttachmentId(
          String? transportTransitGatewayAttachmentId) =>
      _$this._transportTransitGatewayAttachmentId =
          transportTransitGatewayAttachmentId;

  CreateTransitGatewayConnectRequestOptionsBuilder? _options;
  CreateTransitGatewayConnectRequestOptionsBuilder get options =>
      _$this._options ??=
          new CreateTransitGatewayConnectRequestOptionsBuilder();
  set options(CreateTransitGatewayConnectRequestOptionsBuilder? options) =>
      _$this._options = options;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayConnectRequestBuilder() {
    CreateTransitGatewayConnectRequest._init(this);
  }

  CreateTransitGatewayConnectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transportTransitGatewayAttachmentId =
          $v.transportTransitGatewayAttachmentId;
      _options = $v.options?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayConnectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayConnectRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayConnectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayConnectRequest build() => _build();

  _$CreateTransitGatewayConnectRequest _build() {
    _$CreateTransitGatewayConnectRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayConnectRequest._(
              transportTransitGatewayAttachmentId:
                  transportTransitGatewayAttachmentId,
              options: _options?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTransitGatewayConnectRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayConnectRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
