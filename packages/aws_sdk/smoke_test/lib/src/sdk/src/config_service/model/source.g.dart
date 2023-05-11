// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Source extends Source {
  @override
  final _i2.Owner owner;
  @override
  final String? sourceIdentifier;
  @override
  final _i5.BuiltList<_i3.SourceDetail>? sourceDetails;
  @override
  final _i4.CustomPolicyDetails? customPolicyDetails;

  factory _$Source([void Function(SourceBuilder)? updates]) =>
      (new SourceBuilder()..update(updates))._build();

  _$Source._(
      {required this.owner,
      this.sourceIdentifier,
      this.sourceDetails,
      this.customPolicyDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(owner, r'Source', 'owner');
  }

  @override
  Source rebuild(void Function(SourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceBuilder toBuilder() => new SourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Source &&
        owner == other.owner &&
        sourceIdentifier == other.sourceIdentifier &&
        sourceDetails == other.sourceDetails &&
        customPolicyDetails == other.customPolicyDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, sourceIdentifier.hashCode);
    _$hash = $jc(_$hash, sourceDetails.hashCode);
    _$hash = $jc(_$hash, customPolicyDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SourceBuilder implements Builder<Source, SourceBuilder> {
  _$Source? _$v;

  _i2.Owner? _owner;
  _i2.Owner? get owner => _$this._owner;
  set owner(_i2.Owner? owner) => _$this._owner = owner;

  String? _sourceIdentifier;
  String? get sourceIdentifier => _$this._sourceIdentifier;
  set sourceIdentifier(String? sourceIdentifier) =>
      _$this._sourceIdentifier = sourceIdentifier;

  _i5.ListBuilder<_i3.SourceDetail>? _sourceDetails;
  _i5.ListBuilder<_i3.SourceDetail> get sourceDetails =>
      _$this._sourceDetails ??= new _i5.ListBuilder<_i3.SourceDetail>();
  set sourceDetails(_i5.ListBuilder<_i3.SourceDetail>? sourceDetails) =>
      _$this._sourceDetails = sourceDetails;

  _i4.CustomPolicyDetailsBuilder? _customPolicyDetails;
  _i4.CustomPolicyDetailsBuilder get customPolicyDetails =>
      _$this._customPolicyDetails ??= new _i4.CustomPolicyDetailsBuilder();
  set customPolicyDetails(
          _i4.CustomPolicyDetailsBuilder? customPolicyDetails) =>
      _$this._customPolicyDetails = customPolicyDetails;

  SourceBuilder() {
    Source._init(this);
  }

  SourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _sourceIdentifier = $v.sourceIdentifier;
      _sourceDetails = $v.sourceDetails?.toBuilder();
      _customPolicyDetails = $v.customPolicyDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Source other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Source;
  }

  @override
  void update(void Function(SourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Source build() => _build();

  _$Source _build() {
    _$Source _$result;
    try {
      _$result = _$v ??
          new _$Source._(
              owner: BuiltValueNullFieldError.checkNotNull(
                  owner, r'Source', 'owner'),
              sourceIdentifier: sourceIdentifier,
              sourceDetails: _sourceDetails?.build(),
              customPolicyDetails: _customPolicyDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceDetails';
        _sourceDetails?.build();
        _$failedField = 'customPolicyDetails';
        _customPolicyDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Source', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
