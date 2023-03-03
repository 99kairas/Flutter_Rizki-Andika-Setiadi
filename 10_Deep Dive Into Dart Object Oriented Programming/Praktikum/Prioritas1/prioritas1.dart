class BangunRuang {
  double? panjangBangunRuang, lebarBangunRuang, tinggiBangunRuang;

  BangunRuang({
    this.panjangBangunRuang,
    this.lebarBangunRuang,
    this.tinggiBangunRuang,
  });

  double? volumeBangunRuang() {}
}

class Kubus extends BangunRuang {
  double? sisi;

  Kubus({
    this.sisi,
  });

  @override
  double volumeBangunRuang() {
    return sisi! * sisi! * sisi!;
  }
}

class Balok extends BangunRuang {
  @override
  double? panjangBangunRuang, lebarBangunRuang, tinggiBangunRuang;
  Balok({
    this.panjangBangunRuang,
    this.lebarBangunRuang,
    this.tinggiBangunRuang,
  });

  @override
  double volumeBangunRuang() {
    return panjangBangunRuang! * lebarBangunRuang! * tinggiBangunRuang!;
  }
}

void main(List<String> args) {
  Kubus kubus = Kubus(sisi: 3);
  print('Volume Kubus jika sisinya ${kubus.sisi} adalah ${kubus.volumeBangunRuang()}');

  Balok balok =
      Balok(panjangBangunRuang: 3, lebarBangunRuang: 4.5, tinggiBangunRuang: 5);
  print('Volume Balok jika panjang ${balok.panjangBangunRuang} lebar ${balok.lebarBangunRuang} dan tinggnya ${balok.tinggiBangunRuang} adalah : ${balok.volumeBangunRuang()}');

  BangunRuang bangun = BangunRuang();
  print(bangun.volumeBangunRuang());
}
