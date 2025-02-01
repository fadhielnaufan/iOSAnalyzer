-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2025 pada 14.38
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `iduser` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`iduser`, `username`, `password`, `nama`) VALUES
('U001', 'admin', 'admin', 'admin'),
('12', 'edojahat123', 'edojahat123', 'edo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basispengetahuan`
--

CREATE TABLE `basispengetahuan` (
  `namakerusakan` varchar(100) NOT NULL,
  `gejala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `basispengetahuan`
--

INSERT INTO `basispengetahuan` (`namakerusakan`, `gejala`) VALUES
('Kerusakan', 'smarthphone pernah jatuh'),
('kamera tidak berfungsi', 'smarthphone pernah jatuh'),
('kamera tidak berfungsi', 'smarthphone pernah jatuh'),
('Android Lambat', 'Hp sakit'),
('kamera tertawa', 'Hp sakit'),
('kamera tertawa', 'Mual'),
('Kamera Rusak', 'Apakah Smartphone Pernah Jatuh ?'),
('Kamera Rusak', 'Apakah Smartphone Pernah Kemasukan Air ?'),
('Kamera Rusak', 'Apakah Handphone terserang virus ?'),
('Boot Restart', 'Apakah Handphone terserang virus ?'),
('Boot Restart', 'Apakah terdapat File Sampah yang menumpuk pada sis'),
('Boot Restart', 'Apakah kinerja CPU, Memori RAM dan GPU Overload  ?'),
('Boot Restart', 'Apakah anda menginstal aplikasi yang masih beta di'),
('Boot Restart', 'Apakah Smartphone Anda mengalami panas berlebih ?'),
('Tidak bisa Charger', 'Apakah Kabel usb rusak ?'),
('Tidak bisa Charger', 'Apakah Adapter charger rusak ?'),
('Tidak bisa Charger', 'Apakah port usb rusak ?'),
('Hardbrick', 'Apakah Smartphone Pernah Kemasukan Air ?'),
('Hardbrick', 'Apakah Anda memodifikasi Sistem ?'),
('Hardbrick', 'Apakah terjadi Kegagal saat install software ?'),
('Lcd Rusak', 'Apakah layar Android terdapat shadow ?'),
('Lcd Rusak', 'Apakah layar sentuh tidak Sensitif'),
('Battery Rusak', 'Apakah battery cepat habis ?'),
('Lcd Rusak', 'Apakah layar smartphone terdapat goresan ?'),
('Sim Card Rusak', 'Kuningan pada SIM CARD rusak'),
('Sim Card Rusak', 'Slot Card Rusak'),
('Sim Card Rusak', 'Smartphone Pernah Kemasukan Air'),
('Sistem Operasi Rusak ', 'Sinyal Hilang'),
('Sistem Operasi Rusak ', 'Saat melakukan panggilan, suara tidak ada'),
('Bootloop', 'Kinerja CPU, Memori RAM dan GPU Overload'),
('Bootloop', 'Pernah memodifikasi Sistem'),
('Bootloop', 'Melakukan Overlock Android'),
('Kerusakan LCD', 'LCD Blank   '),
('Kerusakan LCD', 'Layar Buram'),
('Kerusakan LCD', 'Layar Tidak Responsif'),
('Kerusakan Processor', 'Mati total'),
('Kerusakan Processor', 'Memori Bermasalah '),
('Simcard Rusak', 'Kuningan pada simcard rusak  '),
('Simcard Rusak', 'Slotcard rusak  '),
('Simcard Rusak', 'Smartphone pernah kemasukan air  '),
('IC charger rusak', 'Tidak bisa Charge  '),
('IC charger rusak', 'Status Charging error'),
('Power Supply Rusak', 'Mati total'),
('Power Supply Rusak', 'Tidak bisa Charge  '),
('Power Supply Rusak', 'Baterai over heat  '),
('Power Supply Rusak', 'Baterai Drop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `idgejala` varchar(10) NOT NULL,
  `gejala` varchar(1000) NOT NULL,
  `jenishp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`idgejala`, `gejala`, `jenishp`) VALUES
('C01', 'Sinyal Hilang', 'iOS'),
('C02', 'Saat melakukan panggilan, suara tidak ada', 'iOS'),
('C03', 'Kinerja CPU, Memori RAM dan GPU Overload', 'iOS'),
('C04', 'Pernah memodifikasi Sistem', 'iOS'),
('C05', 'Melakukan Overlock iOS', 'iOS'),
('C06', 'LCD Blank   ', 'iOS'),
('C07', 'Layar Buram', 'iOS'),
('C08', 'Layar Tidak Responsif', 'iOS'),
('C09', 'Mati total', 'iOS'),
('C10', 'Memori Bermasalah ', 'iOS'),
('C11', 'Kuningan pada simcard rusak  ', 'iOS'),
('C12', 'Slotcard rusak  ', 'iOS'),
('C13', 'Smartphone pernah kemasukan air  ', 'iOS'),
('C14', 'Tidak bisa Charge  ', 'iOS'),
('C15', 'Status Charging error', 'iOS'),
('C16', 'Baterai over heat  ', 'iOS'),
('C17', 'Baterai Drop', 'iOS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerusakan`
--

CREATE TABLE `kerusakan` (
  `idkerusakan` varchar(20) NOT NULL,
  `namakerusakan` varchar(1000) NOT NULL,
  `jenishp` varchar(20) NOT NULL,
  `caramengatasi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kerusakan`
--

INSERT INTO `kerusakan` (`idkerusakan`, `namakerusakan`, `jenishp`, `caramengatasi`) VALUES
('K1', 'Sistem Operasi Rusak ', 'iOS', '1. Restart Paksa\n2. Mode Pemulihan (Recovery Mode)\n3. Perbaiki via iTunes/Finder\n4. Gunakan DFU Mode (Jika Recovery Mode Gagal)\n5. Cek atau Install Ulang iOS'),
('K2', 'Bootloop', 'iOS', '1.Restore iOS Ulang\n2.Bila parah ganti EMMC\n\n'),
('K3', 'Kerusakan LCD', 'iOS', '1.Check kabel flexi\r\n2.ganti lcd\r\n\r\n'),
('K4', 'Kerusakan Processor', 'iOS', '1. Cek ic power\n2. Cek Memory\n3.Cek Processor\n4.Cek blok radio dan blok ui.\n'),
('K5', 'Simcard Rusak', 'iOS', '1.Reboot iPhone\n2.Pastikan SIM CARD terpasang dengan benar\n3.Gunakan Mode manual jaringan\n4.periksa Kondisi SIM CARD\n5.Ganti SIM CARD\n6.Lepas dan pasang kemnali SIM CARD\n7.Tes SIM CARD pada Smartphone lain\n8.Reset Jaringan\n9.Pindah SLOT SIM CARD\n10.Merestart Jaringan\n11.Update iOS\n12.Factory Reset\n\n'),
('K6', 'IC charger rusak', 'iOS', '1.	Cek Fuse dan IC (Control Carging)\n2.	Cek tegangan charger\n3.	Cek charger dan IC Charger\n'),
('K7', 'Power Supply Rusak', 'iOS', '1. Cek konektor baterai\n2.Cek Baterai\n3.Cek IC PA\n4.Cek konektor SIM\n5.Cek IC Power dan IC Charge\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `repair_history`
--

CREATE TABLE `repair_history` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `brand` varchar(255) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `symptoms` text NOT NULL,
  `diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `imei` varchar(255) NOT NULL,
  `jenishp` varchar(255) NOT NULL,
  `idkerusakan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `smartphones`
--

INSERT INTO `smartphones` (`id`, `brand`, `model`, `imei`, `jenishp`, `idkerusakan`) VALUES
(21, 'Nizam', 'Samsung', '9172907190274014019274', 'iOS', 'K1'),
(22, 'Nizam', 'iPhone 11', '3308982018271237', 'iOS', 'K3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`idgejala`);

--
-- Indeks untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`idkerusakan`);

--
-- Indeks untuk tabel `repair_history`
--
ALTER TABLE `repair_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idkerusakan` (`idkerusakan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `repair_history`
--
ALTER TABLE `repair_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `smartphones`
--
ALTER TABLE `smartphones`
  ADD CONSTRAINT `fk_idkerusakan` FOREIGN KEY (`idkerusakan`) REFERENCES `kerusakan` (`idkerusakan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
