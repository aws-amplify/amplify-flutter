// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_address_to_vpc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoveAddressToVpcRequest extends MoveAddressToVpcRequest {
  @override
  final bool dryRun;
  @override
  final String? publicIp;

  factory _$MoveAddressToVpcRequest(
          [void Function(MoveAddressToVpcRequestBuilder)? updates]) =>
      (new MoveAddressToVpcRequestBuilder()..update(updates))._build();

  _$MoveAddressToVpcRequest._({required this.dryRun, this.publicIp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'MoveAddressToVpcRequest', 'dryRun');
  }

  @override
  MoveAddressToVpcRequest rebuild(
          void Function(MoveAddressToVpcRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoveAddressToVpcRequestBuilder toBuilder() =>
      new MoveAddressToVpcRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoveAddressToVpcRequest &&
        dryRun == other.dryRun &&
        publicIp == other.publicIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MoveAddressToVpcRequestBuilder
    implements
        Builder<MoveAddressToVpcRequest, MoveAddressToVpcRequestBuilder> {
  _$MoveAddressToVpcRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  MoveAddressToVpcRequestBuilder() {
    MoveAddressToVpcRequest._init(this);
  }

  MoveAddressToVpcRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _publicIp = $v.publicIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoveAddressToVpcRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoveAddressToVpcRequest;
  }

  @override
  void update(void Function(MoveAddressToVpcRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoveAddressToVpcRequest build() => _build();

  _$MoveAddressToVpcRequest _build() {
    final _$result = _$v ??
        new _$MoveAddressToVpcRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'MoveAddressToVpcRequest', 'dryRun'),
            publicIp: publicIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
