package com.fr.net;

import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.SetupBy;
import org.nutz.mvc.ioc.provider.JsonIocProvider;

@Modules(scanPackage=true)
@IocBy(type = JsonIocProvider.class, args = { "com/fr/net/config/dao.js", "com/fr/net/config/ioc.js" })
@SetupBy(MvcSetup.class)
@Fail("json")
public class MainModule {

}