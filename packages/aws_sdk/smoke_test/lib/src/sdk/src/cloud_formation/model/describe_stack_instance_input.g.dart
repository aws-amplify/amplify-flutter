// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_instance_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackInstanceInput extends DescribeStackInstanceInput {
  @override
  final String stackSetName;
  @override
  final String stackInstanceAccount;
  @override
  final String stackInstanceRegion;
  @override
  final _i3.CallAs? callAs;

  factory _$DescribeStackInstanceInput(
          [void Function(DescribeStackInstanceInputBuilder)? updates]) =>
      (new DescribeStackInstanceInputBuilder()..update(updates))._build();

  _$DescribeStackInstanceInput._(
      {required this.stackSetName,
      required this.stackInstanceAccount,
      required this.stackInstanceRegion,
      this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'DescribeStackInstanceInput', 'stackSetName');
    BuiltValueNullFieldError.checkNotNull(stackInstanceAccount,
        r'DescribeStackInstanceInput', 'stackInstanceAccount');
    BuiltValueNullFieldError.checkNotNull(stackInstanceRegion,
        r'DescribeStackInstanceInput', 'stackInstanceRegion');
  }

  @override
  DescribeStackInstanceInput rebuild(
          void Function(DescribeStackInstanceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackInstanceInputBuilder toBuilder() =>
      new DescribeStackInstanceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackInstanceInput &&
        stackSetName == other.stackSetName &&
        stackInstanceAccount == other.stackInstanceAccount &&
        stackInstanceRegion == other.stackInstanceRegion &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, stackInstanceAccount.hashCode);
    _$hash = $jc(_$hash, stackInstanceRegion.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackInstanceInputBuilder
    implements
        Builder<DescribeStackInstanceInput, DescribeStackInstanceInputBuilder> {
  _$DescribeStackInstanceInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  String? _stackInstanceAccount;
  String? get stackInstanceAccount => _$this._stackInstanceAccount;
  set stackInstanceAccount(String? stackInstanceAccount) =>
      _$this._stackInstanceAccount = stackInstanceAccount;

  String? _stackInstanceRegion;
  String? get stackInstanceRegion => _$this._stackInstanceRegion;
  set stackInstanceRegion(String? stackInstanceRegion) =>
      _$this._stackInstanceRegion = stackInstanceRegion;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  DescribeStackInstanceInputBuilder() {
    DescribeStackInstanceInput._init(this);
  }

  DescribeStackInstanceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _stackInstanceAccount = $v.stackInstanceAccount;
      _stackInstanceRegion = $v.stackInstanceRegion;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackInstanceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackInstanceInput;
  }

  @override
  void update(void Function(DescribeStackInstanceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackInstanceInput build() => _build();

  _$DescribeStackInstanceInput _build() {
    final _$result = _$v ??
        new _$DescribeStackInstanceInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(
                stackSetName, r'DescribeStackInstanceInput', 'stackSetName'),
            stackInstanceAccount: BuiltValueNullFieldError.checkNotNull(
                stackInstanceAccount,
                r'DescribeStackInstanceInput',
                'stackInstanceAccount'),
            stackInstanceRegion: BuiltValueNullFieldError.checkNotNull(
                stackInstanceRegion,
                r'DescribeStackInstanceInput',
                'stackInstanceRegion'),
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
