module.exports = (sequelize,dataTypes) => {
    
    let alias = "comprasesion";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        price:{
            type: dataTypes.REAL(),
            allowNull:false
        },
        idCompador:{
            type: dataTypes.INTEGER(100),
            allowNull:false
        }
        
    }

    let config = {
        tableName: "comprasesion",
        timestamps:true,
        underscored:true

    }

    const comprasesion = sequelize.define(alias,cols,config);

    return comprasesion
}