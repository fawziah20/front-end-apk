part of 'widgets.dart';

class Rekomendasi extends StatelessWidget {
  final Perusahaan perusahaan;

  Rekomendasi({this.perusahaan});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 8, right: 12),
        width: 252,
        height: 132,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              offset: Offset(
                3,
                3,
              ),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 200,
                  margin: EdgeInsets.only(top: 12, left: 12),
                  child: Text(
                    perusahaan.nama,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 13,
                  height: 16,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/simpan_normal.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 5, left: 12),
              child: Text(
                "Gaji Disembunyikan",
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo_bni.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          perusahaan.nama,
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          perusahaan.alamat,
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 50,
                      alignment: Alignment.bottomRight,
                      child: Text(
                        perusahaan.deadline,
                        style: TextStyle(fontSize: 8),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
