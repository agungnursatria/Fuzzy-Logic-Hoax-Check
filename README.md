# Fuzzy-Logic-News-Hoax-Checker
Diberikan suatu himpunan data berisi 30 berita dengan dua atribut: Emosi dan Provokasi yang bernilai 0 sampai 100, serta atribut kelas Hoax yang bernilai “Ya” dan “Tidak”, seperti diilustasikan pada tabel berikut. Gunakan dua puluh berita pertama, B01 sampai B20, sebagai acuan untuk membangun sebuah sistem penalaran berbasis fuzzy logic untuk mendeteksi apakah sepuluh berita yang belum diketahui kelasnya, B21 sampai B30 (Data Testing), adalah berita bohong (hoax) atau bukan.

![aa](https://user-images.githubusercontent.com/15356308/40264490-32546390-5b4f-11e8-8524-bfad10977f1e.JPG)

## 1.	Deskripsi Masalah
Dalam menentukan pilihan terdapat dua kemungkinan, yaitu Benar dan Salah atau dapat disebut zona hitam dan zona putih. Namun, nyatanya dalam pengaplikasian hal tersebut terdapat range atau jarak yang menyatakan disaat pilihan itu tidak dapat dipastikan ketidakpastiannya. Hal itu  disebut zona abu-abu. Yaitu zona dimana tidak dapat dikatakan hitam dan tidak bisa dikatakan putih yang sebagaimana diilustrasikan oleh fuzzy logic. 
fuzzy logic terjadi didalam hal bernama fuzzy set. Dalam fuzzy set ini terdapat fungsi keanggotaan yang berfungsi untuk memetakan masalah dan hasil keputusan yang diambil guna menentukan kebenaran dari suatu masalah. Dalam tugas program ini saya menggunakan dua fungsi keanggotaan yaitu fungsi keanggotaan emosi dan fungsi keanggotaan provokasi. Fungsi keanggotaan ini saya buat dengan range dari 0 – 100.

## 2.	Rancangan Metode
Langkah – langkah:
1.	Inisiasi nilai Emosi dan Provokasi dengan mengambil nilai yang ada di dalam data sample pada file excel
2.	Lakukan fuzzification dengan mencari miu  dari fungsi keanggotaan Emosi dan Provokasi
3.	Lakukan inferensi menggunakan data fuzzification yang telah didapat
4.	Lakukan deffuzification untuk menentukan apakah hoax atau tidak hoax menggunakan data hasil inferensi
