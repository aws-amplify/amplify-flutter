// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_vpc_classic_link_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableVpcClassicLinkRequest extends EnableVpcClassicLinkRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcId;

  factory _$EnableVpcClassicLinkRequest(
          [void Function(EnableVpcClassicLinkRequestBuilder)? updates]) =>
      (new EnableVpcClassicLinkRequestBuilder()..update(updates))._build();

  _$EnableVpcClassicLinkRequest._({required this.dryRun, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableVpcClassicLinkRequest', 'dryRun');
  }

  @override
  EnableVpcClassicLinkRequest rebuild(
          void Function(EnableVpcClassicLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableVpcClassicLinkRequestBuilder toBuilder() =>
      new EnableVpcClassicLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableVpcClassicLinkRequest &&
        dryRun == other.dryRun &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableVpcClassicLinkRequestBuilder
    implements
        Builder<EnableVpcClassicLinkRequest,
            EnableVpcClassicLinkRequestBuilder> {
  _$EnableVpcClassicLinkRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  EnableVpcClassicLinkRequestBuilder() {
    EnableVpcClassicLinkRequest._init(this);
  }

  EnableVpcClassicLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableVpcClassicLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableVpcClassicLinkRequest;
  }

  @override
  void update(void Function(EnableVpcClassicLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableVpcClassicLinkRequest build() => _build();

  _$EnableVpcClassicLinkRequest _build() {
    final _$result = _$v ??
        new _$EnableVpcClassicLinkRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableVpcClassicLinkRequest', 'dryRun'),
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
