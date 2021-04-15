part of 'widgets.dart';

class CustomSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.black38,
          //       offset: new Offset(20.0, 10.0),
          //       blurRadius: 50.0,
          //       spreadRadius: 90.0)
          // ],

          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), bottomRight: Radius.circular(32))),
      child: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(top: 38, left: 24),
                  child: Text("Menu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      )),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(left: 24),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("Login disini",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  height: 1,
                  width: double.infinity,
                  child: Container(
                    color: "C4C4C4".toColor(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(left: 24),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("Kebijakan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),

                ),
                SizedBox(
                  height: 1,
                  width: double.infinity,
                  child: Container(
                    color: "C4C4C4".toColor(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(left: 24),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("Pengaturan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  height: 1,
                  width: double.infinity,
                  child: Container(
                    color: "C4C4C4".toColor(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(left: 24),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text("Update Aplikasi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(
                  height: 1,
                  width: double.infinity,
                  child: Container(
                    color: "C4C4C4".toColor(),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                Route route = MaterialPageRoute(
                  builder: (context) => PerusahaanDetailPage(
                    userSave: UserSave(perusahaan: mockPerusahaan[3]),
                  ),
                );
                Navigator.push(context, route);
              },
              child: Container(
                margin: EdgeInsets.only(left: 24, bottom: 17),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/kembali_black.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
