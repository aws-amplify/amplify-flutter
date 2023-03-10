// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_global_table_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeGlobalTableOutput extends DescribeGlobalTableOutput {
  @override
  final _i2.GlobalTableDescription? globalTableDescription;

  factory _$DescribeGlobalTableOutput(
          [void Function(DescribeGlobalTableOutputBuilder)? updates]) =>
      (new DescribeGlobalTableOutputBuilder()..update(updates))._build();

  _$DescribeGlobalTableOutput._({this.globalTableDescription}) : super._();

  @override
  DescribeGlobalTableOutput rebuild(
          void Function(DescribeGlobalTableOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeGlobalTableOutputBuilder toBuilder() =>
      new DescribeGlobalTableOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeGlobalTableOutput &&
        globalTableDescription == other.globalTableDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTableDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeGlobalTableOutputBuilder
    implements
        Builder<DescribeGlobalTableOutput, DescribeGlobalTableOutputBuilder> {
  _$DescribeGlobalTableOutput? _$v;

  _i2.GlobalTableDescriptionBuilder? _globalTableDescription;
  _i2.GlobalTableDescriptionBuilder get globalTableDescription =>
      _$this._globalTableDescription ??=
          new _i2.GlobalTableDescriptionBuilder();
  set globalTableDescription(
          _i2.GlobalTableDescriptionBuilder? globalTableDescription) =>
      _$this._globalTableDescription = globalTableDescription;

  DescribeGlobalTableOutputBuilder() {
    DescribeGlobalTableOutput._init(this);
  }

  DescribeGlobalTableOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableDescription = $v.globalTableDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeGlobalTableOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeGlobalTableOutput;
  }

  @override
  void update(void Function(DescribeGlobalTableOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeGlobalTableOutput build() => _build();

  _$DescribeGlobalTableOutput _build() {
    _$DescribeGlobalTableOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeGlobalTableOutput._(
              globalTableDescription: _globalTableDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTableDescription';
        _globalTableDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeGlobalTableOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
