function [hitung_hari] = hitung_hari_123220198(tanggal_awal, bulan_awal, tahun_awal, tanggal_akhir, bulan_akhir, tahun_akhir)
   
    tanggal_awal = datetime(tahun_awal, bulan_awal, tanggal_awal);
    tanggal_akhir = datetime(tahun_akhir, bulan_akhir, tanggal_akhir);
   
    hitung_hari = days(tanggal_akhir - tanggal_awal);
end
