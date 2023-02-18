Rangkuman Materi Basic Version and Branch Management (Git)

Di dalam git, terdapat sebutan versioning. Versioning adalah cara untuk mengatur versi dari source code suatu program. Lalu, git adalah sebuah version control system yang terkenal yang sudah banyak digunakan oleh para developer untuk mengembangkan software mereka secara bersama - sama. Git dibuat pada tahun 2005 oleh seseorang yang berasal dari Finlandia yang bernama Linus Torvalds. Git akan melacak setiap perubahan yang terjadi di dalamnya, maka dari itu banyak developer yang menggunakan software ini untuk kolaborasi. Di dalam git, terdapat fitur bernama commit, commit berfungsi untuk menyimpan perubahan yang nantinya akan dilakukan tetapi tidak akan terjadi perubahan pada repository tersebut atau sederhananya commit itu adalah catatan perubahan.

Cara instalasi GIT di Apple:
1. Download git terbaru untuk versi Mac di website git
2. Ikuti tutorialnya untuk menginstall git
3. Buka terminal dan ketik "git --version" 

Cara instalasi GIT di Windows:
1. Download git terbaru untuk versi Windows di website git
2. Setelah selesai download git nya, jalankan installer bernama "Git Setup" lalu ikuti dan finish.
3. Jalankan command prompt dan ketik "git --version"

Notes:
Perintah dasar di GIT
1. git config -> Perintah untuk mengatur konfigurasi sesuai keinginan. Contoh : buka terminal lalu ketik "git config --global namaUser emailUser@gmail.com"

2. git init -> Perintah untuk membuat repository baru. Contoh : Arahkan ke folder yang diinginkan lalu ketik "git init"

3. git add -> Perintah yang biasa digunakan untuk menambah file ke index/StagingArea. Contoh : lakukan perubahan di repo lalu ketik "git add */namaFile". * digunakan jika ingin memasukkan semua perubahan file yang ada di repo tersebut.

4. git commit -> Perintah untuk melakukan commit pada perubahan, perubahan yang dilakukan di commit tidak akan langsung masuk ke remote repository. Contoh : ketik "git commit -m "pesanCommitDisini"

5. git status -> Perintah untuk menampilakn daftar file yang berubah. Contoh : ketikkan "git status"

6. git checkout -> Perintah untuk membuat branch ataupun berpindah branch(cabang). Contoh : Apabila ingin berpindah dari branch main ke branch development maka gunakan perintah "git 
checkout development"

7. git pull -> Perintah untuk menggabungkan semua perubahan yang ada di remote repository ke dalam direktori lokal. Contoh: ketik "git pull"

8. git merge -> Perintah untuk menggabungkan satu ke branch lain yang aktif. Contoh : "git merge namaBranch"

9. git reset -> Perintah untuk mengulang/reset index. Di git reset ini terdapat dua opsi yaitu reset hard ataupun reset soft. Contoh: "git reset --hard"

10. git rm -> Perintah untuk menghapus/remove file dari index dan direkotri. Contoh: "git rm namaFile"