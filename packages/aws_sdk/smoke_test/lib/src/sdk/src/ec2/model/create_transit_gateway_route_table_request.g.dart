// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteTableRequest
    extends CreateTransitGatewayRouteTableRequest {
  @override
  final String? transitGatewayId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayRouteTableRequest(
          [void Function(CreateTransitGatewayRouteTableRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayRouteTableRequestBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayRouteTableRequest._(
      {this.transitGatewayId, this.tagSpecifications, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayRouteTableRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayRouteTableRequest rebuild(
          void Function(CreateTransitGatewayRouteTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteTableRequestBuilder toBuilder() =>
      new CreateTransitGatewayRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteTableRequest &&
        transitGatewayId == other.transitGatewayId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayRouteTableRequestBuilder
    implements
        Builder<CreateTransitGatewayRouteTableRequest,
            CreateTransitGatewayRouteTableRequestBuilder> {
  _$CreateTransitGatewayRouteTableRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayRouteTableRequestBuilder() {
    CreateTransitGatewayRouteTableRequest._init(this);
  }

  CreateTransitGatewayRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteTableRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteTableRequest build() => _build();

  _$CreateTransitGatewayRouteTableRequest _build() {
    _$CreateTransitGatewayRouteTableRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRouteTableRequest._(
              transitGatewayId: transitGatewayId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTransitGatewayRouteTableRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRouteTableRequest',
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
