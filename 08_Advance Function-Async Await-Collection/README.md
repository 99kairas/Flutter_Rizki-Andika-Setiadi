# Rangkuman Materi Advance Function-Async Await-Collection

<details open>
<summary>FUNGSI LANJUTAN</summary>

- ### Anonymous Function
    Tidak memiliki nama, fungsi/function dijadikan sebagai data.<br>
    Ditulis dengan:<br>

```
(){
   // Perintah yang dijalankan saat fungsi dipanggil
}

var hello(){
    print('Hello');
}

var jumlah = (int a, int b){
    return a + b;
}

void main(){
    hello();
    print(jumlah(1,2));
}
```

- ### Arrow Function
    Dapat menuliskan funtion menjadi lebih ringkas, dapat memiliki nama atau tidak, berisi satu data (dari proses maupun data statis), nilai return fungsi ini diambil dari data tersebut. Ditulis dengan:<br>

```
() => proses_yang_dijalankan_saat_fungsi_dipanggil();
```

Contoh : <br>

```
var hello() = () => print('hello');
var jumlah = (int a, int b) => a + b;

void main(){
    hello();
    print(jumlah(1, 2));
}
```

Penjelasan : Fungsi hello melakukan print didalamnya dan fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print.<br>

</details>

<details>
<summary>ASYNC-AWAIT</summary>
Dengan menggunakan async-await ini kita dapat menjalankan beberapa proses tanpa perlu menunggu, lalu proses ditulis dalam bentuk fungsi dan await akan menunggu hingga proses async selesai. Jika disimulasikan, contoh proses async adalah saat kita memiliki sebuah fungsi P1 dan P2 dimana P1 memiliki proses async selama 1 detik. Maka fungsi P1 akan dijalankan setelah menunggu satu detik terlebih dahulu, namun apabila P2 tidak memiliki proses async, maka ketika fungsi dijalankan dia akan langsung mengeluarkan output. Atau sederhananya adalah fungsi p2 akan dijalankan terlebih dahulu daripada fungsi p1 karena perintah dari Future-delayed. Simulasinya sebagai berikut  : <br>

```
void P1(){
    Future.delayed(Duration(seconds: 1), (){
        print('hello dari P1');
    });
}

void P2(){
    print('Hello dari P2');
}

void main(){
    P1(); // P2 akan selesai lebih dahulu
    P2(); // P1 akan dijalankan belakangan
}
```

Fungsi p2 akan dijalankan lebih dulu lalu setelah menunggu satu detik (menggunakan Future-delayed) baru p1 akan dijalankan. Kita bisa menggunakan async-await dengan future dimana kita bisa menggunakan proses async layaknya kita menggunakan proses syncronus. Proses syncronus adalah dimana kita menjalankan program dari atas ke bawah (berurutan), jika terdapat dua baris kode maka kode baris kedua tidak dapat dieksekusi kecuali baris pertama sudah selesai dieksekusi. Sedangkan proses async menggunakan objek <bold>Future-delayed</bold> dimana kita bisa mengeksekusi kode kedua terlebih dahulu tanpa harus menunggu kode baris pertama selesai dieksekusi. Penggunaan future dengan async-await bertujuan untuk supaya bisa menuliskan proses async layaknya proses syncronus. Contoh simulasi :<br>

```
Future<void> P1 () async{
    await Future.delayed(Duration(seconds: 1), (){
        print('Hello dari P1');
    });
}

void P2(){
    print('Hello dari P2');
}

void main() async{
    await P1();
    P2();
}
```

</details>

<details>
<summary>TIPE DATA FUTURE</summary>
Dengan menggunakan future dapat menggunakan proses yang dapat ditunggu atau diberikan durasi lalu membawa data return dari fungsi async. Pada Future sendiri berjalan secara asyncronus. Penggunaan Future : <br>

```
Future<String>P1() { //Tipe data Future berjenis String
    return Future.delayed(Duration(seconds: 1), (){
        return 'hello dari P1'; //Data yang direturn
    });
}

void main() async{
    var data = await P1();
    print(data); // P1 menghasilkan Future yang di dalamnya terdapat sebuah String
}
```

</details>

<details>
<summary>COLLECTION</summary>

Strukture data yang lebih canggih untuk menangani masalah yang lebih kompleks, collection bisa menyimpan kumpulan dalam satu tempat.<br>
- ### List
Menyimpan data secara berbaris, tiap data memiliki index. Contoh simulasi : <br>

```
void main() async{
    var scores = []; // Membuat List
    scores.add(60); 
    scores.add(80);
    scores.add(90); // Menambahkan Data
    scores.add(70);
    scores.add(85);
    print(scores);

    print(scores[0]);
    print(scores[1]);
    print(scores[2]); // Mengambil data berdasarkan index
    print(scores[3]);
    print(scores[4]);
}
```

Untuk penulisan kode diatas tidak efektif karena harus menuliskan banyak baris kode untuk print setiap perintah, sedangkan kita bisa memperingkas kode kita dengan menggunakan perintah <bold>for-in</bold>. Contohnya : <br>

```
void main() async{
    var scores = [60, 80, 90, 70, 85]; // Membuat list yang sudah terdapat datanya
    print(scores);

    for (var score in scores){ // Membuat variabel baru dengan nama score
        print(score); // Mengambil seluruh data pada list
    }
}
```

- ### Map
Menyimpan data secara key-value, setiap key memiliki valuenya masing - masing. Key berguna selayaknya index pada list, contoh penggunaan Map:   <br>

```
void main() async{
    var student = {}; // Membuat Map
    student['name'] = 'Rizki Andika Setiadi';  // Menambah data nama
    student['age'] = 21;  // Menambah data umur
    print(student);

    print(student['name']); // Mengambil data berdasarkan key
    print(student['age']);
}
```

Contoh penggunaan for-in pada Map : <br>

```
void main() async{
    var student = {
        'name' : 'Rizki Andika Setiadi',    // Membuat map disertai datanya
        'age' : 21;
    };
    print(student);

    for(var keyStudent in student.keys){
        print(student[keyStudent]);     // Mengambil seluruh data pada list
    }
}
```

</details>