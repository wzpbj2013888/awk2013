package com.fr.net.manage.service;

import java.util.List;

import org.nutz.service.NameEntityService;

import com.fr.net.model.po.Module;

public class ManageServiceImpl extends NameEntityService<Module> implements ManageService {

	public List<Module> getModulePage() {
		// TODO Auto-generated method stub
		return this.query(null, null);
	}

}
