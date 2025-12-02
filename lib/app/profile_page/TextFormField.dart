import 'package:flutter/material.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  final RegExp emailRegex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final numberController = TextEditingController();
  //
  bool obsecureText = true;

  void trogglepassword() {
    setState(() {
      obsecureText = !obsecureText;
    });
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 115, 24, 131),
                  Color.fromARGB(255, 54, 14, 201),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 1st row - user icon
                  Container(
                    width: 111,
                    height: 111,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 147, 27, 168),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Email field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Email";
                        }
                        if (!emailRegex.hasMatch(value)) {
                          return "Please Enter Valid Email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        hint: Text(
                          "Enter your Email",
                          style: TextStyle(
                            color: Colors.white,
                            wordSpacing: 1.5,
                            fontWeight: FontWeight.w100,
                            fontSize: 13,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Number field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: numberController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Number";
                        } else if (value.length < 11) {
                          return "Number should be at least 11 digits long";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        hint: Text(
                          "Enter your Number",
                          style: TextStyle(
                            color: Colors.white,
                            wordSpacing: 1.5,
                            fontWeight: FontWeight.w100,
                            fontSize: 13,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone_android_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Password field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      obscureText: obsecureText,

                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password";
                        } else if (value.length < 8) {
                          return "Password should be at least 8 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () => trogglepassword(),
                          child: Icon(
                            obsecureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        hint: Text(
                          "Enter your Password",
                          style: TextStyle(
                            color: Colors.white,
                            wordSpacing: 1.5,
                            fontWeight: FontWeight.w100,
                            fontSize: 13,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_open,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Remember me / Forget password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Remember me",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  // LOGIN button
                  InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        ("OK");
                      }
                    },
                    child: Container(
                      width: 200,
                      height: 42,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 147, 27, 168),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            wordSpacing: 3,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // REGISTER button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 42,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(16, 73, 12, 88),
                            Color.fromARGB(146, 70, 21, 110),
                            Color.fromARGB(255, 147, 27, 168),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                            color: Color.fromARGB(180, 255, 255, 255),
                            wordSpacing: 2,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
