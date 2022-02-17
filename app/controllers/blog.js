const mysql = require('mysql')
const connection = mysql.createConnection({
    host: '', //Add Host
    user: '', //Add username
    password: '', // Add password
    database: '' // Add database name
})

connection.connect()

exports.getAllBlog = function (req, res) {
    var category = req.query.category;
    var orderby = req.query.orderby;
    var author = req.query.author;

    var base_query = 'select * from blog'
    if (category || orderby || author)  {
        if (category) {
            var categoryarray = category.split(",")
            var result = categoryarray.map(d => `category = '${d}' `).join('or ');
            base_query = base_query + ' where ' + result
        }
        if (author) {
            var authorarray = author.split(",")
            var result = authorarray.map(d => `author = '${d}' `).join('or ');
            if(category){
                base_query = base_query + ' and ' + result
            }else{
                base_query = base_query + ' where ' + result
            }
            
        }
        if (orderby) {
            orderby = orderby == 'newest' ? 'DESC' : 'ASC'
            base_query = base_query + ' ORDER BY timestamp ' + orderby;
        }
        
    }
    connection.query(base_query, (err, rows, fields) => {
        if (err) {
            res.sendStatus(404);
            return;
        }
        res.status(200)
        .json({ rows });
    })
}