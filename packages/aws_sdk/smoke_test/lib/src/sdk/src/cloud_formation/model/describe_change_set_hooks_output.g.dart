// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_change_set_hooks_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeChangeSetHooksOutput extends DescribeChangeSetHooksOutput {
  @override
  final String? changeSetId;
  @override
  final String? changeSetName;
  @override
  final _i4.BuiltList<_i2.ChangeSetHook>? hooks;
  @override
  final _i3.ChangeSetHooksStatus? status;
  @override
  final String? nextToken;
  @override
  final String? stackId;
  @override
  final String? stackName;

  factory _$DescribeChangeSetHooksOutput(
          [void Function(DescribeChangeSetHooksOutputBuilder)? updates]) =>
      (new DescribeChangeSetHooksOutputBuilder()..update(updates))._build();

  _$DescribeChangeSetHooksOutput._(
      {this.changeSetId,
      this.changeSetName,
      this.hooks,
      this.status,
      this.nextToken,
      this.stackId,
      this.stackName})
      : super._();

  @override
  DescribeChangeSetHooksOutput rebuild(
          void Function(DescribeChangeSetHooksOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeChangeSetHooksOutputBuilder toBuilder() =>
      new DescribeChangeSetHooksOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeChangeSetHooksOutput &&
        changeSetId == other.changeSetId &&
        changeSetName == other.changeSetName &&
        hooks == other.hooks &&
        status == other.status &&
        nextToken == other.nextToken &&
        stackId == other.stackId &&
        stackName == other.stackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeSetId.hashCode);
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, hooks.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeChangeSetHooksOutputBuilder
    implements
        Builder<DescribeChangeSetHooksOutput,
            DescribeChangeSetHooksOutputBuilder> {
  _$DescribeChangeSetHooksOutput? _$v;

  String? _changeSetId;
  String? get changeSetId => _$this._changeSetId;
  set changeSetId(String? changeSetId) => _$this._changeSetId = changeSetId;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  _i4.ListBuilder<_i2.ChangeSetHook>? _hooks;
  _i4.ListBuilder<_i2.ChangeSetHook> get hooks =>
      _$this._hooks ??= new _i4.ListBuilder<_i2.ChangeSetHook>();
  set hooks(_i4.ListBuilder<_i2.ChangeSetHook>? hooks) => _$this._hooks = hooks;

  _i3.ChangeSetHooksStatus? _status;
  _i3.ChangeSetHooksStatus? get status => _$this._status;
  set status(_i3.ChangeSetHooksStatus? status) => _$this._status = status;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  DescribeChangeSetHooksOutputBuilder() {
    DescribeChangeSetHooksOutput._init(this);
  }

  DescribeChangeSetHooksOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeSetId = $v.changeSetId;
      _changeSetName = $v.changeSetName;
      _hooks = $v.hooks?.toBuilder();
      _status = $v.status;
      _nextToken = $v.nextToken;
      _stackId = $v.stackId;
      _stackName = $v.stackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeChangeSetHooksOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeChangeSetHooksOutput;
  }

  @override
  void update(void Function(DescribeChangeSetHooksOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeChangeSetHooksOutput build() => _build();

  _$DescribeChangeSetHooksOutput _build() {
    _$DescribeChangeSetHooksOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeChangeSetHooksOutput._(
              changeSetId: changeSetId,
              changeSetName: changeSetName,
              hooks: _hooks?.build(),
              status: status,
              nextToken: nextToken,
              stackId: stackId,
              stackName: stackName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hooks';
        _hooks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeChangeSetHooksOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
