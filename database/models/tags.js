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
            type: dataTypes.STRING,
            allowNull:false,
            unique:true
        },
        idpost:{
            type: dataTypes.INTEGER,
            allowNull: true,
        }
        
    }

    let config = {
        tableName: "tags",
        timestamps:false,
        underscored:true

    }

    const tags = sequelize.define(alias,cols,config);

    return tags
}