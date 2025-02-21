
import 'dart:io';

// Function to reverse the order of words in a string
String reverseWords(String input) {
  // Split the string into a list of words
  List<String> words = input.split(' ');
  // Reverse the list
  words = words.reversed.toList();
  // Join the words back into a string with spaces
  return words.join(' ');
}

void main() {
  // Ask user for input
  print("Enter a string with multiple words:");
  String? input = stdin.readLineSync();

  // Check if input is valid
  if (input == null || input.trim().isEmpty) {
    print("Please enter a valid string.");
  } else {
    // Call the function and print the result
    String reversed = reverseWords(input);
    print("Reversed word order: $reversed");
  }
}