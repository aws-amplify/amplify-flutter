// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_instance_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetInstanceAttributeRequest extends ResetInstanceAttributeRequest {
  @override
  final InstanceAttributeName? attribute;
  @override
  final bool dryRun;
  @override
  final String? instanceId;

  factory _$ResetInstanceAttributeRequest(
          [void Function(ResetInstanceAttributeRequestBuilder)? updates]) =>
      (new ResetInstanceAttributeRequestBuilder()..update(updates))._build();

  _$ResetInstanceAttributeRequest._(
      {this.attribute, required this.dryRun, this.instanceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetInstanceAttributeRequest', 'dryRun');
  }

  @override
  ResetInstanceAttributeRequest rebuild(
          void Function(ResetInstanceAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetInstanceAttributeRequestBuilder toBuilder() =>
      new ResetInstanceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetInstanceAttributeRequest &&
        attribute == other.attribute &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetInstanceAttributeRequestBuilder
    implements
        Builder<ResetInstanceAttributeRequest,
            ResetInstanceAttributeRequestBuilder> {
  _$ResetInstanceAttributeRequest? _$v;

  InstanceAttributeName? _attribute;
  InstanceAttributeName? get attribute => _$this._attribute;
  set attribute(InstanceAttributeName? attribute) =>
      _$this._attribute = attribute;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  ResetInstanceAttributeRequestBuilder() {
    ResetInstanceAttributeRequest._init(this);
  }

  ResetInstanceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetInstanceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetInstanceAttributeRequest;
  }

  @override
  void update(void Function(ResetInstanceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetInstanceAttributeRequest build() => _build();

  _$ResetInstanceAttributeRequest _build() {
    final _$result = _$v ??
        new _$ResetInstanceAttributeRequest._(
            attribute: attribute,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetInstanceAttributeRequest', 'dryRun'),
            instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
