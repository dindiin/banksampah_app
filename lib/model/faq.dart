class Question {
  String tanya;
  String jawab;

  Question({
    this.tanya,
    this.jawab,
  });
}

List<Question> questions = [
  Question(
    tanya: 'Apa itu Bank Sampah?',
    jawab:
        'Bank sampah adalah suatu sistem pengelolaan sampah kering secara kolektif yang mendorong masyarakat untuk berperan serta aktif di dalamnya. Sistem ini akan menampung, memilah, dan menyalurkan sampah bernilai ekonomi pada pasar sehingga masyarakat mendapat keuntungan ekonomi dari menabung sampah.',
  ),
  Question(
    tanya: 'Bagaimana cara mendirikan Bank Sampah?',
    jawab:
        'Persiapan pendirian bank sampah yang pertama adalah pembentukan pengurus. Kemudian pengurus bersama calon nasabah berdiskusi tentang lokasi bank, pengepul yang ditunjuk, klasifikasi sampah, berat minimum sampah yang disetor. Pengelola bank sampah menentukan penetapan target omset bank sampah bulan pertama dan proyeksi untuk pencapaian bulan berikutnya.',
  ),
  Question(
    tanya: 'Bagaimana cara menabung di Bank Sampah?',
    jawab:
        'Nasabah datang ke bank dengan membawa buku tabungan dan sampah yang sudah dipilah. Sampah yang disetor kemudian ditimbang dan dinilai sesuai harga yang telah disepakati sebelumnya. Petugas bank akan mencatat jenis sampah, berat sampah dan nilai uang yang ditabung.',
  ),
  Question(
    tanya: 'Bagaimana cara memilah Sampah?',
    jawab:
        'Pada dasarnya, sampah dipilah menjadi dua : organik dan non-organik. Sampah daun dipisahkan dari plastik, kardus dan kertas. Tapi, beberapa bank sampah juga mengharuskan sampah non organik dipilah lagi. Sampah plastik dipisahkan dari kardus dan kertas.',
  ),
  Question(
    tanya: 'Apa yang akan dilakukan pada sampah yang telah dikumpulkan?',
    jawab:
        'Sampah akan dijual ke pengepul yang dipilih berdasarkan kesepakatan bersama. Selain itu, warga juga bisa melakukan daur ulang sampah menjadi berbagai produk yang bernilai ekonomi.',
  ),
];
