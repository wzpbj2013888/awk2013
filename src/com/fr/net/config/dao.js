var ioc = {
    dataSource: {
        type: "org.apache.commons.dbcp.BasicDataSource",
        fields: {
                        driverClassName: 'com.mysql.jdbc.Driver',
                        url: 'jdbc:mysql://localhost:3306/aiweike',
            username: 'root',
            password: 'sophist'
        }
    },
        
        dao : {
                type : 'org.nutz.dao.impl.NutDao',
                args : [{refer:'dataSource'}]                
        }
};