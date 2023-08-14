// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_launch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastLaunchRequest extends DisableFastLaunchRequest {
  @override
  final String? imageId;
  @override
  final bool force;
  @override
  final bool dryRun;

  factory _$DisableFastLaunchRequest(
          [void Function(DisableFastLaunchRequestBuilder)? updates]) =>
      (new DisableFastLaunchRequestBuilder()..update(updates))._build();

  _$DisableFastLaunchRequest._(
      {this.imageId, required this.force, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        force, r'DisableFastLaunchRequest', 'force');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableFastLaunchRequest', 'dryRun');
  }

  @override
  DisableFastLaunchRequest rebuild(
          void Function(DisableFastLaunchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastLaunchRequestBuilder toBuilder() =>
      new DisableFastLaunchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastLaunchRequest &&
        imageId == other.imageId &&
        force == other.force &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, force.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastLaunchRequestBuilder
    implements
        Builder<DisableFastLaunchRequest, DisableFastLaunchRequestBuilder> {
  _$DisableFastLaunchRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _force;
  bool? get force => _$this._force;
  set force(bool? force) => _$this._force = force;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableFastLaunchRequestBuilder() {
    DisableFastLaunchRequest._init(this);
  }

  DisableFastLaunchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _force = $v.force;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastLaunchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastLaunchRequest;
  }

  @override
  void update(void Function(DisableFastLaunchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastLaunchRequest build() => _build();

  _$DisableFastLaunchRequest _build() {
    final _$result = _$v ??
        new _$DisableFastLaunchRequest._(
            imageId: imageId,
            force: BuiltValueNullFieldError.checkNotNull(
                force, r'DisableFastLaunchRequest', 'force'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableFastLaunchRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
