Rangkuman Materi Branching Looping dan Function
<details>
<summary>Pengambilan Keputusan</summary>
Menentukan alur program pada kondisi tertentu. if(memerlukan nilai bool dari operator logika atau comparison lalu menjalankan bagian proses apabila nilai boolean bernilai true/benar. Suatu ekspresi akan menguji suatu kondisi, apabila true blok program akan dijalankan namun apabila false maka proses tersebut akan dilewatkan. Ekspresi bisa dituliskan seperti :<br>

```
if(nilai_bool){
    // AKAN DIPROSES APABILA NILAI TRUE
}
```

Contoh:<br>

```
void main(){
int usia = 18;
    if(usia < 20){
        print('Usia remaja');
    }
}
```

Terdapat perintah else apabila nilai booleannya adalah false. Contoh penggunaan else:<br>

```
void main(){
int usia = 18;
    if(usia < 20){
        print('Usia remaja');
    }else{
        print('Tidak memiliki golongan');
    }
}
```

Kita bisa menambah alternatif lain jika saat kondisi pertama false apabila di kondisi kedua kemungkinan true. Contoh penggunaan else if:<br>

```
void main(){
int usia = 18;
    if(usia < 20){
        print('Usia remaja');
    }else if(usia < 40){
        print('Dewasa');
    }else{
        print('Tidak memiliki golongan');
    }
}
```

</details>

2. Perulangan
Perulangan adalah menjalankan proses berulang kali
    - FOR -> Untuk for, dapat diketahui berapa kali perulangan yang diinginkan. For juga memerlukan nilai awal, nilai bool (jika nilai true maka perulangan akan dilanjutkan) dan memerlukan pengubah nilai. Cara penulisan perulangan for:
    
    for(nilai_awal; nilai_bool; pengubah_nilai_awal){
        // PROSES BERULANG KALI JIKA NILAI BOOL ADALAH TRUE;
    }
    
    void main(){
        for(var i = 0; i < 10; i+= 1){
            print(i);
        }
    }
    

    - WHILE -> While memerlukan nilai boolean, jika true maka perulangan akan dilanjutkan. Dan berbeda seperti for, wile tidak dapat diketahui berapa kali perulangan terjadi. Cara penulisan perulangan while:

    while(nilai_bool){
        // PROSES BERULANG KALI JIKA NILAI BOOL ADALAH TRUE;
    }

    void main(){
        var i = 0;
        while(i < 10){
            print(i);
            i++;
        }
    }

    - DO-WHILE -> Mengubah bentuk while dan proses dijalankan minimal satu kali walaupun nilai pertama adalah false namun akan diteruskan apabila nilai bool adalah true. Cara penulisan perulangan do-while:

    do{
        // PROSES BERULANG JIKA NILAI BOOL ADALAH TRUE;
    } while(nilai_bool);

    void main(){
        var i = 0;
        do{
            print(i);
            i++
        } while(i < 10);
    }
    
Break dan Continue
Perulangan menggunakan nilai bool untuk lanjut atau berhenti. Break dan continue dapat menghentikan perulangan dengan mengabaikan nilai bool, untuk continue dapat menghentikan satu kali proses. Perbedaan:
Break -> Menghentikan seluruh proses perulangan.
Continue -> Menghentikan satu kali proses perulangan.
Cara penulisan break dan continue:
Break:

void main(){
    for(var i = 0; true; i++){
        if(i == 10){
            break;
        }
        print(i);
    }
}

Continue:

void main(){
    for(var i = 0; i < 10; i+=1){
        if(i == 5){
            continue;
        }
        print(i);
    }
}

Fungsi/Function
- Kumpulan perintah atau prosedur yang dapat digunakan ulang berkali kali, kita cukup mengubah fungsi sekali maka penggunaan lainnya akan ikut berubah juga. Cara membuat fungsi:

tipe_data nama_fungsi(){
    // Perintah yang dijalankan saat fungsi dipanggil.
}

Setelah membuat fungsi, kita bisa memanggil fungsi tersebut di dalam fungsi main. Contoh:

void halo(){
    print('Ini adalah fungsi halo');
}

void main(){
    halo();
}

- Fungsi dengan Parameter
tipe_data nama_fungsi(tipe_data nama_parameter){
    // Perintah yang dijalankan saat fungsi dipanggil;
}

Setelah membuat fungsi, kita bisa memanggil fungsi tersebut di dalam fungsi main. Contoh:

void tampil(String teks){
    print(teks);
}

void main(){
    tampil('Halo');
    tampil('Selamat datang');
}

- Fungsi dengan Return -> Memberi nilai pada fungsi saat dipanggil:
tipe_data nama_fungsi(tipe_data nama_parameter){
    // Perintah yang dijalankan saat fungsi dipanggil;
    return nilai;
}

Setelah membuat fungsi, kita bisa memanggil fungsi tersebut di dalam fungsi main. Contoh:

int jumlah(int a, int b){
    return a + b;
}

void main(){
    var hasil = jumlah(1, 2);
    print(hasil);
}