const Sequelize = require('sequelize');

const databaseName = process.env.DB_NAME;
const user = process.env.DB_USER;
const password = process.env.DB_PASSWORD;
const host = process.env.DB_HOST;
console.log('user=' + user);
console.log('password=' + password);
const sequelize = new Sequelize(databaseName, user, password, {
    host: host,
    dialect: 'postgres'
});

exports.Sequelize = sequelize;