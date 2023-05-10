// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_resource_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackResourceInput extends DescribeStackResourceInput {
  @override
  final String stackName;
  @override
  final String logicalResourceId;

  factory _$DescribeStackResourceInput(
          [void Function(DescribeStackResourceInputBuilder)? updates]) =>
      (new DescribeStackResourceInputBuilder()..update(updates))._build();

  _$DescribeStackResourceInput._(
      {required this.stackName, required this.logicalResourceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'DescribeStackResourceInput', 'stackName');
    BuiltValueNullFieldError.checkNotNull(
        logicalResourceId, r'DescribeStackResourceInput', 'logicalResourceId');
  }

  @override
  DescribeStackResourceInput rebuild(
          void Function(DescribeStackResourceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackResourceInputBuilder toBuilder() =>
      new DescribeStackResourceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackResourceInput &&
        stackName == other.stackName &&
        logicalResourceId == other.logicalResourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackResourceInputBuilder
    implements
        Builder<DescribeStackResourceInput, DescribeStackResourceInputBuilder> {
  _$DescribeStackResourceInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  DescribeStackResourceInputBuilder() {
    DescribeStackResourceInput._init(this);
  }

  DescribeStackResourceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _logicalResourceId = $v.logicalResourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackResourceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackResourceInput;
  }

  @override
  void update(void Function(DescribeStackResourceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackResourceInput build() => _build();

  _$DescribeStackResourceInput _build() {
    final _$result = _$v ??
        new _$DescribeStackResourceInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'DescribeStackResourceInput', 'stackName'),
            logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                logicalResourceId,
                r'DescribeStackResourceInput',
                'logicalResourceId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
