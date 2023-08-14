// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_event_window_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceEventWindowResult
    extends ModifyInstanceEventWindowResult {
  @override
  final InstanceEventWindow? instanceEventWindow;

  factory _$ModifyInstanceEventWindowResult(
          [void Function(ModifyInstanceEventWindowResultBuilder)? updates]) =>
      (new ModifyInstanceEventWindowResultBuilder()..update(updates))._build();

  _$ModifyInstanceEventWindowResult._({this.instanceEventWindow}) : super._();

  @override
  ModifyInstanceEventWindowResult rebuild(
          void Function(ModifyInstanceEventWindowResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceEventWindowResultBuilder toBuilder() =>
      new ModifyInstanceEventWindowResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceEventWindowResult &&
        instanceEventWindow == other.instanceEventWindow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceEventWindow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceEventWindowResultBuilder
    implements
        Builder<ModifyInstanceEventWindowResult,
            ModifyInstanceEventWindowResultBuilder> {
  _$ModifyInstanceEventWindowResult? _$v;

  InstanceEventWindowBuilder? _instanceEventWindow;
  InstanceEventWindowBuilder get instanceEventWindow =>
      _$this._instanceEventWindow ??= new InstanceEventWindowBuilder();
  set instanceEventWindow(InstanceEventWindowBuilder? instanceEventWindow) =>
      _$this._instanceEventWindow = instanceEventWindow;

  ModifyInstanceEventWindowResultBuilder();

  ModifyInstanceEventWindowResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindow = $v.instanceEventWindow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceEventWindowResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceEventWindowResult;
  }

  @override
  void update(void Function(ModifyInstanceEventWindowResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceEventWindowResult build() => _build();

  _$ModifyInstanceEventWindowResult _build() {
    _$ModifyInstanceEventWindowResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceEventWindowResult._(
              instanceEventWindow: _instanceEventWindow?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindow';
        _instanceEventWindow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceEventWindowResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
