// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_instance_event_window_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteInstanceEventWindowResult
    extends DeleteInstanceEventWindowResult {
  @override
  final InstanceEventWindowStateChange? instanceEventWindowState;

  factory _$DeleteInstanceEventWindowResult(
          [void Function(DeleteInstanceEventWindowResultBuilder)? updates]) =>
      (new DeleteInstanceEventWindowResultBuilder()..update(updates))._build();

  _$DeleteInstanceEventWindowResult._({this.instanceEventWindowState})
      : super._();

  @override
  DeleteInstanceEventWindowResult rebuild(
          void Function(DeleteInstanceEventWindowResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteInstanceEventWindowResultBuilder toBuilder() =>
      new DeleteInstanceEventWindowResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteInstanceEventWindowResult &&
        instanceEventWindowState == other.instanceEventWindowState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceEventWindowState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteInstanceEventWindowResultBuilder
    implements
        Builder<DeleteInstanceEventWindowResult,
            DeleteInstanceEventWindowResultBuilder> {
  _$DeleteInstanceEventWindowResult? _$v;

  InstanceEventWindowStateChangeBuilder? _instanceEventWindowState;
  InstanceEventWindowStateChangeBuilder get instanceEventWindowState =>
      _$this._instanceEventWindowState ??=
          new InstanceEventWindowStateChangeBuilder();
  set instanceEventWindowState(
          InstanceEventWindowStateChangeBuilder? instanceEventWindowState) =>
      _$this._instanceEventWindowState = instanceEventWindowState;

  DeleteInstanceEventWindowResultBuilder();

  DeleteInstanceEventWindowResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindowState = $v.instanceEventWindowState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteInstanceEventWindowResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteInstanceEventWindowResult;
  }

  @override
  void update(void Function(DeleteInstanceEventWindowResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteInstanceEventWindowResult build() => _build();

  _$DeleteInstanceEventWindowResult _build() {
    _$DeleteInstanceEventWindowResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteInstanceEventWindowResult._(
              instanceEventWindowState: _instanceEventWindowState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindowState';
        _instanceEventWindowState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteInstanceEventWindowResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
