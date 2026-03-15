create table dba.cs_resul_simul_mensual
       (id_empresa char(2) not null,
       tipo_doc char(2) not null,
       consecutivo numeric(6,0) not null,
       fecha_produccion datetime not null,
       id_linea char(8) not null,
       aves_cria numeric(16,0) not null,
       aves_levante numeric(16,0) not null,
       aves_postura numeric(16,0) not null,
       aves_replume numeric(16,0) not null,
       huevos_semana numeric(16,0) not null,
       pollas_semana numeric(16,0) not null,
       acum_huevos_semana numeric(16,0) not null,
       acum_pollas_semana numeric(16,0) not null,
       consumo_cria numeric(16,0) not null,
       consumo_levante numeric(16,0) not null,
       consumo_postura numeric(16,0) not null,
       consumo_replume numeric(16,0) not null,
       consumo_total numeric(16,0) not null,
       costo_alimento numeric(16,0) not null,
       otros_costos numeric(16,0) not null,
       venta_aves_desecho numeric(16,0) not null,
       consumo_acumulado numeric(16,0) not null,
       costo_acumulado numeric(16,0) not null,
       consumo_cria_machos numeric(16,0) not null,
       consumo_levante_machos numeric(16,0) not null,
       consumo_postura_machos numeric(16,0) not null,
       consumo_replume_machos numeric(16,0) not null,
       costo_alimento_machos numeric(16,0) not null,
       consumo_acumulado_machos numeric(16,0) null,
       costo_acumulado_machos numeric(16,0) null,
       costo_alimento_levante numeric(16,0) null,
       costo_alimento_machos_levante numeric(16,0) null,
       costo_alimento_postura numeric(16,0) null,
       costo_alimento_machos_postura numeric(16,0) null,
       costo_alimento_replume numeric(16,0) null,
       costo_alimento_machos_replume numeric(16,0) null,
       otros_costos_levante numeric(16,0) null,
       otros_costos_postura numeric(16,0) null,
       otros_costos_replume numeric(16,0) null) ;
 
alter table dba.cs_resul_simul_mensual
       add constraint pk_cs_resul_simul_mensual primary key  nonclustered
       (id_empresa,
       tipo_doc,
       consecutivo,
       fecha_produccion) ;
 
insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'cs_resul_simul_mensual',
       object_id('dba.cs_resul_simul_mensual'),
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'id_empresa', 1,
        'id_empresa', 0 ,
        'id_empresa', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'tipo_doc', 2,
        'tipo_doc', 0 ,
        'tipo_doc', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consecutivo', 3,
        'consecutivo', 0 ,
        'consecutivo', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'fecha_produccion', 4,
        'fecha_produccion', 0 ,
        'fecha_produccion', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'id_linea', 5,
        'id_linea', 0 ,
        'id_linea', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'aves_cria', 6,
        'aves_cria', 0 ,
        'aves_cria', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'aves_levante', 7,
        'aves_levante', 0 ,
        'aves_levante', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'aves_postura', 8,
        'aves_postura', 0 ,
        'aves_postura', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'aves_replume', 9,
        'aves_replume', 0 ,
        'aves_replume', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'huevos_semana', 10,
        'huevos_semana', 0 ,
        'huevos_semana', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'pollas_semana', 11,
        'pollas_semana', 0 ,
        'pollas_semana', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'acum_huevos_semana', 12,
        'acum_huevos_semana', 0 ,
        'acum_huevos_semana', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'acum_pollas_semana', 13,
        'acum_pollas_semana', 0 ,
        'acum_pollas_semana', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_cria', 14,
        'consumo_cria', 0 ,
        'consumo_cria', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_levante', 15,
        'consumo_levante', 0 ,
        'consumo_levante', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_postura', 16,
        'consumo_postura', 0 ,
        'consumo_postura', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_replume', 17,
        'consumo_replume', 0 ,
        'consumo_replume', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_total', 18,
        'consumo_total', 0 ,
        'consumo_total', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento', 19,
        'costo_alimento', 0 ,
        'costo_alimento', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'otros_costos', 20,
        'otros_costos', 0 ,
        'otros_costos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'venta_aves_desecho', 21,
        'venta_aves_desecho', 0 ,
        'venta_aves_desecho', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_acumulado', 22,
        'consumo_acumulado', 0 ,
        'consumo_acumulado', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_acumulado', 23,
        'costo_acumulado', 0 ,
        'costo_acumulado', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_cria_machos', 24,
        'consumo_cria_machos', 0 ,
        'consumo_cria_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_levante_machos', 25,
        'consumo_levante_machos', 0 ,
        'consumo_levante_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_postura_machos', 26,
        'consumo_postura_machos', 0 ,
        'consumo_postura_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_replume_machos', 27,
        'consumo_replume_machos', 0 ,
        'consumo_replume_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_machos', 28,
        'costo_alimento_machos', 0 ,
        'costo_alimento_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'consumo_acumulado_machos', 29,
        'consumo_acumulado_machos', 0 ,
        'consumo_acumulado_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_acumulado_machos', 30,
        'costo_acumulado_machos', 0 ,
        'costo_acumulado_machos', 0,
       0 , '',
       0 , 0 , 0 ,
        '', 'N',
        '',
        '',
        '', '') ;
 
insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_levante', 31,
        'Costo Alimento Levante:', 0 ,
        'Costo Alimento Levante', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_machos_levante', 32,
        'Costo Alimento Machos Levante:', 0 ,
        'Costo Alimento Machos Levante', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_postura', 33,
        'Costo Alimento Postura:', 0 ,
        'Costo Alimento Postura', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_machos_postura', 34,
        'Costo Alimento Machos Postura:', 0 ,
        'Costo Alimento Machos Postura', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_replume', 35,
        'Costo Alimento Replume:', 0 ,
        'Costo Alimento Replume', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'costo_alimento_machos_replume', 36,
        'Costo Alimento Machos Replume:', 0 ,
        'Costo Alimento Machos Replume', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'otros_costos_levante', 37,
        'Otros Costos Levante:', 0 ,
        'Otros Costos Levante', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'otros_costos_postura', 38,
        'Otros Costos Postura:', 0 ,
        'Otros Costos Postura', 0,
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
        values  ( 'cs_resul_simul_mensual',
        object_id('dba.cs_resul_simul_mensual'),
        'dba',  'otros_costos_replume', 39,
        'Otros Costos Replume:', 0 ,
        'Otros Costos Replume', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        ' ',
        '', '') ;
