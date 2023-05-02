// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_type_registration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTypeRegistrationOutput extends DescribeTypeRegistrationOutput {
  @override
  final _i2.RegistrationStatus? progressStatus;
  @override
  final String? description;
  @override
  final String? typeArn;
  @override
  final String? typeVersionArn;

  factory _$DescribeTypeRegistrationOutput(
          [void Function(DescribeTypeRegistrationOutputBuilder)? updates]) =>
      (new DescribeTypeRegistrationOutputBuilder()..update(updates))._build();

  _$DescribeTypeRegistrationOutput._(
      {this.progressStatus,
      this.description,
      this.typeArn,
      this.typeVersionArn})
      : super._();

  @override
  DescribeTypeRegistrationOutput rebuild(
          void Function(DescribeTypeRegistrationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTypeRegistrationOutputBuilder toBuilder() =>
      new DescribeTypeRegistrationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTypeRegistrationOutput &&
        progressStatus == other.progressStatus &&
        description == other.description &&
        typeArn == other.typeArn &&
        typeVersionArn == other.typeVersionArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, progressStatus.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, typeArn.hashCode);
    _$hash = $jc(_$hash, typeVersionArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTypeRegistrationOutputBuilder
    implements
        Builder<DescribeTypeRegistrationOutput,
            DescribeTypeRegistrationOutputBuilder> {
  _$DescribeTypeRegistrationOutput? _$v;

  _i2.RegistrationStatus? _progressStatus;
  _i2.RegistrationStatus? get progressStatus => _$this._progressStatus;
  set progressStatus(_i2.RegistrationStatus? progressStatus) =>
      _$this._progressStatus = progressStatus;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _typeArn;
  String? get typeArn => _$this._typeArn;
  set typeArn(String? typeArn) => _$this._typeArn = typeArn;

  String? _typeVersionArn;
  String? get typeVersionArn => _$this._typeVersionArn;
  set typeVersionArn(String? typeVersionArn) =>
      _$this._typeVersionArn = typeVersionArn;

  DescribeTypeRegistrationOutputBuilder() {
    DescribeTypeRegistrationOutput._init(this);
  }

  DescribeTypeRegistrationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _progressStatus = $v.progressStatus;
      _description = $v.description;
      _typeArn = $v.typeArn;
      _typeVersionArn = $v.typeVersionArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTypeRegistrationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTypeRegistrationOutput;
  }

  @override
  void update(void Function(DescribeTypeRegistrationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTypeRegistrationOutput build() => _build();

  _$DescribeTypeRegistrationOutput _build() {
    final _$result = _$v ??
        new _$DescribeTypeRegistrationOutput._(
            progressStatus: progressStatus,
            description: description,
            typeArn: typeArn,
            typeVersionArn: typeVersionArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
