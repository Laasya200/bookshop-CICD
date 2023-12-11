const cds = require("@sap/cds");
module.exports = cds.service.impl(async function () {
    const { Books } = this.entities
    this.after('READ', Books, (data) => {
        const books = Array.isArray(data) ? data : [data];
        

        books.forEach((book) => {
            if (book.stock == 0) {
                book.criticality = 1;
            } else if (book.stock <= 15) {
                book.criticality = 2;
            }
            else {
                book.criticality = 3;
            }
        
        })

    })
})