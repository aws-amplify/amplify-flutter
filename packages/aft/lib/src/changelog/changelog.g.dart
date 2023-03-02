// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changelog.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Changelog extends Changelog {
  @override
  final String originalText;
  @override
  final BuiltListMultimap<Version, Node> versions;

  factory _$Changelog([void Function(ChangelogBuilder)? updates]) =>
      (new ChangelogBuilder()..update(updates))._build();

  _$Changelog._({required this.originalText, required this.versions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        originalText, r'Changelog', 'originalText');
    BuiltValueNullFieldError.checkNotNull(versions, r'Changelog', 'versions');
  }

  @override
  Changelog rebuild(void Function(ChangelogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangelogBuilder toBuilder() => new ChangelogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Changelog &&
        originalText == other.originalText &&
        versions == other.versions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, originalText.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangelogBuilder implements Builder<Changelog, ChangelogBuilder> {
  _$Changelog? _$v;

  String? _originalText;
  String? get originalText => _$this._originalText;
  set originalText(String? originalText) => _$this._originalText = originalText;

  ListMultimapBuilder<Version, Node>? _versions;
  ListMultimapBuilder<Version, Node> get versions =>
      _$this._versions ??= new ListMultimapBuilder<Version, Node>();
  set versions(ListMultimapBuilder<Version, Node>? versions) =>
      _$this._versions = versions;

  ChangelogBuilder();

  ChangelogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _originalText = $v.originalText;
      _versions = $v.versions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Changelog other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Changelog;
  }

  @override
  void update(void Function(ChangelogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Changelog build() => _build();

  _$Changelog _build() {
    _$Changelog _$result;
    try {
      _$result = _$v ??
          new _$Changelog._(
              originalText: BuiltValueNullFieldError.checkNotNull(
                  originalText, r'Changelog', 'originalText'),
              versions: versions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        versions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Changelog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
