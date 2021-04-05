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
            type: dataTypes.STRING,
            allowNull:false,
            unique:true
        }
        
    }

    let config = {
        tableName: "tiposigno",
        timestamps:false,
        underscored:true

    }

    const tipoSigno = sequelize.define(alias,cols,config);

    tipoSigno.associate = function(models){
    tipoSigno.hasMany(models.users,{
        as:"users", //nombre de fantasia de la relación de las tablas
        foreignKey:"idtiposigno",
        where: "signo"
    })

    }

    return tipoSigno
}