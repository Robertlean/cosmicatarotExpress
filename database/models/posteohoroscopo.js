module.exports = (sequelize,dataTypes) => {
    
    let alias = "posteohoroscopo";
    let cols = {
        id:{
            type:dataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        idsigno:{
            type: dataTypes.INTEGER,
            allowNull:false
        },
        text:{
            type: dataTypes.STRING(2000),
            allowNull:false
        },
        description:{
            type: dataTypes.STRING,
            allowNull: false
        },
        meshoroscopo:{
            type: dataTypes.DATE(),
            allowNull:true
        },
        idtiposigno:{
            type: dataTypes.INTEGER,
            allowNull:false
        },
        idcoments:{
            type: dataTypes.INTEGER,
            allowNull:true
        }
        
    }

    let config = {
        tableName: "posteohoroscopo",
        timestamps:true,
        underscored:true

    }

    const posteoHoroscopo = sequelize.define(alias,cols,config);

    posteoHoroscopo.associate = function(models){
        posteoHoroscopo.belongsTo(models.horoscopo, {
            as:"horoscopo",
            foreignKey: "id",
            where: "horoscopo"
        })
    }


    return posteoHoroscopo;
}