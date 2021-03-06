module.exports = (sequelize,dataTypes) => {
    
    let alias = "comentspost";
    let cols = {
        idComent:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        fechaComent:{
            type: dataTypes.DATE(),
            allowNull:false
        },
        textXoment:{
            type: dataTypes.STRING(200),
            allowNull:false
        },
        iduser:{
            type: dataTypes.INTEGER(),
            allowNull:false
        },
        fechacoment:{
            type: dataTypes.DATE(),
            allowNull:true
        },
        idsigno:{
            type: dataTypes.INTEGER(),
            allowNull:false
        },
        
    }

    let config = {
        tableName: "comentspost",
        timestamps:true,
        underscored:true

    }

    const comentPost = sequelize.define(alias,cols,config);
}