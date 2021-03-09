module.exports = (sequelize,dataTypes) => {
    
    let alias = "users";
    let cols = {
        id:{
            type:dataTypes.INTEGER.UNSIGNED,
            primaryKey:true,
            autoIncrement:true,
            allowNull:false
        },
        nameuser:{
            type: dataTypes.STRING(50),
            allowNull:false,
            unique:true
        },
        mail:{
            type: dataTypes.STRING(100),
            allowNull:false,
            unique:true
        },
        password:{
            type: dataTypes.STRING(200),
            allowNull:false
        },
        fechanac:{
            type: dataTypes.DATEONLY(),
            allowNull:true
        },
        avatar:{
            type: dataTypes.STRING(200)
        },
        rol:{
            type: dataTypes.STRING(100),
            allowNull:true
        },
        description:{
            type: dataTypes.STRING(300),
            allowNull:true
        },
        idsigno:{
            type: dataTypes.INTEGER(20),
            allowNull:true
        },
        idtiposigno:{
            type: dataTypes.INTEGER(20),
            allowNull:true
        },
        nation:{
            type: dataTypes.STRING(100),
            allowNull: true
        }
        
    }

    let config = {
        tableName: "users",
        timestamps:true,
        underscored:true

    }

    const users = sequelize.define(alias,cols,config);

    users.associate = function(models){
    users.hasOne(models.comentspost,{
        as:"comentpost", /*nombre de fantasia de la relación de las tablas*/
        foreignKey:"idComent"
    })

    }
    return users;
}