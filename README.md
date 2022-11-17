# counter_7

## Pertanyaan Tugas 7

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

## Pertanyaan Tugas 8

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement

Navigator push hanya menimpa halaman yang sekarang dengan halaman baru, sedangkan pushReplacement akan menggantikan halaman sekarang dengan halaman yang baru.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya

1. DropdownButton, button yang menampilkan suatu dropdown
2. IconButton, button yang memiliki icon
3. Card, menampilkan card
4. ListTile, menampilkan listtile
5. Spacer, menambahkan space
6. Align, mengatur alignment dari suatu widget


### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

1. onPressed, event yang terjadi ketika user menekan suatu widget
2. onTap, event yang terjadi ketika user mengeklik suatu widget
3. onChanged, event yang terjadi ketika terdapat perubahan

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator mengimplementasikan suatu stack, ketika suatu tampilan baru di push, maka tampilan baru tersebut akan menjadi top of stack. Top of stack ini akan menjadi yang pertama hilang ketika fungsi Navigator.pop dipanggil

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat Drawer dengan routing ke counter_7, form, show_budget
2. Membuat model Budget
3. Membuat form untuk mendapatkan judul, nominal, jenis, dan tanggal dari user.
4. Memasukkan data yang telah didapatkan dari form ke dalam list yang berisi Budget
5. Membuat page untuk menampilkan data yang telah disimpan di dalam list Budget
