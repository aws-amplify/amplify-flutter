// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprovision_byoip_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeprovisionByoipCidrRequest extends DeprovisionByoipCidrRequest {
  @override
  final String? cidr;
  @override
  final bool dryRun;

  factory _$DeprovisionByoipCidrRequest(
          [void Function(DeprovisionByoipCidrRequestBuilder)? updates]) =>
      (new DeprovisionByoipCidrRequestBuilder()..update(updates))._build();

  _$DeprovisionByoipCidrRequest._({this.cidr, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeprovisionByoipCidrRequest', 'dryRun');
  }

  @override
  DeprovisionByoipCidrRequest rebuild(
          void Function(DeprovisionByoipCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprovisionByoipCidrRequestBuilder toBuilder() =>
      new DeprovisionByoipCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprovisionByoipCidrRequest &&
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

class DeprovisionByoipCidrRequestBuilder
    implements
        Builder<DeprovisionByoipCidrRequest,
            DeprovisionByoipCidrRequestBuilder> {
  _$DeprovisionByoipCidrRequest? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeprovisionByoipCidrRequestBuilder() {
    DeprovisionByoipCidrRequest._init(this);
  }

  DeprovisionByoipCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeprovisionByoipCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprovisionByoipCidrRequest;
  }

  @override
  void update(void Function(DeprovisionByoipCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeprovisionByoipCidrRequest build() => _build();

  _$DeprovisionByoipCidrRequest _build() {
    final _$result = _$v ??
        new _$DeprovisionByoipCidrRequest._(
            cidr: cidr,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeprovisionByoipCidrRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
