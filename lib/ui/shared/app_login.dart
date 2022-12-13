// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shopgiaycantho/ui/shared/app_drawer.dart';

import '../products/products_overview_screen.dart';
import '../products/user_products_screen.dart';

class MyApp extends StatelessWidget {
  static const routeName = '/admin-login';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: AppLogin());
  }
}

class AppLogin extends StatefulWidget {
  static const routeName = '/admin-login';
  const AppLogin({super.key});

  @override
  State<AppLogin> createState() => _AppLoginState();
}

class _AppLoginState extends State<AppLogin> {
  late TextEditingController controller;
  final _userController = new TextEditingController();
  final _passController = new TextEditingController();

  var _userNameErr = "Tên tài khoản không hợp lệ";
  var _passErr = "Mật khẩu phải trên 6 ký tự";
  var _userInvalid = false;
  var _passInvalid = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(130, 0, 0, 40),
                child: Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 151, 210, 255)),
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png",
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Text(
                  "QUẢN LÝ CỬA HÀNG GIÀY DÉP CẦN THƠ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  controller: _userController,
                  decoration: InputDecoration(
                      labelText: "TÀI KHOẢN",
                      errorText: _userInvalid ? _userNameErr : "",
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 18)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 90),
                child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        controller: _passController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "MẬT KHẨU",
                            errorText: _passInvalid ? _passErr : "",
                            labelStyle: TextStyle(
                                color: Color(0xff888888), fontSize: 18)),
                      ),
                      Text(
                        "Hiện mật khẩu",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    onPressed: onSignInClicked,
                    child: const Text("ĐĂNG NHẬP",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 70, 93, 132),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    onPressed: onBackClicked,
                    child: const Text("QUAY LẠI",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 130,
              //   width: double.infinity,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: const <Widget>[
              //       Text("NEW USER ? SIGN UP",
              //           style:
              //               TextStyle(fontSize: 15, color: Color(0xff888888))),
              //       Text("FORGOT PASSWORD?",
              //           style: TextStyle(fontSize: 15, color: Colors.blue))
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> showConfirmDialog(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Thông báo!'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Thử lại'),
            onPressed: () {
              Navigator.of(ctx).pop(true);
            },
          ),
        ],
      ),
    );
  }

  void onToggleShowPass() {}

  bool onCheckUserInvalid(String userName, String passWord) {
    //get username and pass on db here

    //check username and pass here
    if (userName == "admin123" && passWord == "123456789") {
      return true;
    } else {
      showConfirmDialog(context, "Tài khoản hoặc mật khẩu không đúng!");
      return false;
    }
  }

  void onSignInClicked() {
    setState(() {
      if (_userController.text.length < 6 ||
          _userController.text.contains("@")) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }

      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }

      if (!_userInvalid &&
          !_passInvalid &&
          onCheckUserInvalid(_userController.text, _passController.text)) {
        Navigator.push(context, MaterialPageRoute(builder: gotoManageProduct));
      }
    });
  }

  Widget gotoManageProduct(BuildContext context) {
    AppDrawer.isLogin = true;
    return UserProductsScreen();
  }

  void onBackClicked() {
    Navigator.push(context, MaterialPageRoute(builder: gotoProductsOverview));
  }

  Widget gotoProductsOverview(BuildContext context) {
    return ProductsOverviewScreen();
  }
}
