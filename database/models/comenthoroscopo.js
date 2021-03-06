module.exports = (sequelize,dataTypes) => {
    
    let alias = "comenthoroscopo";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
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
            type: dataTypes.STRING(100),
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

    const comentHoroscopo = sequelize.define(alias,cols,config);
}