import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _obscureText = true;
  bool _obscureText2 = true;
  bool _obscureText3 = true;
  String errorOldPassword = "";
  String errorNewPassword = "";
  String errorNewPassword2 = "";
  String password = "admin"; // e.g. the current password of the user

  String oldPassword = "";
  String newPassword = "";
  String newPassword2 = "";

  @override
  Widget build(BuildContext context) {
    var oldPasswordInput = Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        onChanged: (value) => onOldPasswordChange(value),
        decoration: InputDecoration(
          errorText: errorOldPassword.isEmpty ? null : errorOldPassword,
          prefixIcon: const Icon(Icons.lock),
          hintText: "Current password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: _toggleOldPassword,
          ),
        ),
        obscureText: _obscureText,
      ),
    );

    var newPasswordInput = Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        onChanged: (value) => onNewPasswordChange(value),
        decoration: InputDecoration(
          errorText: errorNewPassword.isEmpty ? null : errorNewPassword,
          prefixIcon: const Icon(Icons.lock),
          hintText: "New password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText2 ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: _toggleNewPassword,
          ),
        ),
        obscureText: _obscureText2,
      ),
    );

    var newPasswordInput2 = Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        onChanged: (value) => onNewPassword2Change(value),
        decoration: InputDecoration(
          errorText: errorNewPassword2.isEmpty ? null : errorNewPassword2,
          prefixIcon: const Icon(Icons.lock),
          hintText: "Confirm new password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText3 ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: _toggleNewPassword2,
          ),
        ),
        obscureText: _obscureText3,
      ),
    );

    var changePasswordButton = Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: inputFiedsHaveErrors() || !inputFieldsAreFilled()
                  ? null
                  : () => onChangePasswordButtonPressed(),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                "Change password",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );

    var text = Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  "To create a secure password:",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text("• ", style: TextStyle(fontSize: 30)),
                      Text(
                        "Use at least 8 characters;",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text("• ", style: TextStyle(fontSize: 30)),
                      Expanded(
                        child: Text(
                          "Use a combination of uppercase letters, lowercase letters and numbers.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  )),
            ]),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Change password",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                text,
                const SizedBox(
                  height: 20,
                ),
                oldPasswordInput,
                const SizedBox(
                  height: 15,
                ),
                newPasswordInput,
                const SizedBox(
                  height: 15,
                ),
                newPasswordInput2,
                const SizedBox(
                  height: 15,
                ),
                changePasswordButton,
              ],
            ),
          )),
    );
  }

  void _toggleOldPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleNewPassword() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  void _toggleNewPassword2() {
    setState(() {
      _obscureText3 = !_obscureText3;
    });
  }

  onOldPasswordChange(String value) {
    if (oldPasswordMatch(value)) {
      setState(() {
        oldPassword = value;
        errorOldPassword = "";
      });
    } else {
      setState(() {
        errorOldPassword = "The password is not correct";
      });
    }
  }

  bool isValidPassword(String password) {
    return RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(password);
  }

  bool oldPasswordMatch(String value) {
    return value == password;
  }

  onNewPasswordChange(String value) {
    if (isValidPassword(value)) {
      setState(() {
        newPassword = value;
        errorNewPassword = "";
      });
    } else {
      setState(() {
        errorNewPassword =
            "Invalid password. Password must contain: \n • Minimum 8 characters. \n • At least one letter. \n • At least one number.";
      });
    }
  }

  onNewPassword2Change(String value) {
    if (arePasswordsEqual(value, newPassword)) {
      setState(() {
        newPassword2 = value;
        errorNewPassword2 = "";
      });
    } else {
      setState(() {
        errorNewPassword2 = "The passwords you entered do not match.";
      });
    }
  }

  bool arePasswordsEqual(String password, String password2) {
    return password == password2;
  }

  bool inputFiedsHaveErrors() {
    if (errorOldPassword.isNotEmpty ||
        errorNewPassword.isNotEmpty ||
        errorNewPassword2.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  onChangePasswordButtonPressed() {
    Navigator.pop(context);
  }

  bool inputFieldsAreFilled() {
    if (oldPassword.isEmpty || newPassword.isEmpty || newPassword2.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
