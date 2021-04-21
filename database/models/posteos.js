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
            type: dataTypes.STRING,
            allowNull:false,
            unique:true
        },
        subtitle:{
            type: dataTypes.STRING,
            allowNull:false
        },
        img:{
            type: dataTypes.STRING,
            allowNull:true
        },
        contenido:{
            type: dataTypes.STRING,
            alowNull:true
        },
        fechcreation:{
            type: dataTypes.DATE(),
            allowNull:true
        },
        idtags: {
            type: dataTypes.INTEGER,
            allowNull:true
        },
        idsigno: {
            type: dataTypes.INTEGER,
            allowNull :false
        },
        idcoments: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        idtiposigno: {
            type: dataTypes.INTEGER,
            allowNull: true
        }
        
    }

    let config = {
        tableName: "posteos",
        timestamps:false,
        underscored:true

    }

    const posteos = sequelize.define(alias,cols,config);

    posteos.associate = function (models) {
        posteos.hasMany(models.tags, {
            as: "tags", //nombre de fantasia de la relación de las tablas
            foreignKey: "id",
            where: "tags",

        })
        

    }

    return posteos
}