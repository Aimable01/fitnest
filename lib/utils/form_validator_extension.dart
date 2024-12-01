extension FormValidatorExtension on String {
  bool get isValidFirstName {
    return isNotEmpty;
  }

  bool get isValidLastName {
    return isNotEmpty;
  }

  bool get isValidEmail {
    final RegExp emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }

  bool get isValidPassword {
    return isNotEmpty;
  }
}
