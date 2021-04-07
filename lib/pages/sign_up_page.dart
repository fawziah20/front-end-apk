part of "pages.dart";

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  bool _isObscureverif = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordverif = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    bool isLoading = false;
    var color2 = "828282".toColor();
    return GeneralPageAwal(
      title: "Register",
      teks1: "Sudah Punya Akun ?",
      teks2: "Register",
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
                "Buat Akun Baru",
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
                      controller: email,
                      decoration: InputDecoration(
                        icon: CircleAvatar(
                          backgroundColor: blueColors,
                          radius: 15,
                          child: Icon(Icons.alternate_email,
                              color: Colors.white, size: 20),
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
                      controller: password,
                      decoration: InputDecoration(
                        icon: CircleAvatar(
                          backgroundColor: blueColors,
                          radius: 15,
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
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
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      obscureText: _isObscureverif,
                      controller: passwordverif,
                      decoration: InputDecoration(
                        icon: CircleAvatar(
                          backgroundColor: blueColors,
                          radius: 15,
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                          ),
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(_isObscureverif
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: _isObscureverif ? blueColors : greyColor3,
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        hintStyle: greyFontStyle.copyWith(
                            color: greyColor3, fontSize: 14),
                        hintText: " Ulangi password kamu",
                      ),
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
                                'Buat Akun',
                                style: blackFontStyle.copyWith(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 3,
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(0),
                                        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                        // alignment: Alignment.center,
                                        child: Image(
                                            height: 24,
                                            width: 24,
                                            image: AssetImage(
                                              "assets/gmail.png",
                                            )),
                                      ),
                                      VerticalDivider(
                                        thickness: 1,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Text(
                                  'Register Dengan Google',
                                  style: blackFontStyle.copyWith(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              Expanded(flex: 1, child: SizedBox())
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
