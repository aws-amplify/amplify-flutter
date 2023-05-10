// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_termination_protection_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTerminationProtectionOutput
    extends UpdateTerminationProtectionOutput {
  @override
  final String? stackId;

  factory _$UpdateTerminationProtectionOutput(
          [void Function(UpdateTerminationProtectionOutputBuilder)? updates]) =>
      (new UpdateTerminationProtectionOutputBuilder()..update(updates))
          ._build();

  _$UpdateTerminationProtectionOutput._({this.stackId}) : super._();

  @override
  UpdateTerminationProtectionOutput rebuild(
          void Function(UpdateTerminationProtectionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTerminationProtectionOutputBuilder toBuilder() =>
      new UpdateTerminationProtectionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTerminationProtectionOutput &&
        stackId == other.stackId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateTerminationProtectionOutputBuilder
    implements
        Builder<UpdateTerminationProtectionOutput,
            UpdateTerminationProtectionOutputBuilder> {
  _$UpdateTerminationProtectionOutput? _$v;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  UpdateTerminationProtectionOutputBuilder() {
    UpdateTerminationProtectionOutput._init(this);
  }

  UpdateTerminationProtectionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackId = $v.stackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTerminationProtectionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTerminationProtectionOutput;
  }

  @override
  void update(
      void Function(UpdateTerminationProtectionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTerminationProtectionOutput build() => _build();

  _$UpdateTerminationProtectionOutput _build() {
    final _$result =
        _$v ?? new _$UpdateTerminationProtectionOutput._(stackId: stackId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
