module.exports = (sequelize,dataTypes) => {
    
    let alias = "posteos";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
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
        contenido:{
            type: dataTypes.STRING(1000),
            alowNull:false
        },
        fechacreation:{
            type: dataTypes.DATE(),
            allowNull:true
        },
        idtags: {
            type: dataTypes.INTEGER,
            allowNull:false
        },
        idsigno: {
            type: dataTypes.INTEGER,
            allowNull :false
        },
        idcoment: {
            type: dataTypes.INTEGER,
            allowNull: false
        }
        
    }

    let config = {
        tableName: "posteos",
        timestamps:true,
        underscored:true

    }

    const posteos = sequelize.define(alias,cols,config);

    return posteos
}