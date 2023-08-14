// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_s3_destination_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogS3DestinationOptions
    extends VerifiedAccessLogS3DestinationOptions {
  @override
  final bool enabled;
  @override
  final String? bucketName;
  @override
  final String? prefix;
  @override
  final String? bucketOwner;

  factory _$VerifiedAccessLogS3DestinationOptions(
          [void Function(VerifiedAccessLogS3DestinationOptionsBuilder)?
              updates]) =>
      (new VerifiedAccessLogS3DestinationOptionsBuilder()..update(updates))
          ._build();

  _$VerifiedAccessLogS3DestinationOptions._(
      {required this.enabled, this.bucketName, this.prefix, this.bucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'VerifiedAccessLogS3DestinationOptions', 'enabled');
  }

  @override
  VerifiedAccessLogS3DestinationOptions rebuild(
          void Function(VerifiedAccessLogS3DestinationOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogS3DestinationOptionsBuilder toBuilder() =>
      new VerifiedAccessLogS3DestinationOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogS3DestinationOptions &&
        enabled == other.enabled &&
        bucketName == other.bucketName &&
        prefix == other.prefix &&
        bucketOwner == other.bucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, bucketName.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, bucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogS3DestinationOptionsBuilder
    implements
        Builder<VerifiedAccessLogS3DestinationOptions,
            VerifiedAccessLogS3DestinationOptionsBuilder> {
  _$VerifiedAccessLogS3DestinationOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _bucketName;
  String? get bucketName => _$this._bucketName;
  set bucketName(String? bucketName) => _$this._bucketName = bucketName;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _bucketOwner;
  String? get bucketOwner => _$this._bucketOwner;
  set bucketOwner(String? bucketOwner) => _$this._bucketOwner = bucketOwner;

  VerifiedAccessLogS3DestinationOptionsBuilder() {
    VerifiedAccessLogS3DestinationOptions._init(this);
  }

  VerifiedAccessLogS3DestinationOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _bucketName = $v.bucketName;
      _prefix = $v.prefix;
      _bucketOwner = $v.bucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogS3DestinationOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogS3DestinationOptions;
  }

  @override
  void update(
      void Function(VerifiedAccessLogS3DestinationOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogS3DestinationOptions build() => _build();

  _$VerifiedAccessLogS3DestinationOptions _build() {
    final _$result = _$v ??
        new _$VerifiedAccessLogS3DestinationOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'VerifiedAccessLogS3DestinationOptions', 'enabled'),
            bucketName: bucketName,
            prefix: prefix,
            bucketOwner: bucketOwner);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
