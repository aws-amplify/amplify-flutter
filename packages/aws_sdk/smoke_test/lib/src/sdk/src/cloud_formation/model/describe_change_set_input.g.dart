// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_change_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeChangeSetInput extends DescribeChangeSetInput {
  @override
  final String changeSetName;
  @override
  final String? stackName;
  @override
  final String? nextToken;

  factory _$DescribeChangeSetInput(
          [void Function(DescribeChangeSetInputBuilder)? updates]) =>
      (new DescribeChangeSetInputBuilder()..update(updates))._build();

  _$DescribeChangeSetInput._(
      {required this.changeSetName, this.stackName, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        changeSetName, r'DescribeChangeSetInput', 'changeSetName');
  }

  @override
  DescribeChangeSetInput rebuild(
          void Function(DescribeChangeSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeChangeSetInputBuilder toBuilder() =>
      new DescribeChangeSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeChangeSetInput &&
        changeSetName == other.changeSetName &&
        stackName == other.stackName &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeChangeSetInputBuilder
    implements Builder<DescribeChangeSetInput, DescribeChangeSetInputBuilder> {
  _$DescribeChangeSetInput? _$v;

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

  DescribeChangeSetInputBuilder() {
    DescribeChangeSetInput._init(this);
  }

  DescribeChangeSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeSetName = $v.changeSetName;
      _stackName = $v.stackName;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeChangeSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeChangeSetInput;
  }

  @override
  void update(void Function(DescribeChangeSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeChangeSetInput build() => _build();

  _$DescribeChangeSetInput _build() {
    final _$result = _$v ??
        new _$DescribeChangeSetInput._(
            changeSetName: BuiltValueNullFieldError.checkNotNull(
                changeSetName, r'DescribeChangeSetInput', 'changeSetName'),
            stackName: stackName,
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
