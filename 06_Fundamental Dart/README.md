Rangkuman Materi Fundamental Dart
<details>
 <summary>1. Apa dan mengapa Dart?</summary>
 <br>
    Bahasa pemrograman open source dan dirancang untuk memmbuat aplikasi agar dapat berjalan dengan cepat dan didirikan oleh Google. Dart dibuat untuk menggantikan Javascript karena dinilai banyak kelemahan, bisa berjalan dalam sisi fornt end. Dart dipilih banyak orang karena:
    1. Type Safe -> Menjamin konsisten dari tipe data
    2. Null Safety -> Memberikan keamanan dari data yang bernilai null/kosong
    3. Rich Standard Library -> Dart mempunyai banyak dukungan library internal.
    4. Multiplatform -> Dart bisa berjalan pada berbagai jenis perangkat.
    </details>


 2. Fungsi Main---
    Fungsi Main adalah bagian yang akan dijalankan pertama kali, bisa bertipe data void ataupun int dan memiliki nama main. Perintah print di dalam bahasa Dart berfungsi untuk menampilkan data ke layar. Contohnya:
    void main(){
        print("Selamat datang di Bahasa Pemrograman Dart");
    }

    Void artinya tidak akan mengembalikan nilai apapun

 3. Komentar---
    Komentar adalah baris kode yang tidak akan dijalankan dengan tujuan untuk memberi catatan pada kode dan bisa digunakan sebagai dokumentasi. Jadi komentar tidak akan dicompile ketika program dikompilasi. Ada dua cara menuliskan komentar yaitu:
    1. Dengan cara garis miring dua kali seperti: // INI ADALAH KOMENTAR UNTUK SINGLE LINE
    2. Dengan cara memberikan garis miring dan bintang: /* INI ADALAH KOMENTAR UNTUK 
    MULTI LINE */ 

    Untuk memudahkan dalam pemberian komentar bisa menggunakan shortcut CTRL + /

 4. Variabel---
    Untuk menyimpan data di program seperti contoh box di memori yang akan menyimpan nilai/value, di box tersebut mempunyai nama dan juga tipe data. Dalam pendeklarasian variabel kita bisa menggunakan var dan diikuti dengan nama variabel, maka akan secara otomatis tipe data tersebut nilainya adalah null. ntuk menambahkan nilai pada variabel bisa menggunakkan tanda assignment atau tanda sama dengan ( = ). Selain itu kita bisa mendeklarasikan variabel dan juga memberikan nilai secara bersamaan. Contoh:
    ```
    void main(){
        var usia;
        usia = 20;
        // ATAU
        var nama = "Rizki Andika Setiadi";
    }
    ```
    
 5. Konstanta---
    Digunakan untuk menyimpan data namun nilai yang sudah diinisialisasikan bernilai konstan/tidak dapat diubah, konstanta memiliki nama dan juga tipe data. Untuk menggunakan konstanta bisa langsung diberikan tipenya menggunakan "final" tanpa kutip dan diikuti nama serta diberikan value secara langsung. Jadi variabel konstanta hanya bisa disetting satu kali aja. Contoh:
    ```
    void main(){
        final phi = 3.14;
        phi = 3.5; // BARIS INI AKAN ERROR KARENA FINAL TIDAK BISA DIBERIKAN NILAI BARU/TIDAK DAPAT DIUBAH
    }
    ```

 6. Tipe Data---
    Bahasa Dart adalah bahasa pemrograman yang Staticly Type yang artinya kita harus saat deklarasi variabel kita harus menentukan tipe datanya. Dart memiliki tipe data primitif yaitu integer (bilangan bulat), double (bilangan pecahan atau desimal), boolean (true/flase) dan juga String (teks atau karakter). Untuk value di tipe data double dipisahkan menggunakan titik (dot) bukan koma, untuk value di String penulisan teks diawali dan diakhir tanda kutip. Contoh:
    ```
    void main(){
        int usia = 20;
        double beratBadan = 60.5;
        bool pria = true;
        String nama = "Rizki Andika Setiadi";
    }
    ```

 7. Operator---
    Dart operator memberikan instruksi kepada komputer untuk pengolahan data, data yang dikelola disebut operand. Dart mendukung operator Aritmatika (+, -, *, /, %). Lalu ada operator Assignment yaitu memberi nilai pada variabel (=, +=, -+, dan lain lain), Comparison untuk membandingkan kesetaraan nilai (==, <, <=, dan lain lain), Logical menggabungkan beberapa kondisi untuk mengecek nilai boolean (&&, ||, !) Contoh:
    ```
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
    ```


    Note:
    ALT + SHIFT + ROW DOWN (Fast Copy).