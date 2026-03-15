create table dba.cs_tipos_estandares
       (id_empresa char(15) not null,
       cod_estandar char(10) not null,
       descripcion varchar(100) not null,
       id_usuario char(15) not null,
       fec_registro datetime not null);

alter table dba.cs_tipos_estandares
       add constraint pk_cs_tipos_estandares primary key  nonclustered
       (id_empresa,
       cod_estandar);

insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'cs_tipos_estandares',
       object_id('dba.cs_tipos_estandares'),
        'dba',
        -8,  400,  'N',  'N',  0,  34,
        'MS Sans Serif',
        -8,  700,  'N',  'N',  0,  34,
        'MS Sans Serif',
        -8,  700,  'N',  'N',  0,  34,
        'MS Sans Serif',
       '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_tipos_estandares',
        object_id('dba.cs_tipos_estandares'),
        'dba',  'id_empresa', 1,
        'Id Empresa:', 0 ,
        'Id Empresa', 0,
       23 , '',
       0 , 53 , 407 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_tipos_estandares',
        object_id('dba.cs_tipos_estandares'),
        'dba',  'cod_estandar', 2,
        'Cod Estandar:', 0 ,
        'Cod Estandar', 0,
       23 , '',
       0 , 53 , 293 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_tipos_estandares',
        object_id('dba.cs_tipos_estandares'),
        'dba',  'descripcion', 3,
        'Descripcion:', 0 ,
        'Descripcion', 0,
       23 , '',
       0 , 53 , 2350 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_tipos_estandares',
        object_id('dba.cs_tipos_estandares'),
        'dba',  'id_usuario', 4,
        'Id Usuario:', 0 ,
        'Id Usuario', 0,
       23 , '',
       0 , 53 , 407 ,
        '', 'N',
        '',
        '',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_tipos_estandares',
        object_id('dba.cs_tipos_estandares'),
        'dba',  'fec_registro', 5,
        'Fec Registro:', 0 ,
        'Fec Registro', 0,
       23 , '',
       0 , 53 , 481 ,
        '', 'N',
        '',
        '',
        '', '');

