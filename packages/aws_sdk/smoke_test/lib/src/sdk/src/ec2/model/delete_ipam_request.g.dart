// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamRequest extends DeleteIpamRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamId;
  @override
  final bool cascade;

  factory _$DeleteIpamRequest(
          [void Function(DeleteIpamRequestBuilder)? updates]) =>
      (new DeleteIpamRequestBuilder()..update(updates))._build();

  _$DeleteIpamRequest._(
      {required this.dryRun, this.ipamId, required this.cascade})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteIpamRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        cascade, r'DeleteIpamRequest', 'cascade');
  }

  @override
  DeleteIpamRequest rebuild(void Function(DeleteIpamRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamRequestBuilder toBuilder() =>
      new DeleteIpamRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamRequest &&
        dryRun == other.dryRun &&
        ipamId == other.ipamId &&
        cascade == other.cascade;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, cascade.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamRequestBuilder
    implements Builder<DeleteIpamRequest, DeleteIpamRequestBuilder> {
  _$DeleteIpamRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  bool? _cascade;
  bool? get cascade => _$this._cascade;
  set cascade(bool? cascade) => _$this._cascade = cascade;

  DeleteIpamRequestBuilder() {
    DeleteIpamRequest._init(this);
  }

  DeleteIpamRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamId = $v.ipamId;
      _cascade = $v.cascade;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamRequest;
  }

  @override
  void update(void Function(DeleteIpamRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamRequest build() => _build();

  _$DeleteIpamRequest _build() {
    final _$result = _$v ??
        new _$DeleteIpamRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteIpamRequest', 'dryRun'),
            ipamId: ipamId,
            cascade: BuiltValueNullFieldError.checkNotNull(
                cascade, r'DeleteIpamRequest', 'cascade'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
