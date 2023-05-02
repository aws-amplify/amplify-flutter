// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_resource_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackResourceOutput extends DescribeStackResourceOutput {
  @override
  final _i2.StackResourceDetail? stackResourceDetail;

  factory _$DescribeStackResourceOutput(
          [void Function(DescribeStackResourceOutputBuilder)? updates]) =>
      (new DescribeStackResourceOutputBuilder()..update(updates))._build();

  _$DescribeStackResourceOutput._({this.stackResourceDetail}) : super._();

  @override
  DescribeStackResourceOutput rebuild(
          void Function(DescribeStackResourceOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackResourceOutputBuilder toBuilder() =>
      new DescribeStackResourceOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackResourceOutput &&
        stackResourceDetail == other.stackResourceDetail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResourceDetail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackResourceOutputBuilder
    implements
        Builder<DescribeStackResourceOutput,
            DescribeStackResourceOutputBuilder> {
  _$DescribeStackResourceOutput? _$v;

  _i2.StackResourceDetailBuilder? _stackResourceDetail;
  _i2.StackResourceDetailBuilder get stackResourceDetail =>
      _$this._stackResourceDetail ??= new _i2.StackResourceDetailBuilder();
  set stackResourceDetail(
          _i2.StackResourceDetailBuilder? stackResourceDetail) =>
      _$this._stackResourceDetail = stackResourceDetail;

  DescribeStackResourceOutputBuilder() {
    DescribeStackResourceOutput._init(this);
  }

  DescribeStackResourceOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResourceDetail = $v.stackResourceDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackResourceOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackResourceOutput;
  }

  @override
  void update(void Function(DescribeStackResourceOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackResourceOutput build() => _build();

  _$DescribeStackResourceOutput _build() {
    _$DescribeStackResourceOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackResourceOutput._(
              stackResourceDetail: _stackResourceDetail?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackResourceDetail';
        _stackResourceDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackResourceOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
