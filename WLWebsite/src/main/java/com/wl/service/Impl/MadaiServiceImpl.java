package com.wl.service.impl;

import com.wl.dao.MediaDAO;
import com.wl.service.AbstractService;
import com.wl.service.MadiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MadaiServiceImpl extends AbstractService implements MadiaService {

   private MediaDAO mediaDAO;

   @Autowired
    public void setMediaDAO(MediaDAO mediaDAO) {
        super.setBaseDAO(mediaDAO);
        this.mediaDAO = mediaDAO;
    }

}
