// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_instance_event_window_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateInstanceEventWindowResult
    extends DisassociateInstanceEventWindowResult {
  @override
  final InstanceEventWindow? instanceEventWindow;

  factory _$DisassociateInstanceEventWindowResult(
          [void Function(DisassociateInstanceEventWindowResultBuilder)?
              updates]) =>
      (new DisassociateInstanceEventWindowResultBuilder()..update(updates))
          ._build();

  _$DisassociateInstanceEventWindowResult._({this.instanceEventWindow})
      : super._();

  @override
  DisassociateInstanceEventWindowResult rebuild(
          void Function(DisassociateInstanceEventWindowResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateInstanceEventWindowResultBuilder toBuilder() =>
      new DisassociateInstanceEventWindowResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateInstanceEventWindowResult &&
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

class DisassociateInstanceEventWindowResultBuilder
    implements
        Builder<DisassociateInstanceEventWindowResult,
            DisassociateInstanceEventWindowResultBuilder> {
  _$DisassociateInstanceEventWindowResult? _$v;

  InstanceEventWindowBuilder? _instanceEventWindow;
  InstanceEventWindowBuilder get instanceEventWindow =>
      _$this._instanceEventWindow ??= new InstanceEventWindowBuilder();
  set instanceEventWindow(InstanceEventWindowBuilder? instanceEventWindow) =>
      _$this._instanceEventWindow = instanceEventWindow;

  DisassociateInstanceEventWindowResultBuilder();

  DisassociateInstanceEventWindowResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindow = $v.instanceEventWindow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateInstanceEventWindowResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateInstanceEventWindowResult;
  }

  @override
  void update(
      void Function(DisassociateInstanceEventWindowResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateInstanceEventWindowResult build() => _build();

  _$DisassociateInstanceEventWindowResult _build() {
    _$DisassociateInstanceEventWindowResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateInstanceEventWindowResult._(
              instanceEventWindow: _instanceEventWindow?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindow';
        _instanceEventWindow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateInstanceEventWindowResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
