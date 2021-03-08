module.exports = (sequelize,dataTypes) => {
    
    let alias = "posteos";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        title:{
            type: dataTypes.STRING(100),
            allowNull:false,
            unique:true
        },
        subtitle:{
            type: dataTypes.STRING(200),
            allowNull:false
        },
        img:{
            type: dataTypes.STRING(300),
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
        idtags: {
            type: dataTypes.INTEGER(),
            allowNull:false
        }
        
    }

    let config = {
        tableName: "posteos",
        timestamps:true,
        underscored:true

    }

    const posteos = sequelize.define(alias,cols,config);
}