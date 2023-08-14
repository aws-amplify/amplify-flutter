// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_dhcp_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateDhcpOptionsRequest extends AssociateDhcpOptionsRequest {
  @override
  final String? dhcpOptionsId;
  @override
  final String? vpcId;
  @override
  final bool dryRun;

  factory _$AssociateDhcpOptionsRequest(
          [void Function(AssociateDhcpOptionsRequestBuilder)? updates]) =>
      (new AssociateDhcpOptionsRequestBuilder()..update(updates))._build();

  _$AssociateDhcpOptionsRequest._(
      {this.dhcpOptionsId, this.vpcId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateDhcpOptionsRequest', 'dryRun');
  }

  @override
  AssociateDhcpOptionsRequest rebuild(
          void Function(AssociateDhcpOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateDhcpOptionsRequestBuilder toBuilder() =>
      new AssociateDhcpOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateDhcpOptionsRequest &&
        dhcpOptionsId == other.dhcpOptionsId &&
        vpcId == other.vpcId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpOptionsId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateDhcpOptionsRequestBuilder
    implements
        Builder<AssociateDhcpOptionsRequest,
            AssociateDhcpOptionsRequestBuilder> {
  _$AssociateDhcpOptionsRequest? _$v;

  String? _dhcpOptionsId;
  String? get dhcpOptionsId => _$this._dhcpOptionsId;
  set dhcpOptionsId(String? dhcpOptionsId) =>
      _$this._dhcpOptionsId = dhcpOptionsId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AssociateDhcpOptionsRequestBuilder() {
    AssociateDhcpOptionsRequest._init(this);
  }

  AssociateDhcpOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpOptionsId = $v.dhcpOptionsId;
      _vpcId = $v.vpcId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateDhcpOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateDhcpOptionsRequest;
  }

  @override
  void update(void Function(AssociateDhcpOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateDhcpOptionsRequest build() => _build();

  _$AssociateDhcpOptionsRequest _build() {
    final _$result = _$v ??
        new _$AssociateDhcpOptionsRequest._(
            dhcpOptionsId: dhcpOptionsId,
            vpcId: vpcId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AssociateDhcpOptionsRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
