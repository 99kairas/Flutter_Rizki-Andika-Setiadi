# Rangkuman Materi Deep Dive Into Dart Object Oriented Programming

<details open>
<summary>

## Constructor

</summary>
Digunakan untuk mengkonstruksi objek baru dan Constructor adalah method yang dijalankan saat pembuatan object sama seperti Method biasa, Constructor juga dapat menerima parameter tetapi tidak dapat memiliki return. Untuk nama Constructor sama dengan nama Class nya. Cara penggunaannya : <br>

```
class Hewan{
    int? mata;
    int? kaki;

    Hewan(){
        mata = 0;
        kaki = 0;
    }
}

void main(){
    var hewan = Hewan();
    print(hewan.mata);
    print(hewan.kaki);
}
```

Untuk Constructor tidak memiliki nilai return seperti void, int, String dan lain - lain.

</details>

<details>
<summary>

## Inheritance

</summary>
Inheritance atau pewarisan adalah kemampuan membuat class baru dengan memanfaatkan class yang sudah ada, Inheritance bisa dibayangkan atau bisa dicontohkan seperti seorang anak yang mewarisi sifat dari orang tuanya dimana yang mewarisi sifatnya disebut dengan child class/kelas anak dan yang menuruni sifatnya disebut dengan super class/parent class yang bertujuan agar kemampuan calss yang sudah ada dapat dimiliki oleh class yang baru. Cara penggunaanny adalah dengan menambahkan extends saat membuat class baru : <br>

```
class Kambing extends Hewan{
    Kambing(){
        mata = 2;
        kaki = 4;
    }
}
```

Untuk pembuatan objek pada Inheritance sama seperti pembuatan objek biasa. Contoh : <br>

```
class Hewan{
    int? mata;
    int? kaki;
}

class Kambing extends Hewan{
    Kambing(){
        mata = 2;
        kaki = 4;
    }
}

void main(){
    var k1 = Kambing();
    print(k1.mata);     // Outputnya 2
    print(k1.kaki);     // Outputnya 4

    var h1 = Hewan();
    print(h1.mata);     // Outputnya 0
    print(h1.kaki);     // Outputnya 0
}
```

</details>

<details>
<summary>

## Method Overriding

</summary>
Method Overriding adalah kemampuan menulis ulang method yang sudah ada pada super-class/kelas induknya. Method Overriding bertujuan agar class memiliki method yang sama namun dengan proses yang berbeda. Ada beberapa hal yang perlu diperhatikan jika melakukan method overriding yaitu : <br>
1. Method overriding dilakukan pada class yang melakukan inheritance. <br>
2. Method sudah ada pada class induk. <br>
3. Method ditulis ulang seperti membuat method baru pada child-class/ class anak. <br>
4. Ditambahkan tanda @override di baris sebelum method dibuat. <br>

Contoh penggunaannya : <br>

```
class Hewan{
    reproduksi(){
        print('Tidak diketahui');
    }

    bernapas(){
        print('Tidak diketahui');
    }
}

class Kambing extends Hewan{
    @override
    reproduksi(){
        print('Melahirkan');
    }

    @override
    bernapas(){
        print('Paru - paru');
    }
}

void main(){
    var k1 = Kambing();
    k1.reproduksi();    // Output melahirkan
    k1.bernapas();      // Output paru - paru

    var h1 = Hewan();
    h1.reproduksi();     // Output Tidak diketahui
    h1.bernapas();      // Output Tidak diketahui
}
```

</details>

<details>
<summary>

## Interface

</summary>
Interface adalah class yang menunjukkan method apa saja yang terdapat di dalam atau di suatu class. Seluruh method yang terdapat di dalam Interface wajib di-override, Interface dapat digunakan dengan menggunakan implements. Cara menggunakan Interface yaitu, interface ini sekilas mirip dengan inheritance lalu pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk. Contoh : <br>

```
class Hewan{
    reproduksi(){
        print('Tidak diketahui');
    }
    
    bernapas(){
        print('Tidak diketahui');
    }
}

class Kambing implements Hewan{
    @override
    reproduksi(){
        print('Melahirkan');
    }
    
    @override
    bernapas(){
        print('Paru - paru');
    }
}

void main(){
    var k1 = Kambing();
    k1.reproduksi();    // Output melahirkan
    k1.bernapas();      // Output paru - paru

    var h1 = Hewan();
    h1.reproduksi();     // Output Tidak diketahui
    h1.bernapas();      // Output Tidak diketahui
}
```

</details>

<details>
<summary>

## Abstract Class

</summary>
Abtract Class merupakan class abstract yang artinya hanya gambaran umum saja dari sebuah class dan tidak bisa dibuat sebagai objek secara langsung namun class ini dapat menurunkan semua property dan method yang dimiliki kelas tersebut dan semua method tidak harus di override. Cara penggunaanya : <br>

```
abstract class Hewan{
    reproduksi(){
        print('tdak diketahui');
    }
    
    bernapas(){
        print('tdak diketahui');
    }
}

class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
}

void main(){
    var k1 = Kambing();
    k1.reproduksi();
    k1.bernapas;

    // AKAN MENAMPILKAN ERROR
    var h1 = Hewan();
}
```

</details>

<details>
<summary>

## Polymorphism

</summary>
Kemampuan data objek berubah menjadi bentuk lain dan tipe data yang dapat digunakan adalah super class serta dapat dilakukan pada class dengan extends atau implements. Contoh penggunaannya adalah : <br>

```
class Hewan{
    reproduksi(){
        print('tdak diketahui');
    }
    
    bernapas(){
        print('tdak diketahui');
    }
}

class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
    
    @override
    bernapas(){
        print('paru - paru');
    }
}

class Kucing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }

    @override
    bernapas(){
        print('paru - paru');
    }
}

void main(){
    Hewan k1 = Hewan();
    print(k1);      // Output Instance of Hewan

    k1 = Kambing();
    print(k1);      // Output Instance of Kambing
    k1.bernapas();  // Output paru - paru

    k1 = Kucing();
    print(k1);      // Output Instance of Kucing
    k1.bernapas();  // Output paru - paru
}
```

</details>

<details>
<summary>

## Generics

</summary>
Merupakan kemampuan untuk menambahkan parameter type pada class atau fungsi dengan parameter type ini dapat memberi kemampuan agar dapat menerima data dengan tipe data yang berbeda atau dengan tipe data yang kita inginkan. Tipe data yang diinginkan ditentukan saat membuat class atau menjalankan fungsi. Contoh penggunaannya : <br>

```
class Hadiah<T> {
    var isi;

    Hadiah (T i){
        isi = i;
    }
}
```

Contoh lain : <br>

```
class Hadiah<T> {
    var isi;

    Hadiah (T i){
        isi = i;
    }
}

void main(){
    var h1 = Hadiah<String>('mobil');
    print(h1.isi);      // Output mobil

    var h2 = Hadiah<int>(10);
    print(h2.isi);      // Output 10
}
```

Membuat fungsi dengan Generics yaitu : <br>

```
void cekTipe<T>(T data){
    print(data.runtimeType);
}

void main(){
    cekTipe<String>('satu');        // Output : String
    cekTipe<int>(1);                // Output : int
    cekTipe<bool>(true);            // Output : bool
}
```

</details>