// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_resources_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackResourcesOutput extends DescribeStackResourcesOutput {
  @override
  final _i3.BuiltList<_i2.StackResource>? stackResources;

  factory _$DescribeStackResourcesOutput(
          [void Function(DescribeStackResourcesOutputBuilder)? updates]) =>
      (new DescribeStackResourcesOutputBuilder()..update(updates))._build();

  _$DescribeStackResourcesOutput._({this.stackResources}) : super._();

  @override
  DescribeStackResourcesOutput rebuild(
          void Function(DescribeStackResourcesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackResourcesOutputBuilder toBuilder() =>
      new DescribeStackResourcesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackResourcesOutput &&
        stackResources == other.stackResources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackResources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackResourcesOutputBuilder
    implements
        Builder<DescribeStackResourcesOutput,
            DescribeStackResourcesOutputBuilder> {
  _$DescribeStackResourcesOutput? _$v;

  _i3.ListBuilder<_i2.StackResource>? _stackResources;
  _i3.ListBuilder<_i2.StackResource> get stackResources =>
      _$this._stackResources ??= new _i3.ListBuilder<_i2.StackResource>();
  set stackResources(_i3.ListBuilder<_i2.StackResource>? stackResources) =>
      _$this._stackResources = stackResources;

  DescribeStackResourcesOutputBuilder() {
    DescribeStackResourcesOutput._init(this);
  }

  DescribeStackResourcesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackResources = $v.stackResources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackResourcesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackResourcesOutput;
  }

  @override
  void update(void Function(DescribeStackResourcesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackResourcesOutput build() => _build();

  _$DescribeStackResourcesOutput _build() {
    _$DescribeStackResourcesOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackResourcesOutput._(
              stackResources: _stackResources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackResources';
        _stackResources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackResourcesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
