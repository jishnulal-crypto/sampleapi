import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  TextEditingController username =
      TextEditingController(text: "Developer5@gmail.com".trim());
  TextEditingController password = TextEditingController(text: "123456");
  // var homecontroller = Get.lazyPut(() => HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'Sign in',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/User.png"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: username,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    prefixIcon: Image.asset("assets/key.png"),
                    suffixIcon: Icon(Icons.hide_image),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              Text(
                "forgot password?",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 50,
              ),
              GetBuilder<HomeController>(builder: ((controller) {
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff312782),
                        fixedSize: Size(100, 50)),
                    onPressed: () {
                      controller.loginFunction(username.text, password.text);
                      // print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb");
                    },
                    child: Text("sign in"));
              })),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 10,
                    color: Colors.grey,
                    width: 100,
                  ),
                  Text("sign in with"),
                  Container(
                    height: 10,
                    color: Colors.grey,
                    width: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/facerecognition.png"),
                  Image.asset("assets/mdi_fingerprint.png")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("dont have an account ? "),
                  Text(
                    "Signup",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              DropdownButton<String>(
                  items: ["english", "malayalam"]
                      .map((e) => DropIcon("", e))
                      .toList(),
                  onChanged: ((value) {}))
            ],
          ),
        ));
  }
}

DropdownMenuItem<String> DropIcon(String assetname, String e) {
  return DropdownMenuItem<String>(
      child: Container(
    child: Row(
      children: [
        Image.asset(assetname),
        Text("$e"),
        Icon(Icons.arrow_drop_down_sharp)
      ],
    ),
  ));
}
