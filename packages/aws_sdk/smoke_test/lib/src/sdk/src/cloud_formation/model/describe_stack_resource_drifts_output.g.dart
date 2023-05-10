// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_resource_drifts_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackResourceDriftsOutput
    extends DescribeStackResourceDriftsOutput {
  @override
  final _i3.BuiltList<_i2.StackResourceDrift> stackResourceDrifts;
  @override
  final String? nextToken;

  factory _$DescribeStackResourceDriftsOutput(
          [void Function(DescribeStackResourceDriftsOutputBuilder)? updates]) =>
      (new DescribeStackResourceDriftsOutputBuilder()..update(updates))
          ._build();

  _$DescribeStackResourceDriftsOutput._(
      {required this.stackResourceDrifts, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackResourceDrifts,
        r'DescribeStackResourceDriftsOutput', 'stackResourceDrifts');
  }

  @override
  DescribeStackResourceDriftsOutput rebuild(
          void Function(DescribeStackResourceDriftsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackResourceDriftsOutputBuilder toBuilder() =>
      new DescribeStackResourceDriftsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackResourceDriftsOutput &&
        stackResourceDrifts == other.stackResourceDrifts &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResourceDrifts.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackResourceDriftsOutputBuilder
    implements
        Builder<DescribeStackResourceDriftsOutput,
            DescribeStackResourceDriftsOutputBuilder> {
  _$DescribeStackResourceDriftsOutput? _$v;

  _i3.ListBuilder<_i2.StackResourceDrift>? _stackResourceDrifts;
  _i3.ListBuilder<_i2.StackResourceDrift> get stackResourceDrifts =>
      _$this._stackResourceDrifts ??=
          new _i3.ListBuilder<_i2.StackResourceDrift>();
  set stackResourceDrifts(
          _i3.ListBuilder<_i2.StackResourceDrift>? stackResourceDrifts) =>
      _$this._stackResourceDrifts = stackResourceDrifts;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStackResourceDriftsOutputBuilder() {
    DescribeStackResourceDriftsOutput._init(this);
  }

  DescribeStackResourceDriftsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResourceDrifts = $v.stackResourceDrifts.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackResourceDriftsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackResourceDriftsOutput;
  }

  @override
  void update(
      void Function(DescribeStackResourceDriftsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackResourceDriftsOutput build() => _build();

  _$DescribeStackResourceDriftsOutput _build() {
    _$DescribeStackResourceDriftsOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackResourceDriftsOutput._(
              stackResourceDrifts: stackResourceDrifts.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackResourceDrifts';
        stackResourceDrifts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackResourceDriftsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
