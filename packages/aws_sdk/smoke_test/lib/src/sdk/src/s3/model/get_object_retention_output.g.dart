// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_retention_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectRetentionOutput extends GetObjectRetentionOutput {
  @override
  final _i3.ObjectLockRetention? retention;

  factory _$GetObjectRetentionOutput(
          [void Function(GetObjectRetentionOutputBuilder)? updates]) =>
      (new GetObjectRetentionOutputBuilder()..update(updates))._build();

  _$GetObjectRetentionOutput._({this.retention}) : super._();

  @override
  GetObjectRetentionOutput rebuild(
          void Function(GetObjectRetentionOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRetentionOutputBuilder toBuilder() =>
      new GetObjectRetentionOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRetentionOutput && retention == other.retention;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectRetentionOutputBuilder
    implements
        Builder<GetObjectRetentionOutput, GetObjectRetentionOutputBuilder> {
  _$GetObjectRetentionOutput? _$v;

  _i3.ObjectLockRetentionBuilder? _retention;
  _i3.ObjectLockRetentionBuilder get retention =>
      _$this._retention ??= new _i3.ObjectLockRetentionBuilder();
  set retention(_i3.ObjectLockRetentionBuilder? retention) =>
      _$this._retention = retention;

  GetObjectRetentionOutputBuilder() {
    GetObjectRetentionOutput._init(this);
  }

  GetObjectRetentionOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retention = $v.retention?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectRetentionOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRetentionOutput;
  }

  @override
  void update(void Function(GetObjectRetentionOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRetentionOutput build() => _build();

  _$GetObjectRetentionOutput _build() {
    _$GetObjectRetentionOutput _$result;
    try {
      _$result = _$v ??
          new _$GetObjectRetentionOutput._(retention: _retention?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retention';
        _retention?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetObjectRetentionOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
