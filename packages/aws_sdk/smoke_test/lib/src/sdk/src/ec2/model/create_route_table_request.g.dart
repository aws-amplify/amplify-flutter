// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRouteTableRequest extends CreateRouteTableRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateRouteTableRequest(
          [void Function(CreateRouteTableRequestBuilder)? updates]) =>
      (new CreateRouteTableRequestBuilder()..update(updates))._build();

  _$CreateRouteTableRequest._(
      {required this.dryRun, this.vpcId, this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateRouteTableRequest', 'dryRun');
  }

  @override
  CreateRouteTableRequest rebuild(
          void Function(CreateRouteTableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRouteTableRequestBuilder toBuilder() =>
      new CreateRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRouteTableRequest &&
        dryRun == other.dryRun &&
        vpcId == other.vpcId &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRouteTableRequestBuilder
    implements
        Builder<CreateRouteTableRequest, CreateRouteTableRequestBuilder> {
  _$CreateRouteTableRequest? _$v;

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

  CreateRouteTableRequestBuilder() {
    CreateRouteTableRequest._init(this);
  }

  CreateRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcId = $v.vpcId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRouteTableRequest;
  }

  @override
  void update(void Function(CreateRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRouteTableRequest build() => _build();

  _$CreateRouteTableRequest _build() {
    _$CreateRouteTableRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateRouteTableRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateRouteTableRequest', 'dryRun'),
              vpcId: vpcId,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateRouteTableRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
