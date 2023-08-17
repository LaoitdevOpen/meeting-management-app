// ignore_for_file: unnecessary_null_comparison

// This class contains static functions for form field validation
class FormValidator {
  // Validate name field
  static String? validateName(String value) {
    if (value.isEmpty) {
      return 'ກະລຸນາປ້ອນຊື່ອົງກອນ';
    }
    return null;
  }

  // Validate password field
  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'ກະລຸນາປ້ອນລະຫັດຜ່ານ';
    } else if (value.length < 6) {
      return 'ລະຫັດຜ່ານຕ້ອງມີຢ່າງໜ້ອຍ6ໂຕອັກສອນ';
    }
    return null;
  }

  // Validate confirmation password field
  static String? validateConfirmPassword(String password, String value) {
    if (value.isEmpty) {
      return 'ກະລຸນະຍືນຍັນລະຫັດຜ່ານ';
    } else if (value != password) {
      return 'ລະຫັດຜ່ານບໍ່ຕົງ';
    }
    return null;
  }

  // Validate email field
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'ກະລຸນາປ້ອນທີ່ຢູ່ອີເມລ';
    } else if (!isEmailValid(value)) {
      return 'ກະລຸນາປ້ອນທີ່ຢູ່ອີເມລທີ່ຖືກຕ້ອງ';
    }
    return null;
  }

  // Check if the email is valid using regular expression
  static bool isEmailValid(String email) {
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegExp.hasMatch(email);
  }

  // Validate confirmation code field (numeric value)
  static String? validateConfirmCode(String value) {
    if (value.isEmpty) {
      return 'ກະລຸນາປ້ອນລະຫັດຍືນຍັນ';
    } else if (!isNumeric(value)) {
      return 'ລະຫັດຍືນຍັນຄວນເປັນເລກຕົວເລກ';
    }
    return null;
  }

  // Check if the given string is numeric
  static bool isNumeric(String value) {
    if (value == null) {
      return false;
    }
    return double.tryParse(value) != null;
  }
}
