let blogController = require('../controllers/blog')
module.exports = function(app){
    app.route('/api/blog').get(blogController.getAllBlog);
    // app.route('/:category').get(blogController.getAllBlog);
}