// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_coip_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCoipCidrRequest extends CreateCoipCidrRequest {
  @override
  final String? cidr;
  @override
  final String? coipPoolId;
  @override
  final bool dryRun;

  factory _$CreateCoipCidrRequest(
          [void Function(CreateCoipCidrRequestBuilder)? updates]) =>
      (new CreateCoipCidrRequestBuilder()..update(updates))._build();

  _$CreateCoipCidrRequest._({this.cidr, this.coipPoolId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateCoipCidrRequest', 'dryRun');
  }

  @override
  CreateCoipCidrRequest rebuild(
          void Function(CreateCoipCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCoipCidrRequestBuilder toBuilder() =>
      new CreateCoipCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCoipCidrRequest &&
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

class CreateCoipCidrRequestBuilder
    implements Builder<CreateCoipCidrRequest, CreateCoipCidrRequestBuilder> {
  _$CreateCoipCidrRequest? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _coipPoolId;
  String? get coipPoolId => _$this._coipPoolId;
  set coipPoolId(String? coipPoolId) => _$this._coipPoolId = coipPoolId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateCoipCidrRequestBuilder() {
    CreateCoipCidrRequest._init(this);
  }

  CreateCoipCidrRequestBuilder get _$this {
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
  void replace(CreateCoipCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCoipCidrRequest;
  }

  @override
  void update(void Function(CreateCoipCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCoipCidrRequest build() => _build();

  _$CreateCoipCidrRequest _build() {
    final _$result = _$v ??
        new _$CreateCoipCidrRequest._(
            cidr: cidr,
            coipPoolId: coipPoolId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateCoipCidrRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
