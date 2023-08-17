import 'package:flutter/material.dart';

// Build a clear suffix icon for a text field
Widget buildClearSuffixIcon(
  TextEditingController controller,
  VoidCallback onPressed,
) {
  return GestureDetector(
    onTap: () {
      controller.clear();
      onPressed();
    },
    child: IconButton(
      icon: Icon(Icons.clear),
      onPressed: null,
    ),
  );
}

// Build a visibility suffix icon for a password text field
Widget buildVisibilitySuffixIcon(
  bool isPasswordVisible,
  VoidCallback onPressed,
) {
  return GestureDetector(
    onTap: onPressed,
    child: Icon(
      isPasswordVisible ? Icons.visibility : Icons.visibility_off,
    ),
  );
}

// Build a back button with a tooltip
Widget backButton() {
  return Tooltip(
    message: 'ກັບຄືນໜ້າເກົ່າ',
    child: BackButton(),
  );
}
