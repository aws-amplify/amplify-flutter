// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_byoip_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvertiseByoipCidrRequest extends AdvertiseByoipCidrRequest {
  @override
  final String? cidr;
  @override
  final bool dryRun;

  factory _$AdvertiseByoipCidrRequest(
          [void Function(AdvertiseByoipCidrRequestBuilder)? updates]) =>
      (new AdvertiseByoipCidrRequestBuilder()..update(updates))._build();

  _$AdvertiseByoipCidrRequest._({this.cidr, required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AdvertiseByoipCidrRequest', 'dryRun');
  }

  @override
  AdvertiseByoipCidrRequest rebuild(
          void Function(AdvertiseByoipCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvertiseByoipCidrRequestBuilder toBuilder() =>
      new AdvertiseByoipCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvertiseByoipCidrRequest &&
        cidr == other.cidr &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AdvertiseByoipCidrRequestBuilder
    implements
        Builder<AdvertiseByoipCidrRequest, AdvertiseByoipCidrRequestBuilder> {
  _$AdvertiseByoipCidrRequest? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AdvertiseByoipCidrRequestBuilder() {
    AdvertiseByoipCidrRequest._init(this);
  }

  AdvertiseByoipCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvertiseByoipCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvertiseByoipCidrRequest;
  }

  @override
  void update(void Function(AdvertiseByoipCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvertiseByoipCidrRequest build() => _build();

  _$AdvertiseByoipCidrRequest _build() {
    final _$result = _$v ??
        new _$AdvertiseByoipCidrRequest._(
            cidr: cidr,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AdvertiseByoipCidrRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
