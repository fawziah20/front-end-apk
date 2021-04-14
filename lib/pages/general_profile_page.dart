part of "pages.dart";

class GenProfilePage extends StatelessWidget {
  final String title;
  final Widget child;
  final String str;
  final String photo;
  final String photodefault;
  final bool tampil;

  GenProfilePage(
      {this.title = "title",
      this.child,
      this.str,
      this.photo,
      this.photodefault = "assets/person.png",
      this.tampil});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                  color: blueColors,
                ),
              ),
              Positioned(
                  top: orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.05
                      : 20,
                  child: Text(
                    title,
                    style: blackFontStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                bottom: -40,
                child: Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        width: orientation == Orientation.portrait ? 150 : 100,
                        height: orientation == Orientation.portrait ? 150 : 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          shape: BoxShape.rectangle,
                        ),
                        child: Container(
                          width:
                              orientation == Orientation.portrait ? 150 : 100,
                          height:
                              orientation == Orientation.portrait ? 150 : 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                image: AssetImage(
                                    photo != null ? photo : photodefault),
                                // fit: BoxFit.contain
                              )),
                        ),
                      ),
                      str != null
                          ? Positioned(
                              bottom: -5,
                              right: -5,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: "0E3854".toColor(),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
                                  color: blueColors2,
                                  alignment: Alignment.bottomRight,
                                  icon: Icon(Icons.camera_alt_rounded,
                                      color: Colors.white),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.05
                      : 20,
                  left: 20,
                  child: new IconButton(
                      icon: Icon(Icons.arrow_back), onPressed: () {})),
            ],
          ),
          child ?? Container(),
        ],
      ),
    );
  }
}
