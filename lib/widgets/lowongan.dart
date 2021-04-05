part of 'widgets.dart';

class LowonganBaru extends StatelessWidget {
  final Perusahaan lowongan;

  LowonganBaru({this.lowongan});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(
              3,
              3,
            ),
          ),
        ],
      ),
      child: Container(
        width: 320,
        margin: EdgeInsets.fromLTRB(16, 16, 8, 8),
        child: Column(
          children: [
            Row(
              children: [
                ////162
                Container(
                  width: 42,
                  height: 42,
                  margin: EdgeInsets.only(bottom: 4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Logo.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 231,
                  height: 42,
                  margin: EdgeInsets.only(bottom: 4, left: 5),
                  child: Column(
                    children: [
                      Container(
                        //14
                        margin: EdgeInsets.only(top: 6),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          lowongan.nama,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Container(
                        //20
                        margin: EdgeInsets.only(bottom: 2),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          lowongan.posisi,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10, ////344-236-26-42-5
                ),
                Container(
                  alignment: Alignment.topRight,
                  width: 26,
                  height: 24,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/simpan_normal.png'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
            Container(
              width: 320,
              height: 50,
              child: Column(
                children: [
                  Container(
                    height: 30,
                    margin: EdgeInsets.only(bottom: 4),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'lowongan.gaji',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          lowongan.alamat,
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: "E6EDF4".toColor()),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              lowongan.pendidikan,
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          width: 66,
                          height: 16,
                          margin: EdgeInsets.only(left: 8, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: "E6EDF4".toColor()),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              lowongan.jamkerja,
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 16,
                          alignment: Alignment.bottomRight,
                          child: Text(
                            lowongan.deadline,
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
