module.exports = (sequelize,dataTypes) => {
    
    let alias = "tags";
    let cols = {
        idTags:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nombre:{
            type: dataTypes.INTEGER(),
            allowNull:false,
            unique:true
        }
        
    }

    let config = {
        tableName: "tags",
        timestamps:true,
        underscored:true

    }

    const tags = sequelize.define(alias,cols,config);

    return tags
}