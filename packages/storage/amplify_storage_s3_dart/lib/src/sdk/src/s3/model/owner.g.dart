// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.owner;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Owner extends Owner {
  @override
  final String? displayName;
  @override
  final String? id;

  factory _$Owner([void Function(OwnerBuilder)? updates]) =>
      (new OwnerBuilder()..update(updates))._build();

  _$Owner._({this.displayName, this.id}) : super._();

  @override
  Owner rebuild(void Function(OwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnerBuilder toBuilder() => new OwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Owner && displayName == other.displayName && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OwnerBuilder implements Builder<Owner, OwnerBuilder> {
  _$Owner? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  OwnerBuilder() {
    Owner._init(this);
  }

  OwnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Owner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Owner;
  }

  @override
  void update(void Function(OwnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Owner build() => _build();

  _$Owner _build() {
    final _$result = _$v ?? new _$Owner._(displayName: displayName, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
