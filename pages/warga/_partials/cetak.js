function exportToPDF() {
    // Definisi content PDF
    const content = [
      { text: 'Hello, this is an example PDF!', fontSize: 16, bold: true, margin: [0, 0, 0, 10] },
      { text: 'This PDF is generated using pdfmake library.', fontSize: 12 },
      { text: 'Thank you for trying this out!', fontSize: 12, margin: [0, 10, 0, 0] }
    ];

    // Definisi dokumen PDF
    const docDefinition = {
      content: content,
      styles: {
        header: { fontSize: 18, bold: true, margin: [0, 0, 0, 10] },
        subheader: { fontSize: 16, bold: true, margin: [0, 10, 0, 5] },
        body: { fontSize: 12, margin: [0, 5, 0, 15] }
      }
    };

    // Buat PDF
    const pdfDocGenerator = pdfMake.createPdf(docDefinition);

    // Unduh PDF
    pdfDocGenerator.download('example.pdf');
  }
  