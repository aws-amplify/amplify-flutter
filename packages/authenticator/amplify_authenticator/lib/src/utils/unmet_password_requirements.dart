class UnmetPasswordRequirements {
  UnmetPasswordRequirements({
    this.minLength,
    this.characterRequirements = const [],
  });

  int? minLength;
  List<CharacterRequirements> characterRequirements;
}

enum CharacterRequirements {
  requiresLowercase,
  requiresUppercase,
  requiresNumbers,
  requiresSymbols,
}
