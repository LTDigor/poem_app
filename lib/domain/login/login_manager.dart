import 'package:poem_app/domain/login/login_sign_up_notifier.dart';

class LoginManager {
  final LoginSignUpNotifier loginSignUpNotifier;

  const LoginManager(this.loginSignUpNotifier);

  void onTapSignUp() {
    loginSignUpNotifier.changeToSignUp();
  }

  void onTapForgotPass() {
    loginSignUpNotifier.changeToForgotPass();
  }
}
