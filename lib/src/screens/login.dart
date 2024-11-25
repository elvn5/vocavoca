import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vocavoca/src/routes/router.dart';
import 'package:vocavoca/src/services/services.dart';
import 'package:vocavoca/src/utils/utils.dart';
import 'package:vocavoca/src/widgets/widgets.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  bool _signInLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onTapRegister() {
      context.router.push(RegisterRoute());
    }

    void onTapLogin() async {
      _loginFormKey.currentState?.saveAndValidate();

      final email = _loginFormKey.currentState?.value["email"];
      final password = _loginFormKey.currentState?.value["password"];

      if (_loginFormKey.currentState?.isValid != true) {
        return;
      }

      setState(
        () {
          _signInLoading = true;
        },
      );

      try {
        await supabaseService.auth.signInWithPassword(
          email: email,
          password: password,
        );

        if (context.mounted) {
          context.router.replaceAll([const HomeRoute()]);
        }
      } on AuthException catch (e) {
        if (context.mounted && e.code == "invalid_credentials") {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Логин или пароль неверны"),
              backgroundColor: Color.fromARGB(255, 243, 49, 6),
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Ошибка сервера"),
              backgroundColor: Color.fromARGB(255, 243, 49, 6),
            ),
          );
        }
      } finally {
        setState(() {
          _signInLoading = false;
        });
      }
    }

    return SafeArea(
        child: Scaffold(
      body: AppContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                loginImage,
                height: 200.h,
              ),
              Gap(20.h),
              FormBuilder(
                key: _loginFormKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppFormBuilderTextField(
                        labelText: "E-Mail",
                        name: "email",
                        controller: _emailController,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: "E-Mail Обязателен",
                          ),
                          FormBuilderValidators.email(
                              errorText: "E-Mail Обязателен")
                        ]),
                      ),
                      Gap(20.h),
                      AppFormBuilderTextField(
                        name: "password",
                        controller: _passwordController,
                        labelText: "Пароль",
                        obscureText: true,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: "Обязательное поле",
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20.h),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: onTapLogin,
                  text: "Войти",
                  isLoading: _signInLoading,
                ),
              ),
              Gap(20.h),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: onTapRegister,
                  text: "Регистрация",
                ),
              ),
              Gap(10.h),
              // const Divider(),
              // SizedBox(
              //   width: double.infinity,
              //   child: AppTextButton(
              //       onPressed: onTapAnonLogin, text: "Войти анонимно"),
              // ),
            ],
          ),
        ),
      ),
    ));
  }
}
