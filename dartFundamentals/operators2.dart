void main() {
  String? username;

  print("\n===== Null-Aware Demo =====");

  // Using ??
  print("Username = ${username ?? 'Guest'}");

  // Using ??=
  username ??= 'Kalyan';

  print("Username After Assignment = $username");

  // Using ? operator
  print("Username Length = ${username.length}");
}