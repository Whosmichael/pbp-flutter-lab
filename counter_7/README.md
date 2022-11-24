# Tugas 8

 ## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
 Navigator.push : untuk menambahkan route baru ke stack navigasi
 
 Navigator.pushReplacement :  untuk mengganti route yang ada di stack navigasi dengan route baru
 
 ## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 Drawer, berfungsi seperti navbar namun terletak di sisi samping
 
 Row & Column, untuk  membuat tata letak yang fleksibel baik dalam arah horizontal (menyamping kanan atau kiri) untuk row dan vertikal (atas atau bawah) untuk column.  Desain objek ini didasarkan pada model tata letak flexbox web.
 
Text untuk mendisplay teks dengan berbagai style sesuai kebutuhan

Scaffold untuk memberikan tema material yang menjadi dasar dari tampilan interface. 

Materialpageroute, untuk me-render dan me-refresh page

Expanded, widget yang dapat mengambil ruang yang ada

AppBar, untuk bar yang ada di atas layar

Padding, Widget untuk memberi spasi di sekitar child widget4

Spacer, untuk memberikan ruang antara children

Form, widget untuk membuat form

Container, Widget yang berperan untuk menyimpan widget lainnya
 
 ## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
 onTap: event yang terjadi ketika dilakukan tap pada widget
 
 onPressed: event yang terjadi ketika menekan widget
 
 onChanged: event yang terjadi ketika mengubah widget
 
 onSaved: event yang terjadi ketika menyimpan widget
 
 ## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

 Navigator akan mengatur route dalam stack yang menyimpan pages yang diikuti dengan transisi. Penerapan ini dapat dikatakan serupa dengan stack push dan stack pop
 
 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat drawer pada file terpisah
- Mengimplementasikan routing pada drawer
- Membuat form_budget
- Membuat budget model
- Membuat list pada form_budget 
- Membuat budget list sebagai tempat dari budget yang diinput
- Menggunakan itembuilder untuk me-render semua item pada list budget


# Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Sebenarnya bisa saja, namun tidak direkomendasikan. Dengan menggunakan model, kita akan mendapatkan data yang lebih terstruktur sehingga akan lebih mudah diakses dan kita dapat menentukan tipe datanya dengan lebih mudah.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Expanded : Membuat space kosong antar elemen
ListView : Agar dapat menampilkan children widget yang ada di dalam sebuah list (dalam hal ini menampilkan data movie)
EdgeInsets : untuk set outer atau inner padding yang disesuaikan dengan kebutuhan
CheckBox : Membuat form boolean dengan checkbox untuk mengubah status watched

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Membuat model dari json dengan menggunakan quicktype. Link json yang ada diletakkan pada method ```fetchMywatchlist()```  untuk fetching data dan dapat diconvert sesuai bentuk yang dibutuhkan.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas

Pada Drawer menambah button untuk navigasi ke halaman mywatchlist
Membuat model MyWatchList dari QuickType agar mudah, kemudian membuat file .dart nya di dalam folder model
Membuat file mywatchlist.dart untuk menampilkan data-data tersebut nantinya
Fetching data JSON dari link json heroku, kemudian mengconvert ke bentuk objek MyWatchList
Menampilkan data-data yg didapat dengan menggunakan ListView
Membuat file watchlistDetail untuk menampilkan page yg berisi detail dari film dan button untuk kembali ke halaman watchlist
Untuk detail menambahkan event onTap, jika card movie diklik maka akan routing ke halaman yang berisi detail dari movie tersebut
Untuk bonus menambahkan checkbox yang dapat mengubah status watched
