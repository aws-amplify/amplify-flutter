// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_coip_pool_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCoipPoolRequest extends DeleteCoipPoolRequest {
  @override
  final String? coipPoolId;
  @override
  final bool dryRun;

  factory _$DeleteCoipPoolRequest(
          [void Function(DeleteCoipPoolRequestBuilder)? updates]) =>
      (new DeleteCoipPoolRequestBuilder()..update(updates))._build();

  _$DeleteCoipPoolRequest._({this.coipPoolId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteCoipPoolRequest', 'dryRun');
  }

  @override
  DeleteCoipPoolRequest rebuild(
          void Function(DeleteCoipPoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCoipPoolRequestBuilder toBuilder() =>
      new DeleteCoipPoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCoipPoolRequest &&
        coipPoolId == other.coipPoolId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipPoolId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteCoipPoolRequestBuilder
    implements Builder<DeleteCoipPoolRequest, DeleteCoipPoolRequestBuilder> {
  _$DeleteCoipPoolRequest? _$v;

  String? _coipPoolId;
  String? get coipPoolId => _$this._coipPoolId;
  set coipPoolId(String? coipPoolId) => _$this._coipPoolId = coipPoolId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteCoipPoolRequestBuilder() {
    DeleteCoipPoolRequest._init(this);
  }

  DeleteCoipPoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipPoolId = $v.coipPoolId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCoipPoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCoipPoolRequest;
  }

  @override
  void update(void Function(DeleteCoipPoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCoipPoolRequest build() => _build();

  _$DeleteCoipPoolRequest _build() {
    final _$result = _$v ??
        new _$DeleteCoipPoolRequest._(
            coipPoolId: coipPoolId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteCoipPoolRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
