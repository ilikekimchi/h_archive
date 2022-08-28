package com.archive.ksh.service;

import com.archive.ksh.model.About;

public interface AboutService {

	About getInfo();

	void modify(About item);

}
