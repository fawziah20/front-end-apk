part of "pages.dart";

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return GenProfilePage(
      title: "Profile Kamu",
      photo: "assets/jonas.png",
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            height: 20,
            width: 120,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: "4A81E7".toColor(),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                "Pencari Kerja",
                style:
                    blackFontStyle3.copyWith(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, 30, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: blueColors,
                      radius: 18,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      // child:Icons.alternate_email_rounded,
                      // color: Colors.blue,
                    ),
                    label: Text(
                      "    Informasi Profil",
                      style: blackFontStyle3.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: blueColors,
                      radius: 18,
                      child: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      // child:Icons.alternate_email_rounded,
                      // color: Colors.blue,
                    ),
                    label: Text(
                      "    Ganti Password",
                      style: blackFontStyle3.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 18,
                      child: Icon(
                        Icons.power_settings_new,
                        color: Colors.white,
                      ),
                      // child:Icons.alternate_email_rounded,
                      // color: Colors.blue,
                    ),
                    label: Text(
                      "    Keluar",
                      style: blackFontStyle3.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
