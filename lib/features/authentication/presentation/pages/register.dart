import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  bool _obscureText = true;
  bool _obscureText2 = true;
  String username = "";
  String email = "";
  String password = "";
  String password2 = "";
  String errorMessageUsername = "";
  String errorMessageEmail = "";
  String errorPassword = "";
  String errorPassword2 = "";

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

  bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(email);
  }

  bool isValidUsername(String username) {
    return RegExp(r"^(?=.{6,12}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9]+(?<![_.])$")
        .hasMatch(username);
  }

  bool isValidPassword(String password) {
    return RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(password);
  }

  bool arePasswordsEqual(String password, String password2) {
    return password == password2;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/',
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _header(context),
                const SizedBox(height: 80),
                _inputField(context),
                const SizedBox(height: 20),
                _signup(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          onChanged: (value) => onUsernameChange(value),
          decoration: InputDecoration(
            errorText:
                errorMessageUsername.isEmpty ? null : errorMessageUsername,
            hintText: "Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          onChanged: (value) => onEmailChange(value),
          decoration: InputDecoration(
            errorText: errorMessageEmail.isEmpty ? null : errorMessageEmail,
            hintText: "Email address",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.mail),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          onChanged: (value) => onPasswordChange(value),
          decoration: InputDecoration(
            errorText: errorPassword.isEmpty ? null : errorPassword,
            prefixIcon: const Icon(Icons.lock),
            hintText: "Password",
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
              onPressed: _toggle,
            ),
          ),
          obscureText: _obscureText,
        ),
        const SizedBox(height: 10),
        TextFormField(
          onChanged: (value) => onPassword2Change(value),
          decoration: InputDecoration(
            errorText: errorPassword2.isEmpty ? null : errorPassword2,
            prefixIcon: const Icon(Icons.lock),
            hintText: "Confirm password",
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
              onPressed: _toggle2,
            ),
          ),
          obscureText: _obscureText2,
        ),
        const SizedBox(height: 60),
        ElevatedButton(
          onPressed: inputFiedsHaveErrors() || !inputFieldsAreFilled()
              ? null
              : () => onSingUpPressed(),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }

  bool checkInputFields() {
    if (isValidUsername(username) &&
        isValidEmail(email) &&
        isValidPassword(password) &&
        arePasswordsEqual(password, password2)) {
      return true;
    }
    if (!isValidUsername(username)) {
      showUsernameRulesDialog();
    }
    if (isValidUsername(username) && !isValidEmail(email)) {
      showInvalidEmailFormatDialog();
    }
    if (isValidUsername(username) &&
        isValidEmail(email) &&
        !isValidPassword(password)) {
      showPasswordRulesDialog();
    }
    if (isValidUsername(username) &&
        isValidEmail(email) &&
        isValidPassword(password) &&
        !arePasswordsEqual(password, password2)) {
      showPasswordMismatchDialog();
    }
    return false;
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Have an account already? "),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/login',
            );
          },
          child: const Text(
            "Sign In!",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  _header(context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo-removebg-preview.png', // Replace with your image path
          width: 90,
          height: 90,
        ),
        const SizedBox(
            width: 10), // Add some spacing between the image and text
        const Text(
          "Lost&Found",
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }

  showUsernameRulesDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Username not valid'),
          content: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('A valid username must follow these rules:'),
              SizedBox(height: 8),
              Text('• Number of characters between 6 and 12.'),
              Text('• Only contains alphanumeric characters.')
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  showPasswordRulesDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Invalid Password'),
          content: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('A valid password must follow these rules:'),
              SizedBox(height: 8),
              Text('• Minimum 8 characters.'),
              Text('• At least one letter.'),
              Text('• At least one number.'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  showInvalidEmailFormatDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Invalid Email Format'),
          content: const Text(
              'The email address provided is not in a valid format.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  showPasswordMismatchDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Password Mismatch'),
          content: const Text(
              'The passwords you entered do not match. Please try again.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  onUsernameChange(String value) {
    if (isValidUsername(value)) {
      setState(() {
        username = value;
        errorMessageUsername = "";
      });
    } else {
      setState(() {
        errorMessageUsername =
            "Invalid username. \n • Must be 6 to 12 characters long. \n • Must contain only alphanumeric characters.";
      });
    }
  }

  onEmailChange(String value) {
    if (isValidEmail(value)) {
      setState(() {
        email = value;
        errorMessageEmail = "";
      });
    } else {
      setState(() {
        errorMessageEmail = "Email address provided is not in a valid format.";
      });
    }
  }

  onPasswordChange(String value) {
    if (isValidPassword(value)) {
      setState(() {
        password = value;
        errorPassword = "";
      });
    } else {
      setState(() {
        errorPassword =
            "Invalid password. Password must contain: \n • Minimum 8 characters. \n • At least one letter. \n • At least one number.";
      });
    }
  }

  onPassword2Change(String value) {
    if(arePasswordsEqual(password, value)) {
      setState(() {
      password2 = value;
      errorPassword2 = "";
    });
    }
    else{
      setState(() {
        errorPassword2 = "The passwords you entered do not match.";
      });
    }
  }

  bool inputFiedsHaveErrors() {
    if (errorMessageUsername.isNotEmpty ||
        errorMessageEmail.isNotEmpty ||
        errorPassword.isNotEmpty ||
        errorPassword2.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool inputFieldsAreFilled() {
    if (username.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        password2.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  onSingUpPressed() {
    Navigator.of(context).pushNamed(
      '/home',
    );
  }
}
