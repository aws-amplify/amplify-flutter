// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcRequest extends DeleteVpcRequest {
  @override
  final String? vpcId;
  @override
  final bool dryRun;

  factory _$DeleteVpcRequest(
          [void Function(DeleteVpcRequestBuilder)? updates]) =>
      (new DeleteVpcRequestBuilder()..update(updates))._build();

  _$DeleteVpcRequest._({this.vpcId, required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpcRequest', 'dryRun');
  }

  @override
  DeleteVpcRequest rebuild(void Function(DeleteVpcRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcRequestBuilder toBuilder() =>
      new DeleteVpcRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcRequest &&
        vpcId == other.vpcId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcRequestBuilder
    implements Builder<DeleteVpcRequest, DeleteVpcRequestBuilder> {
  _$DeleteVpcRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteVpcRequestBuilder() {
    DeleteVpcRequest._init(this);
  }

  DeleteVpcRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcRequest;
  }

  @override
  void update(void Function(DeleteVpcRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcRequest build() => _build();

  _$DeleteVpcRequest _build() {
    final _$result = _$v ??
        new _$DeleteVpcRequest._(
            vpcId: vpcId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVpcRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
