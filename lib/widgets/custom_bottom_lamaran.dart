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

      // child: Row(
      //   mainAxisSize: MainAxisSize.max,
      //   children: [
      //     GestureDetector(
      //       onTap: () {},
      //       child: Container(
      //         margin: EdgeInsets.only(right: 12, left: 24),
      //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(8),
      //           color: "E6EDF4".toColor(),
      //         ),
      //         child: Container(
      //           width: MediaQuery.of(context).size.width * 0.04,
      //           height: MediaQuery.of(context).size.width * 0.04,
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage('assets/simpan_detail.png'),
      //                   fit: BoxFit.fill)),
      //         ),
      //       ),
      //     ),
      //     GestureDetector(
      //       onTap: () {
      //         _openPopup(context);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width * 0.6,
      //         margin: EdgeInsets.only(right: 24),
      //         padding: EdgeInsets.symmetric(
      //             vertical: 10,
      //             horizontal: MediaQuery.of(context).size.width * 0.1),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(8),
      //           color: "75A6FF".toColor(),
      //         ),
      //         child: Text(
      //           "Lamar Sekarang",
      //           style: TextStyle(
      //               fontSize: 14,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
