// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_coip_pool_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCoipPoolRequest extends CreateCoipPoolRequest {
  @override
  final String? localGatewayRouteTableId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateCoipPoolRequest(
          [void Function(CreateCoipPoolRequestBuilder)? updates]) =>
      (new CreateCoipPoolRequestBuilder()..update(updates))._build();

  _$CreateCoipPoolRequest._(
      {this.localGatewayRouteTableId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateCoipPoolRequest', 'dryRun');
  }

  @override
  CreateCoipPoolRequest rebuild(
          void Function(CreateCoipPoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCoipPoolRequestBuilder toBuilder() =>
      new CreateCoipPoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCoipPoolRequest &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCoipPoolRequestBuilder
    implements Builder<CreateCoipPoolRequest, CreateCoipPoolRequestBuilder> {
  _$CreateCoipPoolRequest? _$v;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateCoipPoolRequestBuilder() {
    CreateCoipPoolRequest._init(this);
  }

  CreateCoipPoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCoipPoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCoipPoolRequest;
  }

  @override
  void update(void Function(CreateCoipPoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCoipPoolRequest build() => _build();

  _$CreateCoipPoolRequest _build() {
    _$CreateCoipPoolRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCoipPoolRequest._(
              localGatewayRouteTableId: localGatewayRouteTableId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateCoipPoolRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCoipPoolRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
