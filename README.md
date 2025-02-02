# Filter Main Domains
Filter Main Domains adalah script Bash sederhana untuk memfilter domain utama dari daftar URL atau teks acak. Script ini secara otomatis menghapus subdomain, duplikat, dan teks yang tidak relevan, sehingga hanya menyisakan domain utama yang bersih.

## 🔧 Fitur
- **Ekstraksi Domain Utama:** Mengambil hanya domain utama tanpa subdomain.
- **Hapus Duplikat:** Menghilangkan domain yang berulang.
- **Filter Otomatis:** Menghapus teks acak di luar format domain.

## 🚀 Cara Penggunaan
1. Simpan daftar URL atau teks dalam sebuah file, misalnya `domains.txt`.
2. Jalankan script:
```
chmod +x filter_main_domains.sh
./filter_main_domains.sh domains.txt
```
3. Hasil domain utama akan tersimpan di `result.txt`.

**📋 Contoh Input**
```
https://sub.example.com
http://www.testsite.org
randomtext123
another.subdomain.site.net
```
**Hasil Output (`result.txt`)**
```
example.com
testsite.org
site.net
```
## ⚠️ Catatan
- Pastikan input berisi URL atau domain dalam format yang benar.
- Script ini berjalan optimal pada sistem berbasis Unix/Linux.
