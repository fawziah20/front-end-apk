part of 'pages.dart';

class PerusahaanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(252.0),
            child: Stack(
              children: [
                Container(
                  height: 282,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    color: "75A6FF".toColor(),
                  ),
                ),
                SafeArea(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 104, left: 24),
                                width: 88,
                                height: 88,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/Logo.png'),
                                  ),
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 141,
                                      left: 8), ////top 109+32(logo back)
                                  child: Text(
                                    "Tokopedia",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 8), ////top 129+32(logo back)
                                  child: Text(
                                    "Tokopedia",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 8), ////top 151+32(logo back)
                                  child: Text(
                                    "Tokopedia",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 4,
                                      left: 8), ////top 171+32(logo back)
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: "4A81E7".toColor()),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 3,
                                    horizontal: 15,
                                  ),
                                  child: Text(
                                    "Tokopedia",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))),
                SafeArea(
                    child: ListView(children: [
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 32,
                              height: 32,
                              child: Image.asset('assets/kembali.png'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ])),
                SafeArea(
                    child: ListView(children: [
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 32,
                              height: 32,
                              child: Image.asset('assets/share.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ])),
              ],
            )),
        body: PerusahaanDetailPage());
  }
}
