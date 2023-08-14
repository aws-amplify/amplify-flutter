// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseAddressRequest extends ReleaseAddressRequest {
  @override
  final String? allocationId;
  @override
  final String? publicIp;
  @override
  final String? networkBorderGroup;
  @override
  final bool dryRun;

  factory _$ReleaseAddressRequest(
          [void Function(ReleaseAddressRequestBuilder)? updates]) =>
      (new ReleaseAddressRequestBuilder()..update(updates))._build();

  _$ReleaseAddressRequest._(
      {this.allocationId,
      this.publicIp,
      this.networkBorderGroup,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReleaseAddressRequest', 'dryRun');
  }

  @override
  ReleaseAddressRequest rebuild(
          void Function(ReleaseAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseAddressRequestBuilder toBuilder() =>
      new ReleaseAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseAddressRequest &&
        allocationId == other.allocationId &&
        publicIp == other.publicIp &&
        networkBorderGroup == other.networkBorderGroup &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReleaseAddressRequestBuilder
    implements Builder<ReleaseAddressRequest, ReleaseAddressRequestBuilder> {
  _$ReleaseAddressRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ReleaseAddressRequestBuilder() {
    ReleaseAddressRequest._init(this);
  }

  ReleaseAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _publicIp = $v.publicIp;
      _networkBorderGroup = $v.networkBorderGroup;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReleaseAddressRequest;
  }

  @override
  void update(void Function(ReleaseAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseAddressRequest build() => _build();

  _$ReleaseAddressRequest _build() {
    final _$result = _$v ??
        new _$ReleaseAddressRequest._(
            allocationId: allocationId,
            publicIp: publicIp,
            networkBorderGroup: networkBorderGroup,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ReleaseAddressRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
