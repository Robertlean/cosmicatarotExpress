module.exports = (sequelize,dataTypes) => {
    
    let alias = "comprasesion";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        price:{
            type: dataTypes.REAL(),
            allowNull:false
        },
        idCompador:{
            type: dataTypes.INTEGER,
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