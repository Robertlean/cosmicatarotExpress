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
            allowNull:true
        },
        text:{
            type: dataTypes.STRING(),
            allowNull:false
        },
        description:{
            type: dataTypes.STRING,
            allowNull: true
        },
        meshoroscopo:{
            type: dataTypes.DATEONLY,
            allowNull:true
        },
        idtiposigno:{
            type: dataTypes.INTEGER,
            allowNull:true
        },
        idcoments:{
            type: dataTypes.INTEGER,
            allowNull:true
        }
        
    }

    let config = {
        tableName: "posteohoroscopo",
        timestamps:false,
        underscored:true

    }

    const posteoHoroscopo = sequelize.define(alias,cols,config);

    posteoHoroscopo.associate = function(models){
        posteoHoroscopo.belongsTo(models.horoscopo, {
            as:"horoscopoposteo",
            foreignKey: "id",
            where: "signo"
        })
    }


    return posteoHoroscopo;
}