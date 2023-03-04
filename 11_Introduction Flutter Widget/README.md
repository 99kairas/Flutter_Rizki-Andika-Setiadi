# Rangkuman Materi Introduction Flutter Widget

<details open>
<summary>

## Perkenalan Flutter

</summary>
Flutter adalah tools atau alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop dan juga web. Flutter memiliki keunggulan yaitu : <br>

1. Mudah digunakan dan dipelajari <br>
2. Produktivitas Tinggi <br>
3. Dokumentasi Lengkap (Situs resminya adalah flutter.dev) <br>
4. Komunitas yang Berkembang <br>

### Bagian dari Flutter <br>

Flutter terdiri dari SDK (Software Development Kit) atau alat - alat untuk membantu proses pengembangan aplikasi dan didalam SDK itu terdapat Framework. Framework sendiri adalah perlengkapan untuk membentuk aplkasi yang dapat dikustomisasi, Flutter adalah single-base code yang mana kita hanya perlu menggunakan satu bahasa pemrograman saja dan output akhirnya bisa digunakan untuk beberapa platform / multi-platform. <br>

Untuk membuat project Flutter kita bisa menggunakan perintah : <br>

```
flutter create <nama_project>
```

Lalu untuk menjalankan project Flutter kita harus masuk ke direktori project terlebih dahulu lalu menjalankan perintah : <br>

```
flutter run
```

Saat pertama kali dikompilasi membutuhkan waktu tergantung spesifikasi komputer. Didalam Flutter terdapat struktur direktori seperti contohnya adalah <br>
1. Direktori Platform => android,ios dan web <br>
2. Direktori Project => lib - ruang kerja utama, test - aktivitas pengujian dan lain - lain. <br>
Didalam direktori lib terdapat file utama yang akan dibaca pertama kali yang bernama main.dart, didalam file tersebut terdapat fungsi main dan perintah untuk menjalankan aplikasi dengan fungsi runApp(top level entry di dalam Widget). Untuk menggunakan library dari Flutter kita harus mengimport material.dart terlebih dahulu. Contohnya : 

```
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
```

</details>

<details>
<summary>

## Widget

</summary>
Sebagian besar aplikasi yang dibuat terdiri dari widget - widget, widget ini digunakan untuk membentuk antarmuka (UI) pada aplikasi kita. Widget merupakan sebuah blueprint atau class yang dimana widget dapat terdiri dari beberapa widget lainnya. Ada dua jenis Widget : <br>

### Stateless Widget

Stateless Widget tidak bergantung pada perubahan data dimana widget ini tidak memiliki internal state dan hanya sekali saja dibuild. Stateless Widget hanya fokus pada tampilan yang tidak akan memiliki perubahan dan widget ini dibuat dengan extends pada class StatelessWidget. Apabila aplikasi kita hanya menampilkan static text maka kita bisa menggunakan Stateless widget saja. Untuk membuat Stateless Widget kita hanya perlu mengetikkan 'stl' pada keyboard lalu nanti terdapat shortcut yang akan membuatkan class Stateless Widget kita. Atau jika ingin mengetik, bisa mengetikkan seperti berikut : <br>

```
class MyWidget extends StatelessWidget{
    const MyWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
        return const MaterialApp(
            home: Scaffold(
                body: Text('Selamat datang di Flutter'),
            ),
        );
    }
}
```

### Stateful Widget

Mementingkan pada perubahan data dimana kita ingin bagian dari widget kita berubah secara dinamis. Stateful widget dibuat dengan extends pada class StatefulWidget dan di dalam satu widget menggunakan dua class (widget dan juga state). Sama seperti StatelessWidget, di widget ini kita juga bisa langsung mengetikkan 'stl' di keyboard dan memilih StatefulWidget agar widget bisa terbuat secara otomatis. Namun apabila ingin mengetikkan manual, bisa dengan cara : <br>

```
class MyWidget extends StatefulWidget{
    const MyWidget({Key? key}) : super(key: key);

    @override
    createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget>{
    @override
    Widget build(BuildContext context){
        return const MaterialApp(
            home: Scaffold(
                body: Text('Selamat datang di Flutter'),
            ),
        );
    }
}
```

</details>

<details>
<summary>

## Built in Widget

</summary>

Widget yang dapat langsung digunakan dan sudah terinstall bersama Flutter atau bawaan dari Flutter itu sendiri. Contohnya ada MaterialApp, Extend, Text dan lain lain. MaterialApp merupakan komponen penting yang terdapat di dalam Flutter karena widget ini berfungsi untuk membangun aplikasi dengan desain material. Selanjutnya ada Scaffold, digunakan untuk membuat sebuah halaman. Lalu ada AppBar, widget ini digunakan untuk membentuk application bar yang terletak pada bagian atas halaman. Ada widget Text untuk menampilkan teks.

</details>