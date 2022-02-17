let userController = require('../controllers/user')
module.exports = function(app){
    app.route('/api/user').post(userController.adduser);
    app.route('/api/user/').put(userController.updateuser);
    // app.route('/:category').get(blogController.getAllBlog);
}