void main() {
  //void itu termasuk fungcion nah kalo function yang utama itu yang main(){}
  pengurangan(12, 10);
  //angka 12 itu == angka1 ,  dan 10 == angka2
  //bisa juga hasil dari fungsi di simpen di variable asal ada return dan type fungsinya juga jangan void kaya yang di pertambahan

  int hasilperjumlahan = perjumlahan(123, 123);
  print(hasilperjumlahan);
  // nah si hasil perjumlahan ini ngejalanin fungsi yang perjumlahan dan hasilnya ditampung di variable hasil
  // untuk menggunakan hasil dari variable bisa juga ditambah $
  hasilperjumlahan = hasilperjumlahan + 2;
  print("hasilnya adalah $hasilperjumlahan");
}

void pengurangan(int angka1, int angka2) {
  //nah int angka1,int angka 2 itu nanti dipanggiil di fungsi yang diatas
  print(angka1 - angka2);
}

int perjumlahan(int angka1, int angka2) {
  int hasil = angka1 + angka2;
  return hasil;
}
