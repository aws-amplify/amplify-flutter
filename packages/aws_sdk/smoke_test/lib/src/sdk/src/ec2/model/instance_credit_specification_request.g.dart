// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_credit_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceCreditSpecificationRequest
    extends InstanceCreditSpecificationRequest {
  @override
  final String? instanceId;
  @override
  final String? cpuCredits;

  factory _$InstanceCreditSpecificationRequest(
          [void Function(InstanceCreditSpecificationRequestBuilder)?
              updates]) =>
      (new InstanceCreditSpecificationRequestBuilder()..update(updates))
          ._build();

  _$InstanceCreditSpecificationRequest._({this.instanceId, this.cpuCredits})
      : super._();

  @override
  InstanceCreditSpecificationRequest rebuild(
          void Function(InstanceCreditSpecificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceCreditSpecificationRequestBuilder toBuilder() =>
      new InstanceCreditSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceCreditSpecificationRequest &&
        instanceId == other.instanceId &&
        cpuCredits == other.cpuCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, cpuCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceCreditSpecificationRequestBuilder
    implements
        Builder<InstanceCreditSpecificationRequest,
            InstanceCreditSpecificationRequestBuilder> {
  _$InstanceCreditSpecificationRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _cpuCredits;
  String? get cpuCredits => _$this._cpuCredits;
  set cpuCredits(String? cpuCredits) => _$this._cpuCredits = cpuCredits;

  InstanceCreditSpecificationRequestBuilder();

  InstanceCreditSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _cpuCredits = $v.cpuCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceCreditSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceCreditSpecificationRequest;
  }

  @override
  void update(
      void Function(InstanceCreditSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceCreditSpecificationRequest build() => _build();

  _$InstanceCreditSpecificationRequest _build() {
    final _$result = _$v ??
        new _$InstanceCreditSpecificationRequest._(
            instanceId: instanceId, cpuCredits: cpuCredits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
