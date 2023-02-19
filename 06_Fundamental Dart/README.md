Rangkuman Materi Fundamental Dart
<details open>
 <summary>1. Apa dan mengapa Dart?</summary>
 <br>
    Dart adalah bahasa pemrograman open source dan dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat dan didirikan oleh Google. Dart dibuat untuk menggantikan Javascript karena dinilai banyak kelemahan, bisa berjalan dalam sisi fornt end. Dart dipilih banyak orang karena:<br>
    1. Type Safe -> Menjamin konsisten dari tipe data<br>
    2. Null Safety -> Memberikan keamanan dari data yang bernilai null/kosong<br>
    3. Rich Standard Library -> Dart mempunyai banyak dukungan library internal.<br>
    4. Multiplatform -> Dart bisa berjalan pada berbagai jenis perangkat.<br>
    </details>

<details>
 <summary>2. Fungsi Main</summary>
 <br>
    Fungsi Main adalah bagian yang akan dijalankan pertama kali, bisa bertipe data void ataupun int dan memiliki nama main. Perintah print di dalam bahasa Dart berfungsi untuk menampilkan data ke layar. Contohnya:<br>
    ``void main(){
        print("Selamat datang di Bahasa Pemrograman Dart");
    }``
    Void artinya tidak akan mengembalikan nilai apapun
</details>

<details>
 <summary>3. Komentar</summary><br>
    Komentar adalah baris kode yang tidak akan dijalankan dengan tujuan untuk memberi catatan pada kode dan bisa digunakan sebagai dokumentasi. Jadi komentar tidak akan dicompile ketika program dikompilasi. Ada dua cara menuliskan komentar yaitu:<br>
    1. Dengan cara garis miring dua kali seperti: // INI ADALAH KOMENTAR UNTUK SINGLE LINE<br>
    2. Dengan cara memberikan garis miring dan bintang: /* INI ADALAH KOMENTAR UNTUK <br>
    MULTI LINE */ <br>    
    Untuk memudahkan dalam pemberian komentar bisa menggunakan shortcut CTRL + / <br>
</details>

<details>
 <summary>4. Variabel</summary><br>
    Untuk menyimpan data di program seperti contoh box di memori yang akan menyimpan nilai/value, di box tersebut mempunyai nama dan juga tipe data. Dalam pendeklarasian variabel kita bisa menggunakan var dan diikuti dengan nama variabel, maka akan secara otomatis tipe data tersebut nilainya adalah null. ntuk menambahkan nilai pada variabel bisa menggunakkan tanda assignment atau tanda sama dengan ( = ). Selain itu kita bisa mendeklarasikan variabel dan juga memberikan nilai secara bersamaan. Contoh:<br>
    
    void main(){
        var usia;
        usia = 20;
        // ATAU
        var nama = "Rizki Andika Setiadi";
    }

</details>

 <details>   
 <summary>5. Konstanta</summary><br>
    Digunakan untuk menyimpan data namun nilai yang sudah diinisialisasikan bernilai konstan/tidak dapat diubah, konstanta memiliki nama dan juga tipe data. Untuk menggunakan konstanta bisa langsung diberikan tipenya menggunakan "final" tanpa kutip dan diikuti nama serta diberikan value secara langsung. Jadi variabel konstanta hanya bisa disetting satu kali aja. Contoh:<br>
    
    void main(){
        final phi = 3.14;
        phi = 3.5; // BARIS INI AKAN ERROR KARENA FINAL TIDAK BISA DIBERIKAN NILAI BARU/TIDAK DAPAT DIUBAH
    }

</details>

<details>
 <summary>6. Tipe Data</summary><br>
    Bahasa Dart adalah bahasa pemrograman yang Staticly Type yang artinya kita harus saat deklarasi variabel kita harus menentukan tipe datanya. Dart memiliki tipe data primitif yaitu integer (bilangan bulat), double (bilangan pecahan atau desimal), boolean (true/flase) dan juga String (teks atau karakter). Untuk value di tipe data double dipisahkan menggunakan titik (dot) bukan koma, untuk value di String penulisan teks diawali dan diakhir tanda kutip. Contoh:<br>
    
    void main(){
        int usia = 20;
        double beratBadan = 60.5;
        bool pria = true;
        String nama = "Rizki Andika Setiadi";
    }

</details>

<details>
 <summary>7. Operator</summary><br>
    Dart operator memberikan instruksi kepada komputer untuk pengolahan data, data yang dikelola disebut operand. Dart mendukung operator Aritmatika (+, -, *, /, %). Lalu ada operator Assignment yaitu memberi nilai pada variabel (=, +=, -+, dan lain lain), Comparison untuk membandingkan kesetaraan nilai (==, <, <=, dan lain lain), Logical menggabungkan beberapa kondisi untuk mengecek nilai boolean (&&, ||, !) Contoh:<br>
    
    void main(){
        // ARITMATHIC
        print(1 + 2);

        // ASSIGNMENT
        var usia = 18;
        usia = 19;

        // COMPARISON
        print(1 == 2);

        // LOGICAL
        print(1 == 2 && 2 == 1);
    }
    
</details>

    Note:
    ALT + SHIFT + ROW DOWN (Fast Copy).