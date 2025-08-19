import 'package:finance/widgets/Arrow%20widget.dart';
import 'package:finance/widgets/primary%20Button%20Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../core/styling/app_colors.dart';
import '../core/styling/app_style.dart';
import 'TextFeiled.dart';

class Createnewpass extends StatefulWidget {
  static const String routName = 'newpass';

  @override
  State<Createnewpass> createState() => _CreatenewpassState();
}

class _CreatenewpassState extends State<Createnewpass> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController  confirmPasswordController = TextEditingController();

final formKey = GlobalKey<FormState>();
bool isPassword = false;
 @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    passwordController = TextEditingController();

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColor.white,
    appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const ArrowWidget()
    ),
    body:  Padding(
    padding: const EdgeInsets.all(16.0),
    child: Form(
      key: formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    child: ListView(
    children:[
    Text("Create New Password !",
    style: AppStyle.primaryHeadLineStyle,),
    const Gap(20),
    Text('Your new password must be unique from\nthose previously used.',
    style: AppStyle.gray,),
    const Gap(20),
    Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    CustomTextField(
    validator: (value) {
    if(value!.isEmpty){
    return ' please enter NewPassword';
    }
    if(value!.length < 8){
      return " sorry your password must be at least 8 characters";
    }
    },
    controller: passwordController,
    isPassword: isPassword,
    hintText: "New password",
    keyboardType: TextInputType.visiblePassword,
      icon: IconButton(
          onPressed: (){
            setState(() {
              isPassword = !isPassword;
            });
          },
          icon: Icon( isPassword ?
          Icons.visibility_off_outlined : Icons.visibility_outlined
          )),


    ),
    const Gap(20),
    CustomTextField(
    validator: (value) {
      if (value == null || value!.isEmpty) {
        return " Enter Confirm password ";
      }
      if (value != passwordController.text) {
        return " Passwords do not match ❌";
      }
    },
    controller: confirmPasswordController,
    isPassword: isPassword,
    keyboardType: TextInputType.visiblePassword,
    hintText: "Please Enter Your Password",
    icon: IconButton(
    onPressed: (){
    setState(() {
    isPassword = !isPassword;
    });
    },
    icon: Icon( isPassword ?
    Icons.visibility_off_outlined : Icons.visibility_outlined
    )),
    ),


    const Gap(25),
    PrimaryButton(
    onPress: (){
    if(formKey.currentState!.validate()){
    ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
    content: Text('Reset Success ✅')) );
    }
    },
    textButton: "Reset password",
    ),

    ],
    )
    ]

    )

    ),

    ]
    ),
    )
    ),

    );


    }
}



