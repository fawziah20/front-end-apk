part of 'widgets.dart';

class CustomBottomLamaran extends StatelessWidget {
  void _openPopup(context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new Lamaran();
        },
        fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "E6EDF4".toColor(),
              ),
              child: Container(
                width: 26,
                height: 24,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/simpan_detail.png'),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _openPopup(context);
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: "75A6FF".toColor(),
              ),
              child: Text(
                "Lamar Sekarang",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
