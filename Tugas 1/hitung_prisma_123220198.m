function [volume, luas_permukaan] = hitung_prisma_123220198(alas_segitiga, tinggi_segitiga, tinggi_prisma)
    % Menghitung luas alas segitiga
    luas_alas = 0.5 * alas_segitiga * tinggi_segitiga;
    
    % Menghitung Keliling Alas
    kel_alas = 3 * alas_segitiga;
    
    % Menghitung volume
    volume = luas_alas * tinggi_prisma;
    
    % Menghitung luas permukaan
    luas_permukaan = 2 * luas_alas + kel_alas * tinggi_prisma;
    
    
    % Ketika menjalankan fungsi masukan [volume, luas_permukaan] agar urut
end
    
    