const blogRoutes = require("./blog");
const userRoutes = require("./user");

module.exports = function(app){
    blogRoutes(app)
    userRoutes(app)
}