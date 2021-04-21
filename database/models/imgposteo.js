module.exports = (sequelize,dataTypes) => {
    
    let alias = "sessionposteo";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nombreimg:{
            type: dataTypes.STRING,
            allowNull:false,
            unique:true
        },
        conttext:{
            type: dataTypes.INTEGER,
            allowNull:false,
        }
        
    }

    let config = {
        tableName: "sessionposteo",
        timestamps:true,
        underscored:true

    }

    const imgposteo = sequelize.define(alias,cols,config);

    return imgposteo
}