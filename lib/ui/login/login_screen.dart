import 'package:e_commerce_app/widget/custom_button_widget.dart';
import 'package:e_commerce_app/widget/custom_text_form_field.dart';
import 'package:e_commerce_app/widget/form_label_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = ' login';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'assets/images/route_cover.png',
                  height: 71,
                  width: 237,
                ),
                SizedBox(
                  height: 86,
                ),
                Text(
                  'Welcome Back to Route',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 8),
                Text(
                  'plaese sign in with your mail ',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 40,
                ),
                FormLabelWidget(label: 'Email Address'),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                    hintText: 'enter your email address',
                    controller: emailController,
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter email address';
                      }
                      var emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(text);
                      if (!emailValid) {
                        return 'email format not valid';
                      }
                      return null;
                    },
                    type: TextInputType.emailAddress),
                SizedBox(
                  height: 32,
                ),
                FormLabelWidget(label: 'Password'),
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  hintText: 'enter your password',
                  controller: passwordController,
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return 'please enter password';
                    }
                    if (text.length < 6) {
                      return 'password should be at least 6 chrs.';
                    }
                    return null;
                  },
                  type: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: (){},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: FormLabelWidget(
                      label: 'Forget Password',

                    ),
                  ),
                ),
                SizedBox(
                  height: 56,
                ),
                CustomButtonWidget(title: 'Login',
                    onPressed: (){

                    }),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormLabelWidget(label:"Don't have an account?"),
                    InkWell(
                      onTap: (){
                        //nav to register
                      },
                      child: FormLabelWidget(label: 'create account',),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
