% Predikat untuk input gejala dari pengguna
tanya_gejala(Gejala) :-
    write('Apakah '), write(Gejala), write('? (1 = ya, 0 = tidak): '),
    read(Input),
    (Input = 1 -> assert(gejala(Gejala)); true).

% Fakta dan aturan Hama
hama(wereng) :-
    gejala(daun_menguning),
    gejala(tanaman_layu).

hama(jamur) :-
    gejala(bercak_hitam).

hama(ulat) :-
    gejala(daun_berlubang).

hama(akar) :-
    gejala(tanaman_layu),
    \+ gejala(bercak_hitam).

% Predikat untuk memulai identifikasi hama
identifikasi_hama :-
    % Meminta input gejala dari pengguna
    tanya_gejala(daun_menguning),
    tanya_gejala(bercak_hitam),
    tanya_gejala(daun_berlubang),
    tanya_gejala(tanaman_layu),

    % Menemukan hama berdasarkan gejala yang diberikan
    findall(Hama, hama(Hama), Hasil),
    (Hasil \= [] ->
        tampilkan_hama(Hasil)
    ;
        writeln('Hama tidak diketahui.')
    ).

% Predikat bantu untuk menampilkan hasil
tampilkan_hama([]).
tampilkan_hama([H|T]) :-
    write('Jenis Hama: '), writeln(H),
    tampilkan_hama(T).
