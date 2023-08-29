// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_replace_root_volume_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReplaceRootVolumeTaskResult
    extends CreateReplaceRootVolumeTaskResult {
  @override
  final ReplaceRootVolumeTask? replaceRootVolumeTask;

  factory _$CreateReplaceRootVolumeTaskResult(
          [void Function(CreateReplaceRootVolumeTaskResultBuilder)? updates]) =>
      (new CreateReplaceRootVolumeTaskResultBuilder()..update(updates))
          ._build();

  _$CreateReplaceRootVolumeTaskResult._({this.replaceRootVolumeTask})
      : super._();

  @override
  CreateReplaceRootVolumeTaskResult rebuild(
          void Function(CreateReplaceRootVolumeTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReplaceRootVolumeTaskResultBuilder toBuilder() =>
      new CreateReplaceRootVolumeTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReplaceRootVolumeTaskResult &&
        replaceRootVolumeTask == other.replaceRootVolumeTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replaceRootVolumeTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateReplaceRootVolumeTaskResultBuilder
    implements
        Builder<CreateReplaceRootVolumeTaskResult,
            CreateReplaceRootVolumeTaskResultBuilder> {
  _$CreateReplaceRootVolumeTaskResult? _$v;

  ReplaceRootVolumeTaskBuilder? _replaceRootVolumeTask;
  ReplaceRootVolumeTaskBuilder get replaceRootVolumeTask =>
      _$this._replaceRootVolumeTask ??= new ReplaceRootVolumeTaskBuilder();
  set replaceRootVolumeTask(
          ReplaceRootVolumeTaskBuilder? replaceRootVolumeTask) =>
      _$this._replaceRootVolumeTask = replaceRootVolumeTask;

  CreateReplaceRootVolumeTaskResultBuilder();

  CreateReplaceRootVolumeTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replaceRootVolumeTask = $v.replaceRootVolumeTask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReplaceRootVolumeTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReplaceRootVolumeTaskResult;
  }

  @override
  void update(
      void Function(CreateReplaceRootVolumeTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReplaceRootVolumeTaskResult build() => _build();

  _$CreateReplaceRootVolumeTaskResult _build() {
    _$CreateReplaceRootVolumeTaskResult _$result;
    try {
      _$result = _$v ??
          new _$CreateReplaceRootVolumeTaskResult._(
              replaceRootVolumeTask: _replaceRootVolumeTask?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replaceRootVolumeTask';
        _replaceRootVolumeTask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateReplaceRootVolumeTaskResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
