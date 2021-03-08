module.exports = (sequelize,dataTypes) => {
    
    let alias = "posteohoroscopo";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        idsigno:{
            type: dataTypes.INTEGER(),
            allowNull:false
        },
        text:{
            type: dataTypes.STRING(2000),
            allowNull:false
        },
        meshoroscopo:{
            type: dataTypes.DATE(),
            allowNull:true
        },
        idtiposigno:{
            type: dataTypes.INTEGER(),
            allowNull:false
        },
        idcoments:{
            type: dataTypes.INTEGER(),
            allowNull:true
        }
        
    }

    let config = {
        tableName: "posteohoroscopo",
        timestamps:true,
        underscored:true

    }

    const posteoHoroscopo = sequelize.define(alias,cols,config);
}