enum UsernameType { username, email, phoneNumber }

class UsernameInput {
  final UsernameType type;
  final String username;

  const UsernameInput({
    required this.type,
    required this.username,
  });
}
