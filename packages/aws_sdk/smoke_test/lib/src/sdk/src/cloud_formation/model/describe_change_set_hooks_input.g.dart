// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_change_set_hooks_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeChangeSetHooksInput extends DescribeChangeSetHooksInput {
  @override
  final String changeSetName;
  @override
  final String? stackName;
  @override
  final String? nextToken;
  @override
  final String? logicalResourceId;

  factory _$DescribeChangeSetHooksInput(
          [void Function(DescribeChangeSetHooksInputBuilder)? updates]) =>
      (new DescribeChangeSetHooksInputBuilder()..update(updates))._build();

  _$DescribeChangeSetHooksInput._(
      {required this.changeSetName,
      this.stackName,
      this.nextToken,
      this.logicalResourceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        changeSetName, r'DescribeChangeSetHooksInput', 'changeSetName');
  }

  @override
  DescribeChangeSetHooksInput rebuild(
          void Function(DescribeChangeSetHooksInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeChangeSetHooksInputBuilder toBuilder() =>
      new DescribeChangeSetHooksInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeChangeSetHooksInput &&
        changeSetName == other.changeSetName &&
        stackName == other.stackName &&
        nextToken == other.nextToken &&
        logicalResourceId == other.logicalResourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeChangeSetHooksInputBuilder
    implements
        Builder<DescribeChangeSetHooksInput,
            DescribeChangeSetHooksInputBuilder> {
  _$DescribeChangeSetHooksInput? _$v;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  DescribeChangeSetHooksInputBuilder() {
    DescribeChangeSetHooksInput._init(this);
  }

  DescribeChangeSetHooksInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeSetName = $v.changeSetName;
      _stackName = $v.stackName;
      _nextToken = $v.nextToken;
      _logicalResourceId = $v.logicalResourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeChangeSetHooksInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeChangeSetHooksInput;
  }

  @override
  void update(void Function(DescribeChangeSetHooksInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeChangeSetHooksInput build() => _build();

  _$DescribeChangeSetHooksInput _build() {
    final _$result = _$v ??
        new _$DescribeChangeSetHooksInput._(
            changeSetName: BuiltValueNullFieldError.checkNotNull(
                changeSetName, r'DescribeChangeSetHooksInput', 'changeSetName'),
            stackName: stackName,
            nextToken: nextToken,
            logicalResourceId: logicalResourceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
