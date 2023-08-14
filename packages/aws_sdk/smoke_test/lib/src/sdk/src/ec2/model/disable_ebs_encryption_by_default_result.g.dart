// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_ebs_encryption_by_default_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableEbsEncryptionByDefaultResult
    extends DisableEbsEncryptionByDefaultResult {
  @override
  final bool ebsEncryptionByDefault;

  factory _$DisableEbsEncryptionByDefaultResult(
          [void Function(DisableEbsEncryptionByDefaultResultBuilder)?
              updates]) =>
      (new DisableEbsEncryptionByDefaultResultBuilder()..update(updates))
          ._build();

  _$DisableEbsEncryptionByDefaultResult._(
      {required this.ebsEncryptionByDefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ebsEncryptionByDefault,
        r'DisableEbsEncryptionByDefaultResult', 'ebsEncryptionByDefault');
  }

  @override
  DisableEbsEncryptionByDefaultResult rebuild(
          void Function(DisableEbsEncryptionByDefaultResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableEbsEncryptionByDefaultResultBuilder toBuilder() =>
      new DisableEbsEncryptionByDefaultResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableEbsEncryptionByDefaultResult &&
        ebsEncryptionByDefault == other.ebsEncryptionByDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ebsEncryptionByDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableEbsEncryptionByDefaultResultBuilder
    implements
        Builder<DisableEbsEncryptionByDefaultResult,
            DisableEbsEncryptionByDefaultResultBuilder> {
  _$DisableEbsEncryptionByDefaultResult? _$v;

  bool? _ebsEncryptionByDefault;
  bool? get ebsEncryptionByDefault => _$this._ebsEncryptionByDefault;
  set ebsEncryptionByDefault(bool? ebsEncryptionByDefault) =>
      _$this._ebsEncryptionByDefault = ebsEncryptionByDefault;

  DisableEbsEncryptionByDefaultResultBuilder() {
    DisableEbsEncryptionByDefaultResult._init(this);
  }

  DisableEbsEncryptionByDefaultResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ebsEncryptionByDefault = $v.ebsEncryptionByDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableEbsEncryptionByDefaultResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableEbsEncryptionByDefaultResult;
  }

  @override
  void update(
      void Function(DisableEbsEncryptionByDefaultResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableEbsEncryptionByDefaultResult build() => _build();

  _$DisableEbsEncryptionByDefaultResult _build() {
    final _$result = _$v ??
        new _$DisableEbsEncryptionByDefaultResult._(
            ebsEncryptionByDefault: BuiltValueNullFieldError.checkNotNull(
                ebsEncryptionByDefault,
                r'DisableEbsEncryptionByDefaultResult',
                'ebsEncryptionByDefault'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
