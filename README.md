# counter_7

## Pertanyaan

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget adalah suatu widget yang tidak memiliki state dan tidak berubah-ubah. Sedangkan stateful widget adalah widget yang memiliki state, sehingga ia dapat berubah-ubah.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Center berfungsi untuk membuat widget ditampilkan di tengah.
Column berfungsi untuk menampung widget lalu ditampilkan secara vertikal.
Text berfungsi untuk menampilkan teks. 
Row berfungsi untuk menampung widget lalu ditampilkan secara horizontal. 
Icon berfungsi untuk menampilkan icon. 
FloatingActionButton berfungsi untuk menampilkan suatu button diatas konten


### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState berfungsi untuk mengubah state pada suatu stateful widget. Pada tugas ini variabel yang terdampak adalah variabel _counter.

### Jelaskan perbedaan antara const dengan final.

Const dan final memiliki prinsip yang hampir sama. Hal yang membedakan keduanya adalah const harus sudah diketahui variabelnya pada compile time, sedangkan final harus sudah diketahui variabelnya pada saat run time.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat app baru dengan perintah `flutter create counter_7`
2. Membuat button decrement untuk mengurangi counter yang dapat disembunyikan ketika nilai counter = 0
3. Mengganti warna teks tergantung dengan nilainya
