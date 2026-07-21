class Validationform {
  static String? email (String? value) {
    if (value == null || value.isEmpty) {
      return 'required field';
    }
    //  entre simple regular expression of email 
    final regexEmail = RegExp(r'^[a-zA-Z ]+$');
    if (!regexEmail.hasMatch(value)) {
      return 'invalid email';
    }
    return null;
  }

  
  static String? password (String? value) {
    if (value == null || value.isEmpty) {
      return 'required field';
    }

    //  entre simple regular expression of password  
    final regexPassword = RegExp(r'^[a-zA-Z ]+$');
    if (!regexPassword.hasMatch(value)) {
      return 'invalid email';
    }
  
    return null;
  }
}

