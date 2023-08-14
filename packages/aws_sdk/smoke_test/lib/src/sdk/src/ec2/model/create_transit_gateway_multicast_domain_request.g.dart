// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_multicast_domain_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayMulticastDomainRequest
    extends CreateTransitGatewayMulticastDomainRequest {
  @override
  final String? transitGatewayId;
  @override
  final CreateTransitGatewayMulticastDomainRequestOptions? options;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayMulticastDomainRequest(
          [void Function(CreateTransitGatewayMulticastDomainRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayMulticastDomainRequestBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayMulticastDomainRequest._(
      {this.transitGatewayId,
      this.options,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayMulticastDomainRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayMulticastDomainRequest rebuild(
          void Function(CreateTransitGatewayMulticastDomainRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayMulticastDomainRequestBuilder toBuilder() =>
      new CreateTransitGatewayMulticastDomainRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayMulticastDomainRequest &&
        transitGatewayId == other.transitGatewayId &&
        options == other.options &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayMulticastDomainRequestBuilder
    implements
        Builder<CreateTransitGatewayMulticastDomainRequest,
            CreateTransitGatewayMulticastDomainRequestBuilder> {
  _$CreateTransitGatewayMulticastDomainRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  CreateTransitGatewayMulticastDomainRequestOptionsBuilder? _options;
  CreateTransitGatewayMulticastDomainRequestOptionsBuilder get options =>
      _$this._options ??=
          new CreateTransitGatewayMulticastDomainRequestOptionsBuilder();
  set options(
          CreateTransitGatewayMulticastDomainRequestOptionsBuilder? options) =>
      _$this._options = options;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayMulticastDomainRequestBuilder() {
    CreateTransitGatewayMulticastDomainRequest._init(this);
  }

  CreateTransitGatewayMulticastDomainRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _options = $v.options?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayMulticastDomainRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayMulticastDomainRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayMulticastDomainRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayMulticastDomainRequest build() => _build();

  _$CreateTransitGatewayMulticastDomainRequest _build() {
    _$CreateTransitGatewayMulticastDomainRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayMulticastDomainRequest._(
              transitGatewayId: transitGatewayId,
              options: _options?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'CreateTransitGatewayMulticastDomainRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayMulticastDomainRequest',
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
