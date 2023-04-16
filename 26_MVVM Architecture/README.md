# Rangkuman Materi MVVM Architecture

## MVVM Architecture

MVVM adalah sebuah cara untuk memisahkan antara logic dengan tampilan (view) ke dalam ViewModel. <br>

### MVVM memiliki keuntungan diantaranya : <br>

1. Reusability => Jika ada beberapa tampilan yang memerlukan alur logic yang sama, maka bisa menggunakan ViewModel yang sama. <br>
2. Maintainability => Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic. <br>
3. Testability => Pengujian menjadi terpisah antara pengujhian tampilan (ui test) dengan pengujian logic (unit test) sehingga dpat meningkatkan produktivitas pada pengujian. <br>

## Struktur Direktori

1. Model memiliki dua bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut. <br>
2. Tiap screen diletakkan dalam sebuah direktori yang didalamnya terdpat View dan juga ViewModel. <br>

### Model

1. Bentuk data yang akan digunakan, dibuat dalam bentuk class. <br>
2. Data - data yang ada didalamnya diletakkan pada property. <br>
   Contoh : <br>

```
class Contact {
    final int id;
    final String name;
    final String phone;

    Contact({
        required this.id,
        required this.name,
        required this.phone,
    });
}
```

### ViewModel

1. Menyimpan data - data dan logic yang diperlukan halaman seperti ContactScreen. <br>
2. Jika widget lain memerlukan logic yang sama maka dapat menggunakan ViewModel ini juga. <br>
3. Jangan lupa untuk mendaftarkan ViewModel di MultiProvider agar dapat banyak menggunakan banyak ViewModel. <br>

### View

Menggunakan StatefulWidget. Cara menampilkan data di View adalah : <br>

1. Letakkan pada bagian build. <br>
2. Menggunakan getters yang ada pada ViewModel. <br>
3. Data dapat langsung ditampilkan pada widgets. <br>
