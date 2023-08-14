// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_console_screenshot_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConsoleScreenshotResult extends GetConsoleScreenshotResult {
  @override
  final String? imageData;
  @override
  final String? instanceId;

  factory _$GetConsoleScreenshotResult(
          [void Function(GetConsoleScreenshotResultBuilder)? updates]) =>
      (new GetConsoleScreenshotResultBuilder()..update(updates))._build();

  _$GetConsoleScreenshotResult._({this.imageData, this.instanceId}) : super._();

  @override
  GetConsoleScreenshotResult rebuild(
          void Function(GetConsoleScreenshotResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConsoleScreenshotResultBuilder toBuilder() =>
      new GetConsoleScreenshotResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConsoleScreenshotResult &&
        imageData == other.imageData &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageData.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetConsoleScreenshotResultBuilder
    implements
        Builder<GetConsoleScreenshotResult, GetConsoleScreenshotResultBuilder> {
  _$GetConsoleScreenshotResult? _$v;

  String? _imageData;
  String? get imageData => _$this._imageData;
  set imageData(String? imageData) => _$this._imageData = imageData;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  GetConsoleScreenshotResultBuilder();

  GetConsoleScreenshotResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageData = $v.imageData;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConsoleScreenshotResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConsoleScreenshotResult;
  }

  @override
  void update(void Function(GetConsoleScreenshotResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConsoleScreenshotResult build() => _build();

  _$GetConsoleScreenshotResult _build() {
    final _$result = _$v ??
        new _$GetConsoleScreenshotResult._(
            imageData: imageData, instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
