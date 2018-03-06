package com.wl.service.Impl;

import com.wl.dao.MediaDAO;
import com.wl.service.AbstractService;
import com.wl.service.MadiaService;

public class MadaiServiceImpl extends AbstractService implements MadiaService {

   private MediaDAO mediaDAO;

    public void setMediaDAO(MediaDAO mediaDAO) {
        super.setBaseDAO(mediaDAO);
        this.mediaDAO = mediaDAO;
    }

}
