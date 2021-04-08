part of 'models.dart';

class Perusahaan extends Equatable {
  final int id;
  final String nama;
  final String gambar;
  final String posisi;
  final String gaji;
  final String alamat;
  final String pendidikan;
  final String jamkerja;
  final String deadline;
  final String syaratumum;
  final String syaratkhusus;
  final String fasilitas;

  Perusahaan(
      {this.id,
      this.nama,
      this.gambar,
      this.posisi,
      this.gaji,
      this.alamat,
      this.pendidikan,
      this.jamkerja,
      this.deadline,
      this.syaratumum,
      this.syaratkhusus,
      this.fasilitas});

  @override
  List<Object> get props => [
        id,
        nama,
        gambar,
        posisi,
        gaji,
        alamat,
        pendidikan,
        jamkerja,
        deadline,
        syaratumum,
        syaratkhusus,
        fasilitas,
      ];
}

List<Perusahaan> mockPerusahaan = [
  Perusahaan(
      id: 1,
      nama: 'Seven Inc',
      gambar: 'assets/logo_tokped.png',
      posisi: 'Front-End Mobile',
      gaji: "5000000",
      alamat: 'Jalan Ring Road',
      pendidikan: 'S1',
      jamkerja: 'Full Time',
      deadline: '29-04-2021',
      syaratumum:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
      syaratkhusus:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
      fasilitas:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. "),
  Perusahaan(
      id: 2,
      nama: 'Twelve Inc',
      gambar: 'assets/logo_bni.png',
      posisi: 'Front-End Mobile',
      gaji: "5000000",
      alamat: 'Jalan Ring Road',
      pendidikan: 'S1',
      jamkerja: 'Part Time',
      deadline: '29-04-2021',
      syaratumum:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
      syaratkhusus:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
      fasilitas:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. "),
  Perusahaan(
      id: 3,
      nama: 'Four Inc',
      gambar: 'assets/logo_rg.png',
      posisi: 'Front-End Mobile',
      gaji: '5000000',
      alamat: 'Jalan Ring Road',
      pendidikan: 'S1',
      jamkerja: 'Part Time',
      deadline: '29-04-2021',
      syaratumum:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
      syaratkhusus:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
      fasilitas:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. "),
  Perusahaan(
    id: 4,
    nama: 'One Inc',
    gambar: 'assets/logo_bni.png',
    posisi: 'Front-End Mobile',
    gaji: '5000000',
    alamat: 'Jalan Ring Road',
    pendidikan: 'S1',
    jamkerja: 'Full Time',
    deadline: '29-04-2021',
    syaratumum:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
    syaratkhusus:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.",
    fasilitas:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. ",
  ),
];
