module.exports = (sequelize,dataTypes) => {
    
    let alias = "tiposigno";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
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
    return tipoSigno
}