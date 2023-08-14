// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_default_credit_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyDefaultCreditSpecificationRequest
    extends ModifyDefaultCreditSpecificationRequest {
  @override
  final bool dryRun;
  @override
  final UnlimitedSupportedInstanceFamily? instanceFamily;
  @override
  final String? cpuCredits;

  factory _$ModifyDefaultCreditSpecificationRequest(
          [void Function(ModifyDefaultCreditSpecificationRequestBuilder)?
              updates]) =>
      (new ModifyDefaultCreditSpecificationRequestBuilder()..update(updates))
          ._build();

  _$ModifyDefaultCreditSpecificationRequest._(
      {required this.dryRun, this.instanceFamily, this.cpuCredits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyDefaultCreditSpecificationRequest', 'dryRun');
  }

  @override
  ModifyDefaultCreditSpecificationRequest rebuild(
          void Function(ModifyDefaultCreditSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyDefaultCreditSpecificationRequestBuilder toBuilder() =>
      new ModifyDefaultCreditSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyDefaultCreditSpecificationRequest &&
        dryRun == other.dryRun &&
        instanceFamily == other.instanceFamily &&
        cpuCredits == other.cpuCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, cpuCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyDefaultCreditSpecificationRequestBuilder
    implements
        Builder<ModifyDefaultCreditSpecificationRequest,
            ModifyDefaultCreditSpecificationRequestBuilder> {
  _$ModifyDefaultCreditSpecificationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  UnlimitedSupportedInstanceFamily? _instanceFamily;
  UnlimitedSupportedInstanceFamily? get instanceFamily =>
      _$this._instanceFamily;
  set instanceFamily(UnlimitedSupportedInstanceFamily? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  String? _cpuCredits;
  String? get cpuCredits => _$this._cpuCredits;
  set cpuCredits(String? cpuCredits) => _$this._cpuCredits = cpuCredits;

  ModifyDefaultCreditSpecificationRequestBuilder() {
    ModifyDefaultCreditSpecificationRequest._init(this);
  }

  ModifyDefaultCreditSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceFamily = $v.instanceFamily;
      _cpuCredits = $v.cpuCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyDefaultCreditSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyDefaultCreditSpecificationRequest;
  }

  @override
  void update(
      void Function(ModifyDefaultCreditSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyDefaultCreditSpecificationRequest build() => _build();

  _$ModifyDefaultCreditSpecificationRequest _build() {
    final _$result = _$v ??
        new _$ModifyDefaultCreditSpecificationRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyDefaultCreditSpecificationRequest', 'dryRun'),
            instanceFamily: instanceFamily,
            cpuCredits: cpuCredits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
