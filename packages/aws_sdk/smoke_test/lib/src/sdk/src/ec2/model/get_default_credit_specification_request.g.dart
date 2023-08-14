// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_default_credit_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDefaultCreditSpecificationRequest
    extends GetDefaultCreditSpecificationRequest {
  @override
  final bool dryRun;
  @override
  final UnlimitedSupportedInstanceFamily? instanceFamily;

  factory _$GetDefaultCreditSpecificationRequest(
          [void Function(GetDefaultCreditSpecificationRequestBuilder)?
              updates]) =>
      (new GetDefaultCreditSpecificationRequestBuilder()..update(updates))
          ._build();

  _$GetDefaultCreditSpecificationRequest._(
      {required this.dryRun, this.instanceFamily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetDefaultCreditSpecificationRequest', 'dryRun');
  }

  @override
  GetDefaultCreditSpecificationRequest rebuild(
          void Function(GetDefaultCreditSpecificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDefaultCreditSpecificationRequestBuilder toBuilder() =>
      new GetDefaultCreditSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDefaultCreditSpecificationRequest &&
        dryRun == other.dryRun &&
        instanceFamily == other.instanceFamily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDefaultCreditSpecificationRequestBuilder
    implements
        Builder<GetDefaultCreditSpecificationRequest,
            GetDefaultCreditSpecificationRequestBuilder> {
  _$GetDefaultCreditSpecificationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  UnlimitedSupportedInstanceFamily? _instanceFamily;
  UnlimitedSupportedInstanceFamily? get instanceFamily =>
      _$this._instanceFamily;
  set instanceFamily(UnlimitedSupportedInstanceFamily? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  GetDefaultCreditSpecificationRequestBuilder() {
    GetDefaultCreditSpecificationRequest._init(this);
  }

  GetDefaultCreditSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceFamily = $v.instanceFamily;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDefaultCreditSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDefaultCreditSpecificationRequest;
  }

  @override
  void update(
      void Function(GetDefaultCreditSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDefaultCreditSpecificationRequest build() => _build();

  _$GetDefaultCreditSpecificationRequest _build() {
    final _$result = _$v ??
        new _$GetDefaultCreditSpecificationRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetDefaultCreditSpecificationRequest', 'dryRun'),
            instanceFamily: instanceFamily);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
