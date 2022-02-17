const mysql = require('mysql')
const connection = mysql.createConnection({
    host: '', //Add Host
    user: '', //Add username
    password: '', // Add password
    database: '' // Add database name
})

connection.connect()

exports.adduser = function (request, res) {
    const comment = request.body;
    if (comment.phone) {
        allkeys = Object.keys(comment)
        allvalues = Object.values(comment)
        var allvalues = allvalues.map(d => `'${d}'`).join();
        connection.query('INSERT into user (' + allkeys + ') Values (' + allvalues + ')', (err, respon) => {
            if (err) {
                return res.status(404).send({message: err.message});
            }else{
                return res.status(201).send({message: 'Successfully Created'});
            }
        })
    }else{
        res.sendStatus( 400 ).send({ status: 'Not Found' });
    }
}

exports.updateuser = function (request, res) {
    const comment = request.body;
    if(comment.phone){
        allkeys = Object.keys(comment)
        allvalues = Object.values(comment)
        base_query = "update user set"
        Object.keys(comment).forEach(key => {
            base_query = base_query + ` ${key}` + ' = ' + `'${comment[key]}', `
        });
        base_query = base_query.slice(0, -2)
        base_query = base_query + ' where phone = ' + comment.phone
        connection.query(base_query, (err, respon) => {
            if (err) {
                return res.status(404).send({message: err.message});
            }
            else{
                return res.status(201).send({message: 'Successfully Updated'});
            }
        })
    }else{
        res.sendStatus( 400 ).send({ status: 'Not Found' });
    }
}
// POST request format
// {
//     "username": "name",
//     "email": "email@email.email",
//     "password": "123",
//     "phone": "1234232423",
//     "gender": "m",
//     "language": "e",
//     "marital": "un",
//     "dob": "2000-00-00",
//     "dobtime": "23:32:32"
// }



// Put request format Update
// {
//     "username": "name",
//     "email": "email@email.email",
//     "password": "123",
//     "phone": "1234232423", // Phone is mandatory
//     "gender": "m",
//     "language": "e",
//     "marital": "un",
//     "dob": "2000-00-00",
//     "dobtime": "23:32:32"
// }