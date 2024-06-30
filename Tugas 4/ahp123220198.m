function [Max_Motor_Score] = ahp123220198()

    disp('Matriks Perbandingan Berpasangan Pada Kriteria');
    %       G     A    E    H
    MPBk = [ 1/1  1/2  3/1  1/5 ; %(G-Gaya)
            2/1  1/1  4/1  1/3; %(A-Keandalan)
            1/3  1/4  1/1  1/4; %(E-Keekonomisan)
            5/1  3/1  4/1  1/1]; %(H-Harga)

    % normalisasi
    w_MPB = calc_norm(MPBk);

    % hitung eigenvector
    [m n] = size(w_MPB);
        for i=1 : m,
            sumRow = 0;
            for j=1 : n,
                sumRow = sumRow + w_MPB(i,j);
            end;
        V(i)=(sumRow);
        end

        disp('Eigenvector')
        w_MPB = transpose(V)/m;


    %% Membandingkan Gaya:
    disp('Perbandingan Gaya: Alternatif Kualitatif Berpasangan');
    %       Y     H    S    K
    AKB_G = [1/1  1/2  2/1  1/3; %(Y-Yamaha)
            2/1  1/1  3/1  1/2; %(H-Honda)
            1/2  1/3  1/1  1/4; %(S-Suzuki)
            3/1  2/1  4/1  1/1]; %(K-Kawasaki)

    % normalisasi
    w_G = calc_norm(AKB_G)

    % hitung eigenvector
    [m n] = size(w_G);
        for i=1 : m,
            sumRow = 0;
            for j=1 : n,
                sumRow = sumRow + w_G(i,j);
            end;
        V(i)=(sumRow);
        end;

        disp('Eigenvector')
        w_G = transpose(V)/m;


    %% Membandingkan Keandalan:
    disp('Perbandingan Keandalan: Alternatif Kualitatif Berpasangan');
    %       Y     H    S    K
    AKB_A = [1/1  1/2  3/1  2/1; %(Y-Yamaha)
            2/1  1/1  4/1  3/1; %(H-Honda)
            1/3  1/4  1/1  1/2; %(S-Suzuki)
            1/2  1/3  2/1  1/1] %(K-Kawasaki)

    % normalisasi
    w_A = calc_norm(AKB_A)

    % hitung eigenvector
    [m n] = size(w_A);
        for i=1 : m,
            sumRow = 0;
            for j=1 : n,
                sumRow = sumRow + w_A(i,j);
            end;
        V(i)=(sumRow);
        end;

        disp('Eigenvector')
        w_A = transpose(V)/m;


    %% Membandingkan Keekonomisan Bahan Bakar:
    disp('Perbandingan Keekonomisan: Alternatif Kualitatif Berpasangan');
        yamaha = 60;
        honda = 80;
        suzuki = 60;
        kawasaki = 80;

        ACM_Fe = [ yamaha; 
                honda; 
                suzuki; 
                kawasaki ]
        w_E = calc_norm(ACM_Fe) % menghitung eigenvector pada matriks kuantitatif

    %% Membandingkan Harga:
    disp('Perbandingan Harga: Alternatif Kualitatif Berpasangan');
        ym = 16; %yamaha
        hn = 20; %honda
        sz = 15; %suzuki
        kw = 40; %kawasaki

        ACM_He = [ ym; hn; sz; kw ]
        w_H = calc_norm(ACM_He) % menghitung eigenvector pada matriks kuantitatif


    %% Hitung Jawaban Akhir dan tentukan motor terbaik
    % Eigenvectors: Gaya   Keandalan    Keekonomisan   Harga
            wM  =  [ w_G     w_A      w_E     w_H];

    % Kalikan matriks vektor eigen dengan vektor eigen kriteria untuk mendapat
    % skor setiap motor
    disp('Nilai Akhir untuk: Yamaha, Honda, Suzuki, Kawasaki');
     MC_Scores = wM * w_MPB;
     disp(MC_Scores);

    % Motor Terbaik
    disp('Nilai Motor Terbaik terpilih berdasarkan Manfaat (Kriteria)');
    Max_MC_benefits = max(MC_Scores);
    
    % Mengembalikan nilai Max_MC_benefits
    Max_Motor_Score = Max_MC_benefits;


end

function [normvect] = calc_norm(M)
    sM = sum(M);
    normvect = M./sM;
    disp('Normalisasi Matriks');
end

