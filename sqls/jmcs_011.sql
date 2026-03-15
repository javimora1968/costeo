create table dba.cs_pobl_simul_mensual
       (id_empresa char(15) not null,
       tipo_doc char(4) not null,
       consecutivo numeric(10,0) not null,
       fecha_produccion datetime not null,
       id_lote char(12) not null,
       id_granja char(8) not null,
       tipo_lote char(1) not null,
       id_linea char(8) not null,
       saldo_h numeric(16,0) not null,
       saldo_m numeric(16,0) not null,
       edad numeric(16,0) not null,
       consumo_h numeric(16,0) not null,
       consumo_m numeric(16,0) not null) ;
 
alter table dba.cs_pobl_simul_mensual
       add constraint pk_cs_poblac_simulaciones primary key  nonclustered
       (id_empresa,
       tipo_doc,
       consecutivo,
       fecha_produccion,
       id_lote,
       id_granja,
       tipo_lote) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'cs_pobl_simul_mensual',
       object_id('dba.cs_pobl_simul_mensual'),
        'dba',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
       ' ') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'id_empresa', 1,
        'Id Empresa:', 0 ,
        'Id Empresa', 0,
       23 , '',
       0 , 65 , 325 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'tipo_doc', 2,
        'Tipo Doc:', 0 ,
        'Tipo Doc', 0,
       23 , '',
       0 , 65 , 129 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'consecutivo', 3,
        'Consecutivo:', 0 ,
        'Consecutivo', 0,
       24 , '[General]',
       0 , 65 , 270 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'fecha_produccion', 4,
        'Fecha Produccion:', 0 ,
        'Fecha Produccion', 0,
       23 , '',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'id_lote', 5,
        'Id Lote:', 0 ,
        'Id Lote', 0,
       23 , '',
       0 , 65 , 270 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'id_granja', 6,
        'Id Granja:', 0 ,
        'Id Granja', 0,
       23 , '',
       0 , 65 , 197 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'tipo_lote', 7,
        'Tipo Lote:', 0 ,
        'Tipo Lote', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'id_linea', 8,
        'Id Linea:', 0 ,
        'Id Linea', 0,
       23 , '',
       0 , 65 , 197 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'saldo_h', 9,
        'Saldo H:', 0 ,
        'Saldo H', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'saldo_m', 10,
        'Saldo M:', 0 ,
        'Saldo M', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'edad', 11,
        'Edad:', 0 ,
        'Edad', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'consumo_h', 12,
        'Consumo H:', 0 ,
        'Consumo H', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_pobl_simul_mensual',
        object_id('dba.cs_pobl_simul_mensual'),
        'dba',  'consumo_m', 13,
        'Consumo M:', 0 ,
        'Consumo M', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
