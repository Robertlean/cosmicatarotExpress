module.exports = (sequelize,dataTypes) => {
    
    let alias = "horoscopo";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nombre:{
            type: dataTypes.STRING(20),
            allowNull:false,
            unique:true
        },
        idtipo:{
            type: dataTypes.INTEGER.UNSIGNED,
            allowNull:false
        },
        startfecha:{
            type: dataTypes.DATEONLY(),
            allowNull:false
        },
        endfecha:{
            type: dataTypes.DATEONLY(),
            allowNull:true
        }
        
    }

    let config = {
        tableName: "horoscopo",
        timestamps:true,
        underscored:true

    }

    const Horoscopo = sequelize.define(alias,cols,config);

    return Horoscopo
}