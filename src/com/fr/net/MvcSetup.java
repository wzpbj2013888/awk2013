package com.fr.net;

import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;

public class MvcSetup implements Setup {

        public void init(NutConfig config) {
                System.out.println("I start!!");
        }

        public void destroy(NutConfig config) {
                System.out.println("I stop!!");
        }

}