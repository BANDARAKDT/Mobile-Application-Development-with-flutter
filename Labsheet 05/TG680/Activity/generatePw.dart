import 'dart:math';

// Function to generate a random password
String generatePassword(int length) {
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String symbols = '!@#\$%^&*()_+-=[]{}|;:,.<>?';
  const String allChars = lowercase + uppercase + numbers + symbols;

  Random random = Random();
  // Generate random characters from allChars
  String password = '';
  for (int i = 0; i < length; i++) {
    password += allChars[random.nextInt(allChars.length)];
  }

  // Ensure at least one of each type (optional enhancement)
  password = _ensureStrongPassword(password, random);
  return password;
}

// Helper function to ensure at least one of each character type
String _ensureStrongPassword(String password, Random random) {
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String symbols = '!@#\$%^&*()';

  List<String> pwdList = password.split('');
  pwdList[0] = lowercase[random.nextInt(lowercase.length)]; // Ensure lowercase
  pwdList[1] = uppercase[random.nextInt(uppercase.length)]; // Ensure uppercase
  pwdList[2] = numbers[random.nextInt(numbers.length)];     // Ensure number
  pwdList[3] = symbols[random.nextInt(symbols.length)];     // Ensure symbol

  return pwdList.join('');
}

void main() {
  print("Generating a random 12-character password:");
  String password = generatePassword(12);
  print("Your password: $password");

  // Generate another one to show randomness
  print("\nGenerating another password:");
  String anotherPassword = generatePassword(12);
  print("Your new password: $anotherPassword");
}

