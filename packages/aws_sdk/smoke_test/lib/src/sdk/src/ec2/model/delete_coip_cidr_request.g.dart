// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_coip_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCoipCidrRequest extends DeleteCoipCidrRequest {
  @override
  final String? cidr;
  @override
  final String? coipPoolId;
  @override
  final bool dryRun;

  factory _$DeleteCoipCidrRequest(
          [void Function(DeleteCoipCidrRequestBuilder)? updates]) =>
      (new DeleteCoipCidrRequestBuilder()..update(updates))._build();

  _$DeleteCoipCidrRequest._({this.cidr, this.coipPoolId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteCoipCidrRequest', 'dryRun');
  }

  @override
  DeleteCoipCidrRequest rebuild(
          void Function(DeleteCoipCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCoipCidrRequestBuilder toBuilder() =>
      new DeleteCoipCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCoipCidrRequest &&
        cidr == other.cidr &&
        coipPoolId == other.coipPoolId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, coipPoolId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteCoipCidrRequestBuilder
    implements Builder<DeleteCoipCidrRequest, DeleteCoipCidrRequestBuilder> {
  _$DeleteCoipCidrRequest? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _coipPoolId;
  String? get coipPoolId => _$this._coipPoolId;
  set coipPoolId(String? coipPoolId) => _$this._coipPoolId = coipPoolId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteCoipCidrRequestBuilder() {
    DeleteCoipCidrRequest._init(this);
  }

  DeleteCoipCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _coipPoolId = $v.coipPoolId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCoipCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCoipCidrRequest;
  }

  @override
  void update(void Function(DeleteCoipCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCoipCidrRequest build() => _build();

  _$DeleteCoipCidrRequest _build() {
    final _$result = _$v ??
        new _$DeleteCoipCidrRequest._(
            cidr: cidr,
            coipPoolId: coipPoolId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteCoipCidrRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
