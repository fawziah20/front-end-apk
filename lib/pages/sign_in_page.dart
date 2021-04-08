part of "pages.dart";

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    bool isLoading = false;

    return GeneralPageAwal(
      title: "Log In",
      teks1: "Belum Memiliki Akun ?",
      teks2: "Daftar Sekarang",
      child: Container(
        height: orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.70
            : 470,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  defaultMargin, 28, defaultMargin, defaultMargin),
              child: Text(
                "Selamat Datang :)",
                style: blackFontStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: blueColors,
                    fontSize: 20),
              ),
            ),
            Container(
              // margin: EdgeInsets.fromLTRB(
              //     defaultMargin, 2, defaultMargin, defaultMargin),
              child: Column(
                children: [
                  // TextField()
                  Container(
                    width: double.infinity,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        icon: CircleAvatar(
                          backgroundColor: blueColors,
                          radius: 15,
                          child: Icon(
                            Icons.alternate_email,
                            color: Colors.white,
                            size: 20,
                          ),
                          // child:Icons.alternate_email_rounded,
                          // color: Colors.blue,
                        ),
                        hintStyle: greyFontStyle.copyWith(
                            color: greyColor3, fontSize: 14),
                        hintText: "emailkamu@gmail.com",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      obscureText: _isObscure,
                      controller: passwordController,
                      decoration: InputDecoration(
                        icon: CircleAvatar(
                          backgroundColor: blueColors,
                          radius: 15,
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: _isObscure ? blueColors : greyColor3,
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        hintStyle: greyFontStyle.copyWith(
                            color: greyColor3, fontSize: 14),
                        hintText: "password kamu",
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.only(top: 16),
                    child: Container(
                      child: RaisedButton(
                          onPressed: () {
                            Get.to(SignUpPage());
                          },
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          // color: blueColors,
                          padding: EdgeInsets.all(0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [blueColors2, blueColors],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'Masuk',
                                style: blackFontStyle3.copyWith(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 12),
                    height: 35,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lupa Password ?",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Reset Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: greyColor3,
                                  fontSize: 12),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 52),
                    width: double.infinity,
                    child: Row(
                      children: [
                        buildDivider(),
                        Container(
                            margin: EdgeInsets.only(
                              right: 15,
                              left: 15,
                            ),
                            child: Text(
                              "Atau",
                              style: TextStyle(
                                fontSize: 12,
                                color: greyColor3,
                              ),
                            )),
                        buildDivider(),
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 40,
                      margin: EdgeInsets.only(top: 16),
                      child: Container(
                        child: RaisedButton(
                          onPressed: () {},
                          elevation: 0,
                          color: "E76257".toColor(),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex:
                                    orientation == Orientation.portrait ? 2 : 1,
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image(
                                                height: 24,
                                                width: 24,
                                                image: AssetImage(
                                                  "assets/gmail.png",
                                                )),
                                            Container(
                                              margin: EdgeInsets.only(left: 12),
                                              child: Image(
                                                  image: AssetImage(
                                                "assets/Vdivider.png",
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex:
                                    orientation == Orientation.portrait ? 6 : 8,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Masuk Dengan Google',
                                    style: blackFontStyle.copyWith(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: orientation == Orientation.portrait
                                      ? 2
                                      : 1,
                                  child: Container())
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Expanded buildDivider() {
  return Expanded(
      child: Divider(
    height: 3,
  ));
}
