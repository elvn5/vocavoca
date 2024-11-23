import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:vocavoca/main.dart';
import 'package:vocavoca/src/services/services.dart';
import 'package:vocavoca/src/utils/app_images.dart';
import 'package:vocavoca/src/widgets/widgets.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class RegisterScreen extends HookWidget {
  RegisterScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    void onPressRegister() async {
      _formKey.currentState?.saveAndValidate();

      final email = _formKey.currentState?.value["email"];
      final password = _formKey.currentState?.value["password"];

      if (_formKey.currentState?.isValid ?? false) {
        isLoading.value = true;
        try {
          await supabaseService.auth.signUp(
            email: email,
            password: password,
          );
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
          isLoading.value = false;
        }
      }
    }

    return SafeArea(
        child: Scaffold(
      body: AppContainer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(signUpImage),
              Gap(55.h),
              FormBuilder(
                key: _formKey,
                child: Column(
                  children: [
                    AppFormBuilderTextField(
                      name: "email",
                      labelText: "E-Mail",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                          errorText: "E-Mail Обязателен",
                        ),
                        FormBuilderValidators.email(
                          errorText: "E-Mail Обязателен",
                        )
                      ]),
                    ),
                    Gap(20.h),
                    AppFormBuilderTextField(
                      name: "password",
                      labelText: "Пароль",
                      obscureText: true,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Поле обязательно"),
                        FormBuilderValidators.minLength(
                          8,
                          errorText: "Минимум 8 символов",
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              Gap(20.h),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: isLoading.value
                    ? const MiniLoader()
                    : AppElevatedButton(onPressed: onPressRegister, text: "GO"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
