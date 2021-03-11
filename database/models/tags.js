module.exports = (sequelize,dataTypes) => {
    
    let alias = "tags";
    let cols = {
        idtags:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nombre:{
            type: dataTypes.STRING(100),
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