class Validationform {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'required field';
    }
    //  entre simple regular expression of email
    final regexEmail = RegExp(r'^[a-zA-Z  @.]+$');
    if (!regexEmail.hasMatch(value)) {
      return 'invalid email';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'required field';
    }

    //  entre simple regular expression of password
    final regexPassword = RegExp(r'^[a-zA-Z-0-9 @.-]+$');
    if (!regexPassword.hasMatch(value)) {
      return 'invalid email';
    }

    return null;
  }

  static String? username(String? value) {
    if (value == null || value.isEmpty) {
      return 'required field';
    }

    final regexusername = RegExp(r'^[a-zA-Z ]+$');

    if (!regexusername.hasMatch(value)) {
      return 'invalid username';
    }

    if (value.length < 3) {
      return 'too small charachter';
    }

    if (value.length > 20) {
      return 'too much character';
    }

    return null;
  }
}
