// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_subnet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSubnetRequest extends DeleteSubnetRequest {
  @override
  final String? subnetId;
  @override
  final bool dryRun;

  factory _$DeleteSubnetRequest(
          [void Function(DeleteSubnetRequestBuilder)? updates]) =>
      (new DeleteSubnetRequestBuilder()..update(updates))._build();

  _$DeleteSubnetRequest._({this.subnetId, required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteSubnetRequest', 'dryRun');
  }

  @override
  DeleteSubnetRequest rebuild(
          void Function(DeleteSubnetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSubnetRequestBuilder toBuilder() =>
      new DeleteSubnetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSubnetRequest &&
        subnetId == other.subnetId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteSubnetRequestBuilder
    implements Builder<DeleteSubnetRequest, DeleteSubnetRequestBuilder> {
  _$DeleteSubnetRequest? _$v;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteSubnetRequestBuilder() {
    DeleteSubnetRequest._init(this);
  }

  DeleteSubnetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetId = $v.subnetId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSubnetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSubnetRequest;
  }

  @override
  void update(void Function(DeleteSubnetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSubnetRequest build() => _build();

  _$DeleteSubnetRequest _build() {
    final _$result = _$v ??
        new _$DeleteSubnetRequest._(
            subnetId: subnetId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteSubnetRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
