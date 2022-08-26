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
    return $jf($jc($jc(0, originalText.hashCode), versions.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
