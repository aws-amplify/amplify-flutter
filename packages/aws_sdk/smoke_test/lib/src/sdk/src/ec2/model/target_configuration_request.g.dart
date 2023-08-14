// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetConfigurationRequest extends TargetConfigurationRequest {
  @override
  final int instanceCount;
  @override
  final String? offeringId;

  factory _$TargetConfigurationRequest(
          [void Function(TargetConfigurationRequestBuilder)? updates]) =>
      (new TargetConfigurationRequestBuilder()..update(updates))._build();

  _$TargetConfigurationRequest._({required this.instanceCount, this.offeringId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'TargetConfigurationRequest', 'instanceCount');
  }

  @override
  TargetConfigurationRequest rebuild(
          void Function(TargetConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetConfigurationRequestBuilder toBuilder() =>
      new TargetConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetConfigurationRequest &&
        instanceCount == other.instanceCount &&
        offeringId == other.offeringId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetConfigurationRequestBuilder
    implements
        Builder<TargetConfigurationRequest, TargetConfigurationRequestBuilder> {
  _$TargetConfigurationRequest? _$v;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  TargetConfigurationRequestBuilder() {
    TargetConfigurationRequest._init(this);
  }

  TargetConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceCount = $v.instanceCount;
      _offeringId = $v.offeringId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetConfigurationRequest;
  }

  @override
  void update(void Function(TargetConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetConfigurationRequest build() => _build();

  _$TargetConfigurationRequest _build() {
    final _$result = _$v ??
        new _$TargetConfigurationRequest._(
            instanceCount: BuiltValueNullFieldError.checkNotNull(
                instanceCount, r'TargetConfigurationRequest', 'instanceCount'),
            offeringId: offeringId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
