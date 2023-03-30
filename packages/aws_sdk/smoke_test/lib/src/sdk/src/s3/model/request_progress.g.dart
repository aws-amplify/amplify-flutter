// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.request_progress;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestProgress extends RequestProgress {
  @override
  final bool? enabled;

  factory _$RequestProgress([void Function(RequestProgressBuilder)? updates]) =>
      (new RequestProgressBuilder()..update(updates))._build();

  _$RequestProgress._({this.enabled}) : super._();

  @override
  RequestProgress rebuild(void Function(RequestProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestProgressBuilder toBuilder() =>
      new RequestProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestProgress && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestProgressBuilder
    implements Builder<RequestProgress, RequestProgressBuilder> {
  _$RequestProgress? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  RequestProgressBuilder() {
    RequestProgress._init(this);
  }

  RequestProgressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestProgress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestProgress;
  }

  @override
  void update(void Function(RequestProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestProgress build() => _build();

  _$RequestProgress _build() {
    final _$result = _$v ?? new _$RequestProgress._(enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
