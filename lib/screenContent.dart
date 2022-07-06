import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  late InputBorder _textFieldInputBorder;

  Content({Key? key}) : super(key: key) {
    _textFieldInputBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white60,
        width: 1,
      ),
    );
  }

  @override
  State<Content> createState() => _contentState();
}

class _contentState extends State<Content> {
  bool isPasswordSecured = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.07,
                ),
                FittedBox(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/app_icon.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "weather app",
                            style: TextStyle(
                              fontSize: 28,
                              fontFamily: "TheSans",
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 0),
                            blurRadius: 10),
                      ],
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: TextField(
                    cursorColor: Colors.white60,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      border: widget._textFieldInputBorder,
                      hintText: "Enter your email",
                      labelText: "Email",
                      hintStyle: const TextStyle(color: Colors.white70),
                      labelStyle: const TextStyle(color: Colors.white70),
                      enabledBorder: widget._textFieldInputBorder,
                      focusedBorder: widget._textFieldInputBorder,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: TextField(
                    cursorColor: Colors.white60,
                    style: const TextStyle(color: Colors.white70),
                    obscureText: isPasswordSecured,
                    decoration: InputDecoration(
                      border: widget._textFieldInputBorder,
                      hintText: "Enter your password",
                      suffixIcon: IconButton(
                        icon: Icon(
                            isPasswordSecured
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white70),
                        onPressed: () => setState(() {
                          isPasswordSecured = !isPasswordSecured;
                        }),
                      ),
                      labelText: "Password",
                      hintStyle: const TextStyle(color: Colors.white70),
                      labelStyle: const TextStyle(color: Colors.white70),
                      enabledBorder: widget._textFieldInputBorder,
                      focusedBorder: widget._textFieldInputBorder,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                  ),
                  child: const Text(
                    "login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontFamily: "TheSans",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: size.height * 0.015,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/ic_insta.png",
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/ic_email.webp",
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/ic_facebook.webp",
                height: 30,
                width: 30,
                fit: BoxFit.fill,
              ),
            ],
          ),
        )
      ],
    );
  }
}
