module.exports = (sequelize,dataTypes) => {
    
    let alias = "tiposigno";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        signo:{
            type: dataTypes.STRING(20),
            allowNull:false,
            unique:true
        }
        
    }

    let config = {
        tableName: "tiposigno",
        timestamps:true,
        underscored:true

    }

    const tipoSigno = sequelize.define(alias,cols,config);

    tipoSigno.associate = function(models){
    tipoSigno.hasMany(models.users,{
        as:"user", //nombre de fantasia de la relación de las tablas
        foreignKey:"idsigno"
    })

    }

    return tipoSigno
}