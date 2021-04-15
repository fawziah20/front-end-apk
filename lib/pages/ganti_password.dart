part of "pages.dart";

class GantiPassword extends StatefulWidget {
  @override
  _GantiPasswordState createState() => _GantiPasswordState();
}

class _GantiPasswordState extends State<GantiPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 96,
        backgroundColor: blueColors,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text("Ganti Password"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView(
          children: [
            Text(
              "Masukkan email yang tertaut dengan akun kamu dan kami akan kirimkan email dengan interuksi untuk mengganti password.",
              style: blackFontStyle3,
            ),
            Container(
                margin: EdgeInsets.only(top: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Alamat email kamu ",
                        style:
                            greyFontStyle.copyWith(color: "808D9D".toColor())),
                    Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "Password"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24),
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
                                'Kirim Permintaan',
                                style: blackFontStyle3.copyWith(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
