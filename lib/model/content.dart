class Content {
  String imageAsset;
  String subJudul;
  String desc;

  Content({
    this.imageAsset,
    this.subJudul,
    this.desc,
  });
}

List<Content> contentList = [
  Content(
    imageAsset: 'images/Glass.png',
    subJudul: 'Gelas / Kaca',
    desc:
        'Diantaranya adalah botol kaca, gelas, kaca, toples, dll. Sampah kaca dapat dihancurkan dan dilebur sebagai bahan baku produk baru.',
  ),
  Content(
    imageAsset: 'images/Metal.png',
    subJudul: 'Kaleng / Metal',
    desc:
        'Diantaranya adalah minuman kaleng, makanan kaleng, dll. Sampah besi dapat dilelehkan menjadi bahan dasar produk baru.',
  ),
  Content(
    imageAsset: 'images/Paper.png',
    subJudul: 'Kertas',
    desc:
        'Diantaranya adalah koran, majalah, karton, kardus, dll. Sampah kertas dapat dihancurkan dan dibuat bubur kertas sebagai bahan dasar produk baru.',
  ),
  Content(
    imageAsset: 'images/Plastic.png',
    subJudul: 'Plastik',
    desc:
        'Diantaranya adalah botol plastik, kemasan plastik, dll. Sampah plastik dapat dilelehkan menjadi bijih plastik sebagai bahan dasar produk baru.',
  ),
];
