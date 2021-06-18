module.exports = (sequelize,dataTypes) => {
    
    let alias = "horoscopo";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nombre:{
            type: dataTypes.STRING(20),
            allowNull:false,
            unique:true
        },
        idtipo:{
            type: dataTypes.INTEGER,
            allowNull:false
        },
        startfecha:{
            type: dataTypes.DATEONLY(),
            allowNull:false
        },
        endfecha:{
            type: dataTypes.DATEONLY(),
            allowNull:true
        },
        img:{
            type: dataTypes.STRING(1000),
            allowNull: true
        }
        
    }

    let config = {
        tableName: "horoscopo",
        timestamps:false,
        underscored:true

    }

    const Horoscopo = sequelize.define(alias,cols,config);
    Horoscopo.associate = function (models) {
        Horoscopo.hasMany(models.users, {
            as: "users", //nombre de fantasia de la relación de las tablas
            foreignKey: "id",
            where: "signo",

        })
        Horoscopo.hasMany(models.posteohoroscopo,{
            as: "horoscopoposteo",
            foreignKey: "idsigno",
            where: "signo"
        })
    }
    
    return Horoscopo
}