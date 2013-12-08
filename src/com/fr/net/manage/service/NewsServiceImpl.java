package com.fr.net.manage.service;

import java.util.List;

import org.nutz.service.NameEntityService;
import com.fr.net.model.po.News;

public class NewsServiceImpl  extends NameEntityService<News> implements NewsService {

	public List<News> getNewsPage() {
		// TODO Auto-generated method stub
		return this.query(null, null);
	}

}
