import 'package:flutter/material.dart';

// Dialog Show succesful message when signing up
void showSignUpSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('ສ້າງບັນຊີສຳເລັດ'),
        content: Text('ບັນຊີຂອງທ່ານໄດ້ຖືກສ້າງແລ້ວ.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

// Dialog Show succesful message when sending reset password to email

void showSentPasswordSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('ສົ່ງລະຫັດຜ່ານແລ້ວ'),
        content: Text(
            'ກວດສອບອີເມລຂອງທ່ານເພື່ອຣີເຊັດລະຫັດຜ່ານ ແລະ ລັອກອິນດ້ວຍລະຫັດຜ່ານໃໝ່!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

// Dialog Show succesful message when finishing reset password

void showChangedPasswordSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('ປ່ຽນລະຫັດຜ່ານແລ້ວ'),
        content: Text('ລະຫັດຜ່ານຂອງທ່ານໄດ້ຖືກປ່ຽນແປງສຳເລັດ!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

// Snackbar Show error massage when registering with existing email

void showExistingEmailSnackBar(BuildContext context, String message,
    {Color backgroundColor = Colors.black}) {
  ScaffoldMessenger.of(context).showSnackBar(
    ExistingEmailSnackBar(
      message: message,
      backgroundColor: backgroundColor,
    ),
  );
}

class ExistingEmailSnackBar extends SnackBar {
  ExistingEmailSnackBar({
    Key? key,
    required String message,
    Color backgroundColor = Colors.black,
    TextStyle contentTextStyle =
        const TextStyle(fontSize: 16, color: Colors.white),
  }) : super(
          key: key,
          backgroundColor: backgroundColor,
          content: Text(
            message,
            style: contentTextStyle,
          ),
          behavior: SnackBarBehavior.fixed,
          duration: Duration(seconds: 4),
        );
}
