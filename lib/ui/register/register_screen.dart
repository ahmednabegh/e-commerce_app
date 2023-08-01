import 'package:e_commerce_app/widget/custom_button_widget.dart';
import 'package:e_commerce_app/widget/custom_text_form_field.dart';
import 'package:e_commerce_app/widget/form_label_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = ' register';
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/route_cover.png',
            height: 71,
            width: 237,
          ),
          SizedBox(height: 40,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        FormLabelWidget(label: 'Full Name'),
                        SizedBox(
                          height: 24,
                        ),
                        CustomTextFormField(
                            hintText: 'enter your full name',
                            controller: nameController,
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'please enter full name';
                              }
                              return null;
                            },
                            type: TextInputType.name),
                        SizedBox(
                          height: 32,
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
                        FormLabelWidget(label: 'Mobile Number'),
                        SizedBox(
                          height: 24,
                        ),
                        CustomTextFormField(
                            hintText: 'enter your mobile number',
                            controller: phoneController,
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'please enter your mobile number';
                              }
                              if(text.trim().length< 10){
                                return 'phone number should be at least 10 numbers';
                              }
                              return null;
                            },
                            type: TextInputType.phone),
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
                              if (text.length < 6){
                                return 'password should be at least 6 chrs.';
                              }
                              return null;
                            },
                            type: TextInputType.visiblePassword,
                        isPassword: true,),
                        SizedBox(
                          height: 32,
                        ),
                        FormLabelWidget(label: 'password confirmation'),
                        SizedBox(
                          height: 24,
                        ),
                        CustomTextFormField(
                            hintText: 'enter your full name',
                            controller: repasswordController,
                            validator: (text) {
                              if (text == null || text.trim().isEmpty) {
                                return 'please re-enter password';
                              }
                              if(passwordController.text != text){
                                return "password doesn't match";
                              }
                              return null;
                            },
                            type: TextInputType.visiblePassword,
                        isPassword: true,),
                        SizedBox(
                          height: 56,
                        ),
                        CustomButtonWidget(title: 'Sign Up',
                            onPressed: (){
                          //navigate to home
                            })

                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
