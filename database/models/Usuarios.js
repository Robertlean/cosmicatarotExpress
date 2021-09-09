module.exports = (sequelize, dataTypes) => {

    let alias = "users";
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        nameuser: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        },
        mail: {
            type: dataTypes.STRING,
            allowNull: false,
            unique: true
        },
        password: {
            type: dataTypes.STRING,
            allowNull: false
        },
        fechanac: {
            type: dataTypes.DATEONLY,
            allowNull: false
        },
        avatar: {
            type: dataTypes.STRING,
            allowNull: true
        },
        rol: {
            type: dataTypes.STRING,
            allowNull: true
        },
        description: {
            type: dataTypes.STRING,
            allowNull: true
        },
        idsigno: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        idtiposigno: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        nation: {
            type: dataTypes.STRING,
            allowNull: true
        }

    }

    let config = {
        tableName: "users",
        timestamps: false,
        underscored: true

    }

    const users = sequelize.define(alias, cols, config);

    users.associate = function (models) {
        users.belongsTo(models.tiposigno, {
            as: "tiposigno", //nombre de fantasia de la relación de las tablas
            foreignKey: "idtiposigno",
            where: "signo",

        })
        users.belongsTo(models.horoscopo, {
            as: "horoscopo",
            foreignKey: "idsigno",
            where: "nombre"
        })
        users.hasMany(models.posteohoroscopo,{
            as: "horoscopoperfil",
            foreignKey: "id",
            where: "signopost"
        })

    }
    return users;
}