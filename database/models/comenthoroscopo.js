module.exports = (sequelize,dataTypes) => {
    
    let alias = "comenthoroscopo";
    let cols = {
        id:{
            type:dataTypes.INTEGER(),
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        iduser:{
            type: dataTypes.INTEGER(),
            allowNull:false,
            unique:true
        },
        idsigno:{
            type: dataTypes.INTEGER(),
            allowNull:false
        },
        text:{
            type: dataTypes.STRING(200),
            allowNull:false
        },
        fechacreation:{
            type: dataTypes.DATE(),
            allowNull:true
        },
        idtiposigno:{
            type: dataTypes.INTEGER(),
            allowNull:false
        },
        
    }

    let config = {
        tableName: "comenthoroscopo",
        timestamps:true,
        underscored:true

    }

    const comenthoroscopo = sequelize.define(alias,cols,config)

    return comenthoroscopo
}