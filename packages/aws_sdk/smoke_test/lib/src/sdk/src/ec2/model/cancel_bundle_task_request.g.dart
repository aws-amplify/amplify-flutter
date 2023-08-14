// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_bundle_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelBundleTaskRequest extends CancelBundleTaskRequest {
  @override
  final String? bundleId;
  @override
  final bool dryRun;

  factory _$CancelBundleTaskRequest(
          [void Function(CancelBundleTaskRequestBuilder)? updates]) =>
      (new CancelBundleTaskRequestBuilder()..update(updates))._build();

  _$CancelBundleTaskRequest._({this.bundleId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelBundleTaskRequest', 'dryRun');
  }

  @override
  CancelBundleTaskRequest rebuild(
          void Function(CancelBundleTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelBundleTaskRequestBuilder toBuilder() =>
      new CancelBundleTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelBundleTaskRequest &&
        bundleId == other.bundleId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bundleId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelBundleTaskRequestBuilder
    implements
        Builder<CancelBundleTaskRequest, CancelBundleTaskRequestBuilder> {
  _$CancelBundleTaskRequest? _$v;

  String? _bundleId;
  String? get bundleId => _$this._bundleId;
  set bundleId(String? bundleId) => _$this._bundleId = bundleId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CancelBundleTaskRequestBuilder() {
    CancelBundleTaskRequest._init(this);
  }

  CancelBundleTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bundleId = $v.bundleId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelBundleTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelBundleTaskRequest;
  }

  @override
  void update(void Function(CancelBundleTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelBundleTaskRequest build() => _build();

  _$CancelBundleTaskRequest _build() {
    final _$result = _$v ??
        new _$CancelBundleTaskRequest._(
            bundleId: bundleId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CancelBundleTaskRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
