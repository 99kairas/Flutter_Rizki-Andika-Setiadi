Rangkuman Materi Branching Looping dan Function

1. Pengambilan Keputusan
Menentukan alur program pada kondisi tertentu. if(memerlukan nilai bool dari operator logika atau comparison lalu menjalankan bagian proses apabila nilai boolean bernilai true/benar. Suatu ekspresi akan menguji suatu kondisi, apabila true blok program akan dijalankan namun apabila false maka proses tersebut akan dilewatkan. Ekspresi bisa dituliskan seperti :
if(nilai_bool){
    // AKAN DIPROSES APABILA NILAI TRUE
}
Contoh:

void main(){
int usia = 18;
    if(usia < 20){
        print('Usia remaja');
    }
}

Terdapat perintah else apabila nilai booleannya adalah false. Contoh penggunaan else:

void main(){
int usia = 18;
    if(usia < 20){
        print('Usia remaja');
    }else{
        print('Tidak memiliki golongan');
    }
}

Kita bisa menambah alternatif lain jika saat kondisi pertama false apabila di kondisi kedua kemungkinan true. Contoh penggunaan else if:

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

2. Perulangan


Break dan Continue

Fungsi/Function