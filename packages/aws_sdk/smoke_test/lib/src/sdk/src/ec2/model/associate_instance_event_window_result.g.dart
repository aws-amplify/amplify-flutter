// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_instance_event_window_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateInstanceEventWindowResult
    extends AssociateInstanceEventWindowResult {
  @override
  final InstanceEventWindow? instanceEventWindow;

  factory _$AssociateInstanceEventWindowResult(
          [void Function(AssociateInstanceEventWindowResultBuilder)?
              updates]) =>
      (new AssociateInstanceEventWindowResultBuilder()..update(updates))
          ._build();

  _$AssociateInstanceEventWindowResult._({this.instanceEventWindow})
      : super._();

  @override
  AssociateInstanceEventWindowResult rebuild(
          void Function(AssociateInstanceEventWindowResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateInstanceEventWindowResultBuilder toBuilder() =>
      new AssociateInstanceEventWindowResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateInstanceEventWindowResult &&
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

class AssociateInstanceEventWindowResultBuilder
    implements
        Builder<AssociateInstanceEventWindowResult,
            AssociateInstanceEventWindowResultBuilder> {
  _$AssociateInstanceEventWindowResult? _$v;

  InstanceEventWindowBuilder? _instanceEventWindow;
  InstanceEventWindowBuilder get instanceEventWindow =>
      _$this._instanceEventWindow ??= new InstanceEventWindowBuilder();
  set instanceEventWindow(InstanceEventWindowBuilder? instanceEventWindow) =>
      _$this._instanceEventWindow = instanceEventWindow;

  AssociateInstanceEventWindowResultBuilder();

  AssociateInstanceEventWindowResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindow = $v.instanceEventWindow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateInstanceEventWindowResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateInstanceEventWindowResult;
  }

  @override
  void update(
      void Function(AssociateInstanceEventWindowResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateInstanceEventWindowResult build() => _build();

  _$AssociateInstanceEventWindowResult _build() {
    _$AssociateInstanceEventWindowResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateInstanceEventWindowResult._(
              instanceEventWindow: _instanceEventWindow?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindow';
        _instanceEventWindow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateInstanceEventWindowResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
