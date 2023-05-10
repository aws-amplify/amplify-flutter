// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.update_termination_protection_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTerminationProtectionInput
    extends UpdateTerminationProtectionInput {
  @override
  final bool enableTerminationProtection;
  @override
  final String stackName;

  factory _$UpdateTerminationProtectionInput(
          [void Function(UpdateTerminationProtectionInputBuilder)? updates]) =>
      (new UpdateTerminationProtectionInputBuilder()..update(updates))._build();

  _$UpdateTerminationProtectionInput._(
      {required this.enableTerminationProtection, required this.stackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableTerminationProtection,
        r'UpdateTerminationProtectionInput', 'enableTerminationProtection');
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'UpdateTerminationProtectionInput', 'stackName');
  }

  @override
  UpdateTerminationProtectionInput rebuild(
          void Function(UpdateTerminationProtectionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTerminationProtectionInputBuilder toBuilder() =>
      new UpdateTerminationProtectionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTerminationProtectionInput &&
        enableTerminationProtection == other.enableTerminationProtection &&
        stackName == other.stackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enableTerminationProtection.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateTerminationProtectionInputBuilder
    implements
        Builder<UpdateTerminationProtectionInput,
            UpdateTerminationProtectionInputBuilder> {
  _$UpdateTerminationProtectionInput? _$v;

  bool? _enableTerminationProtection;
  bool? get enableTerminationProtection => _$this._enableTerminationProtection;
  set enableTerminationProtection(bool? enableTerminationProtection) =>
      _$this._enableTerminationProtection = enableTerminationProtection;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  UpdateTerminationProtectionInputBuilder() {
    UpdateTerminationProtectionInput._init(this);
  }

  UpdateTerminationProtectionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableTerminationProtection = $v.enableTerminationProtection;
      _stackName = $v.stackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTerminationProtectionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTerminationProtectionInput;
  }

  @override
  void update(void Function(UpdateTerminationProtectionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTerminationProtectionInput build() => _build();

  _$UpdateTerminationProtectionInput _build() {
    final _$result = _$v ??
        new _$UpdateTerminationProtectionInput._(
            enableTerminationProtection: BuiltValueNullFieldError.checkNotNull(
                enableTerminationProtection,
                r'UpdateTerminationProtectionInput',
                'enableTerminationProtection'),
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'UpdateTerminationProtectionInput', 'stackName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
