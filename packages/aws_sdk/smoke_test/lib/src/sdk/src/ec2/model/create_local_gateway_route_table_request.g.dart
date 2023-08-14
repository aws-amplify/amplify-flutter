// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteTableRequest
    extends CreateLocalGatewayRouteTableRequest {
  @override
  final String? localGatewayId;
  @override
  final LocalGatewayRouteTableMode? mode;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateLocalGatewayRouteTableRequest(
          [void Function(CreateLocalGatewayRouteTableRequestBuilder)?
              updates]) =>
      (new CreateLocalGatewayRouteTableRequestBuilder()..update(updates))
          ._build();

  _$CreateLocalGatewayRouteTableRequest._(
      {this.localGatewayId,
      this.mode,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateLocalGatewayRouteTableRequest', 'dryRun');
  }

  @override
  CreateLocalGatewayRouteTableRequest rebuild(
          void Function(CreateLocalGatewayRouteTableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteTableRequestBuilder toBuilder() =>
      new CreateLocalGatewayRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLocalGatewayRouteTableRequest &&
        localGatewayId == other.localGatewayId &&
        mode == other.mode &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteTableRequestBuilder
    implements
        Builder<CreateLocalGatewayRouteTableRequest,
            CreateLocalGatewayRouteTableRequestBuilder> {
  _$CreateLocalGatewayRouteTableRequest? _$v;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  LocalGatewayRouteTableMode? _mode;
  LocalGatewayRouteTableMode? get mode => _$this._mode;
  set mode(LocalGatewayRouteTableMode? mode) => _$this._mode = mode;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateLocalGatewayRouteTableRequestBuilder() {
    CreateLocalGatewayRouteTableRequest._init(this);
  }

  CreateLocalGatewayRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayId = $v.localGatewayId;
      _mode = $v.mode;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLocalGatewayRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLocalGatewayRouteTableRequest;
  }

  @override
  void update(
      void Function(CreateLocalGatewayRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteTableRequest build() => _build();

  _$CreateLocalGatewayRouteTableRequest _build() {
    _$CreateLocalGatewayRouteTableRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateLocalGatewayRouteTableRequest._(
              localGatewayId: localGatewayId,
              mode: mode,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateLocalGatewayRouteTableRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLocalGatewayRouteTableRequest',
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
