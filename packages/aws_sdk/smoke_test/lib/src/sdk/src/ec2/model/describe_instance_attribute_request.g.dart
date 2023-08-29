// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceAttributeRequest
    extends DescribeInstanceAttributeRequest {
  @override
  final InstanceAttributeName? attribute;
  @override
  final bool dryRun;
  @override
  final String? instanceId;

  factory _$DescribeInstanceAttributeRequest(
          [void Function(DescribeInstanceAttributeRequestBuilder)? updates]) =>
      (new DescribeInstanceAttributeRequestBuilder()..update(updates))._build();

  _$DescribeInstanceAttributeRequest._(
      {this.attribute, required this.dryRun, this.instanceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceAttributeRequest', 'dryRun');
  }

  @override
  DescribeInstanceAttributeRequest rebuild(
          void Function(DescribeInstanceAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceAttributeRequestBuilder toBuilder() =>
      new DescribeInstanceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceAttributeRequest &&
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

class DescribeInstanceAttributeRequestBuilder
    implements
        Builder<DescribeInstanceAttributeRequest,
            DescribeInstanceAttributeRequestBuilder> {
  _$DescribeInstanceAttributeRequest? _$v;

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

  DescribeInstanceAttributeRequestBuilder() {
    DescribeInstanceAttributeRequest._init(this);
  }

  DescribeInstanceAttributeRequestBuilder get _$this {
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
  void replace(DescribeInstanceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceAttributeRequest;
  }

  @override
  void update(void Function(DescribeInstanceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceAttributeRequest build() => _build();

  _$DescribeInstanceAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeInstanceAttributeRequest._(
            attribute: attribute,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeInstanceAttributeRequest', 'dryRun'),
            instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
