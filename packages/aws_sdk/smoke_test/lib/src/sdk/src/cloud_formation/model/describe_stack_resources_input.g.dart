// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_resources_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackResourcesInput extends DescribeStackResourcesInput {
  @override
  final String? stackName;
  @override
  final String? logicalResourceId;
  @override
  final String? physicalResourceId;

  factory _$DescribeStackResourcesInput(
          [void Function(DescribeStackResourcesInputBuilder)? updates]) =>
      (new DescribeStackResourcesInputBuilder()..update(updates))._build();

  _$DescribeStackResourcesInput._(
      {this.stackName, this.logicalResourceId, this.physicalResourceId})
      : super._();

  @override
  DescribeStackResourcesInput rebuild(
          void Function(DescribeStackResourcesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackResourcesInputBuilder toBuilder() =>
      new DescribeStackResourcesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackResourcesInput &&
        stackName == other.stackName &&
        logicalResourceId == other.logicalResourceId &&
        physicalResourceId == other.physicalResourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, physicalResourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackResourcesInputBuilder
    implements
        Builder<DescribeStackResourcesInput,
            DescribeStackResourcesInputBuilder> {
  _$DescribeStackResourcesInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  String? _physicalResourceId;
  String? get physicalResourceId => _$this._physicalResourceId;
  set physicalResourceId(String? physicalResourceId) =>
      _$this._physicalResourceId = physicalResourceId;

  DescribeStackResourcesInputBuilder() {
    DescribeStackResourcesInput._init(this);
  }

  DescribeStackResourcesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _logicalResourceId = $v.logicalResourceId;
      _physicalResourceId = $v.physicalResourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackResourcesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackResourcesInput;
  }

  @override
  void update(void Function(DescribeStackResourcesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackResourcesInput build() => _build();

  _$DescribeStackResourcesInput _build() {
    final _$result = _$v ??
        new _$DescribeStackResourcesInput._(
            stackName: stackName,
            logicalResourceId: logicalResourceId,
            physicalResourceId: physicalResourceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
