# Sistem Pakar Identifikasi Hama Tanaman
Proyek ini adalah sistem pakar berbasis aturan logika yang membantu petani dalam mengidentifikasi jenis hama tanaman berdasarkan gejala yang diamati.
Implementasi disediakan dalam dua bahasa: Prolog dan Python.

## Gejala yang Dideteksi
G1: Daun menguning

G2: Terdapat bercak hitam

G3: Daun berlubang

G4: Tanaman layu

## Jenis Hama
H1: Hama Wereng

H2: Hama Jamur

H3: Hama Ulat

H4: Hama Aka

## Aturan Identifikasi
1. Jika daun menguning dan tanaman layu, maka hama adalah Wereng.
2. Jika terdapat bercak hitam, maka hama adalah Jamur.
3. Jika daun berlubang, maka hama adalah Ulat.
4. Jika tanaman layu dan tidak ada bercak hitam, maka hama adalah Akar.

## Alur Inferensi
1. Petani mengisi jawaban terhadap pertanyaan tentang gejala.
2. Sistem mengevaluasi gejala berdasarkan aturan:
   - Periksa kombinasi gejala yang cocok.
   - Tentukan hama berdasarkan kecocokan aturan.
3. Jika tidak ada aturan yang cocok, sistem menyatakan "Hama tidak diketahui".

## Implementasi
### 1. Python
File: soal_1.py

Cara menjalankan:
```
python soal_1.py
```
Alur program:
- Input manual dari pengguna (1 = ya, 0 = tidak).
- Evaluasi gejala berdasarkan aturan logika.
- Output jenis hama yang terdeteksi.

### 2. Prolog
File: soal_1.pl

Cara menjalankan:
```
swipl
?- [identifikasi_hama].
?- identifikasi_hama.
```

Alur program:
- Sistem menanyakan gejala satu per satu.
- Berdasarkan fakta gejala, sistem mengidentifikasi hama.
- Menampilkan hasil ke pengguna.

