// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instance_event_window_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceEventWindowResult
    extends CreateInstanceEventWindowResult {
  @override
  final InstanceEventWindow? instanceEventWindow;

  factory _$CreateInstanceEventWindowResult(
          [void Function(CreateInstanceEventWindowResultBuilder)? updates]) =>
      (new CreateInstanceEventWindowResultBuilder()..update(updates))._build();

  _$CreateInstanceEventWindowResult._({this.instanceEventWindow}) : super._();

  @override
  CreateInstanceEventWindowResult rebuild(
          void Function(CreateInstanceEventWindowResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceEventWindowResultBuilder toBuilder() =>
      new CreateInstanceEventWindowResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceEventWindowResult &&
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

class CreateInstanceEventWindowResultBuilder
    implements
        Builder<CreateInstanceEventWindowResult,
            CreateInstanceEventWindowResultBuilder> {
  _$CreateInstanceEventWindowResult? _$v;

  InstanceEventWindowBuilder? _instanceEventWindow;
  InstanceEventWindowBuilder get instanceEventWindow =>
      _$this._instanceEventWindow ??= new InstanceEventWindowBuilder();
  set instanceEventWindow(InstanceEventWindowBuilder? instanceEventWindow) =>
      _$this._instanceEventWindow = instanceEventWindow;

  CreateInstanceEventWindowResultBuilder();

  CreateInstanceEventWindowResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindow = $v.instanceEventWindow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceEventWindowResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceEventWindowResult;
  }

  @override
  void update(void Function(CreateInstanceEventWindowResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceEventWindowResult build() => _build();

  _$CreateInstanceEventWindowResult _build() {
    _$CreateInstanceEventWindowResult _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceEventWindowResult._(
              instanceEventWindow: _instanceEventWindow?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindow';
        _instanceEventWindow?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceEventWindowResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
