// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_ebs_encryption_by_default_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableEbsEncryptionByDefaultResult
    extends EnableEbsEncryptionByDefaultResult {
  @override
  final bool ebsEncryptionByDefault;

  factory _$EnableEbsEncryptionByDefaultResult(
          [void Function(EnableEbsEncryptionByDefaultResultBuilder)?
              updates]) =>
      (new EnableEbsEncryptionByDefaultResultBuilder()..update(updates))
          ._build();

  _$EnableEbsEncryptionByDefaultResult._({required this.ebsEncryptionByDefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ebsEncryptionByDefault,
        r'EnableEbsEncryptionByDefaultResult', 'ebsEncryptionByDefault');
  }

  @override
  EnableEbsEncryptionByDefaultResult rebuild(
          void Function(EnableEbsEncryptionByDefaultResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableEbsEncryptionByDefaultResultBuilder toBuilder() =>
      new EnableEbsEncryptionByDefaultResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableEbsEncryptionByDefaultResult &&
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

class EnableEbsEncryptionByDefaultResultBuilder
    implements
        Builder<EnableEbsEncryptionByDefaultResult,
            EnableEbsEncryptionByDefaultResultBuilder> {
  _$EnableEbsEncryptionByDefaultResult? _$v;

  bool? _ebsEncryptionByDefault;
  bool? get ebsEncryptionByDefault => _$this._ebsEncryptionByDefault;
  set ebsEncryptionByDefault(bool? ebsEncryptionByDefault) =>
      _$this._ebsEncryptionByDefault = ebsEncryptionByDefault;

  EnableEbsEncryptionByDefaultResultBuilder() {
    EnableEbsEncryptionByDefaultResult._init(this);
  }

  EnableEbsEncryptionByDefaultResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ebsEncryptionByDefault = $v.ebsEncryptionByDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableEbsEncryptionByDefaultResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableEbsEncryptionByDefaultResult;
  }

  @override
  void update(
      void Function(EnableEbsEncryptionByDefaultResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableEbsEncryptionByDefaultResult build() => _build();

  _$EnableEbsEncryptionByDefaultResult _build() {
    final _$result = _$v ??
        new _$EnableEbsEncryptionByDefaultResult._(
            ebsEncryptionByDefault: BuiltValueNullFieldError.checkNotNull(
                ebsEncryptionByDefault,
                r'EnableEbsEncryptionByDefaultResult',
                'ebsEncryptionByDefault'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
