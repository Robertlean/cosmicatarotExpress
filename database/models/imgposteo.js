module.exports = (sequelize,dataTypes) => {
    
    let alias = "imgposteo";
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
            allowNull:false,
        }
        
    }

    let config = {
        tableName: "imgposteo",
        timestamps:true,
        underscored:true

    }

    const imgposteo = sequelize.define(alias,cols,config);

    return imgposteo
}