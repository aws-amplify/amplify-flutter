// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_drift_detection_status_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackDriftDetectionStatusInput
    extends DescribeStackDriftDetectionStatusInput {
  @override
  final String stackDriftDetectionId;

  factory _$DescribeStackDriftDetectionStatusInput(
          [void Function(DescribeStackDriftDetectionStatusInputBuilder)?
              updates]) =>
      (new DescribeStackDriftDetectionStatusInputBuilder()..update(updates))
          ._build();

  _$DescribeStackDriftDetectionStatusInput._(
      {required this.stackDriftDetectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(stackDriftDetectionId,
        r'DescribeStackDriftDetectionStatusInput', 'stackDriftDetectionId');
  }

  @override
  DescribeStackDriftDetectionStatusInput rebuild(
          void Function(DescribeStackDriftDetectionStatusInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackDriftDetectionStatusInputBuilder toBuilder() =>
      new DescribeStackDriftDetectionStatusInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackDriftDetectionStatusInput &&
        stackDriftDetectionId == other.stackDriftDetectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackDriftDetectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackDriftDetectionStatusInputBuilder
    implements
        Builder<DescribeStackDriftDetectionStatusInput,
            DescribeStackDriftDetectionStatusInputBuilder> {
  _$DescribeStackDriftDetectionStatusInput? _$v;

  String? _stackDriftDetectionId;
  String? get stackDriftDetectionId => _$this._stackDriftDetectionId;
  set stackDriftDetectionId(String? stackDriftDetectionId) =>
      _$this._stackDriftDetectionId = stackDriftDetectionId;

  DescribeStackDriftDetectionStatusInputBuilder() {
    DescribeStackDriftDetectionStatusInput._init(this);
  }

  DescribeStackDriftDetectionStatusInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackDriftDetectionId = $v.stackDriftDetectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackDriftDetectionStatusInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackDriftDetectionStatusInput;
  }

  @override
  void update(
      void Function(DescribeStackDriftDetectionStatusInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackDriftDetectionStatusInput build() => _build();

  _$DescribeStackDriftDetectionStatusInput _build() {
    final _$result = _$v ??
        new _$DescribeStackDriftDetectionStatusInput._(
            stackDriftDetectionId: BuiltValueNullFieldError.checkNotNull(
                stackDriftDetectionId,
                r'DescribeStackDriftDetectionStatusInput',
                'stackDriftDetectionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
