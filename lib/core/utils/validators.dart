class AppValidators {
  AppValidators._();

  static String? validateEmail(String? val) {
    RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (val == null) {
      return 'This field is required';
    } else if (val.trim().isEmpty) {
      return 'This field is required';
    } else if (emailRegex.hasMatch(val) == false) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  static String? validatePassword(String? val) {
    if (val == null || val.trim().isEmpty) {
      return "This field is required";
    } else if (val.trim().length < 8) {
      return "Password must be at least 8 characters";
    } else {
      return null;
    }
  }

  static String? validateConfirmPassword(String? val, String? password) {
    if (val == null || val.isEmpty) {
      return "This field is required";
    } else if (val != password) {
      return "They must be same";
    } else {
      return null;
    }
  }

  static String? validateUserName(String? val) {
    RegExp usernameRegex = RegExp(r'^[a-zA-Z][a-zA-Z0-9_]{3,15}$');
    if (val == null || val.isEmpty) {
      return "This field is required";
    } else if (!usernameRegex.hasMatch(val)) {
      return "Please Enter a valid username";
    } else {
      return null;
    }
  }

  static String? validateFullName(String? val) {
    if (val == null || val.isEmpty) {
      return "This field is required";
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(String? val) {
    if (val == null) {
      return "This field is required";
    } else if (int.tryParse(val.trim()) == null) {
      return "Please Enter numbers only";
    } else if (val.trim().length != 11) {
      return "Phone number must contain 11 digits";
    } else {
      return null;
    }
  }
}
