# Rangkuman Materi Dart Object Oriented Programming 1

<details open>
<summary>

## Perkenalan Object Oriented Programming

</summary>

Object Oriented Programming adalah paradigma pemrograman yang berkonsep objek, kita dapat memvisualisasikan yang terjadi sebenarnya kedalam bahasa pemrograman. Object Oriented Programming atau biasa disebut dengan OOP disusun dalam bentuk abstraksi objek dan data serta proses diletakkan pada abstraksi tersebut. <br>
Keuntungan OOP : <br>
1. ### Mudah ditroubleshoot
Ketika terjadi error pada program bisa tau tanpa memeriksa baris perbaris. <br>

2. ### Mudah digunakan ulang
Beberapa objek memiliki kesamaan ciri dan perilaku sehingga tidak perlu dibuat ulang di dalam program kita. Penggunaan OOP sering digunakan di bahasa lain seperti C++, Java, Python dan lain - lain. <br>

</details>

## Komponen OOP : 

<details>
<summary>

## Class

</summary>

Abstraksi/gambaran/blueprint dari sebuah benda (objek), Class memiliki ciri - ciri yang disebut dengan Property. Dan di dalam class memiliki sifat dan kemampuan yang bisa disebut dengan method. Cara penggunaan : <br>
- Menggunakan kata kunci class <br>
- Memiliki nama dan detail dari Class diletakkan dalam kurung kurawal. Contoh:<br>

```
class Hewan{
    // Property
    // Method
}
```

</details>

<details>
<summary>

## Object

</summary>

Dari kelas yang dibuat, kita dapat membuat sebuah objek berdasarkan Class tersebut, kita dapat menyimpan objek dalam sebuah variabel yang sering disebut sebagai instance of class. Objek disini akan diperlakukan sebagai data yang ada di program yang kita buat. Contoh penggunaan : <br>

```
void main(){
    var h1 = Hewan();
    var h2 = Hewan();
    var h3 = Hewan();
}
```

</details>

<details>
<summary>

## Property

</summary>

Ciri - ciri suatu Class atau hal - hal yang dimiliki oleh suatu Class untuk menggambarkan suatu objek contohnya seperti nama, usia, berat badan, bulu dan lain - lain. Property disini memiliki sifat yang sama seperti variabel dengan memberikan tipe datanya dan juga menginisialisasikan nilainya secara eksplisit atau jika ingin menggunakan nullable kita bisa menambahkan tanda tanda (?) setelah tipe datanya. Property diletakkan didalam sebuah class, contoh penggunaannya : <br>

```
class Hewan{
    int? mata = 2;
    var kaki = 4;
}
```

Untuk mengakses sebuah Property sama saja seperti mengakses/menggunakan variabel tetapi bedanya untuk Property harus melalui sebuah objek. Contoh : <br>

```
void main(){
    var h1 = Hewan();
    print(h1.mata);
}
```

</details>

<details>
<summary>

## Method

</summary>

Method adalah sifat atau perilaku dari suatu Class atau bisa dibayangkan seperti aktivitas yang dapat dikerjakan oleh Class, contohnya seperti hewan yang bisa bersuara, tidur, bergerak dan lain - lain. Method merupakan sebuah function yang terdapat didalam sebuah Class, dalam pembuatan function Method sama saja seperti pembuatan function biasa yang bisa ditambahkan parameter serta return value. Method yang sudah dibuat bisa dijalankan juga melalui sebuah objek. Contoh penggunannya : <br>

```
class Hewan{
    void bersuara(){ 
        print('Meow'); // Method
    }
}

void main(){
    var h1 = Hewan(); // h1 adalah objek
    h1.bersuara();
}
```

</details>

<details>
<summary>

## Inheritance

</summary>

Inheritance adalah kemampuan suatu program untuk membuat sebuah Class baru dari Class yang sudah ada. Konsep Inheritance ini bisa dibayangkan seeprti seorang anak mewarisi sifat dari orang tuanya. Di dalam OOP, Class yang menurunkan sifat disebut sebagai kelas induk (parent class / superclass) sedangkan kelas yang mewarisi Class induknya disebut sebagai kelas anak (child class / subclass). Cara penggunaan : <br>

```
class ParentClass{
    
}

class ChildClass extends ParentClass{

}
```

Contoh penggunaan lainnya adalah : <br>

```
class Engine {
    int cc;
    int cylinder;
    int horsePower;
    // code here...
  }
   
  class DieselEngine extends Engine {
    // code here...
  }
   
  class PetrolEngine extends Engine {
    // code here...
  }

  void main() {
    DieselEngine dieselEngine = DieselEngine();
    dieselEngine.cc = 2000;
    dieselEngine.cylinder = 4;
    dieselEngine.horsePower = 150;
   
    PetrolEngine petrolEngine = PetrolEngine();
    petrolEngine.cc = 2000;
    petrolEngine.cylinder = 4;
    petrolEngine.horsePower = 150;
  }
  ```

sc kodingan: https://www.anbidev.com/dart-inheritance/
  </details>