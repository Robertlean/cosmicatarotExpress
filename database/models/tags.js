module.exports = (sequelize,dataTypes) => {
    
    let alias = "tags";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nombre:{
            type: dataTypes.STRING,
            allowNull:false,
            unique:true
        },
        idpost:{
            type: dataTypes.INTEGER,
            allowNull: true,
        }
        
    }

    let config = {
        tableName: "tags",
        timestamps:false,
        underscored:true

    }

    const tags = sequelize.define(alias,cols,config);

    tags.associate = function (models) {
        tags.hasMany(models.posteos, {
            as: "posteos", //nombre de fantasia de la relación de las tablas
            foreignKey: "id",
            where: "posteos",

        })
        

    }

    return tags
}