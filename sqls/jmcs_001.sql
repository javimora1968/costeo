alter table dba.cs_resul_items_simulaciones  add
       costo_alimento_levante numeric(16,0) null,
       costo_alimento_machos_levante numeric(16,0) null,
       costo_alimento_postura numeric(16,0) null,
       costo_alimento_machos_postura numeric(16,0) null,
       costo_alimento_replume numeric(16,0) null,
       costo_alimento_machos_replume numeric(16,0) null,
       otros_costos_levante numeric(16,0) null,
       otros_costos_postura numeric(16,0) null,
       otros_costos_replume numeric(16,0) null;

insert into dbo.pbcattbl
        (pbt_tnam, pbt_tid, pbt_ownr,
       pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce,
       pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce,
       pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce,
       pbt_cmnt)
       values  ( 'cs_resul_items_simulaciones',
       object_id('dba.cs_resul_items_simulaciones'),
        'dba',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
        -10,  400,  'N',  'N',  0,  34,
        'Arial',
       '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'costo_alimento_levante', 31,
        'Costo Alimento Levante:', 0 ,
        'Costo Alimento Levante', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'costo_alimento_machos_levante', 32,
        'Costo Alimento Machos Levante:', 0 ,
        'Costo Alimento Machos Levante', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'costo_alimento_postura', 33,
        'Costo Alimento Postura:', 0 ,
        'Costo Alimento Postura', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'costo_alimento_machos_postura', 34,
        'Costo Alimento Machos Postura:', 0 ,
        'Costo Alimento Machos Postura', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'costo_alimento_replume', 35,
        'Costo Alimento Replume:', 0 ,
        'Costo Alimento Replume', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'costo_alimento_machos_replume', 36,
        'Costo Alimento Machos Replume:', 0 ,
        'Costo Alimento Machos Replume', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'otros_costos_levante', 37,
        'Otros Costos Levante:', 0 ,
        'Otros Costos Levante', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'otros_costos_postura', 38,
        'Otros Costos Postura:', 0 ,
        'Otros Costos Postura', 0,
       24 , '[General]',
       0 , 65 , 385 ,
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
        values  ( 'cs_resul_items_simulaciones',
        object_id('dba.cs_resul_items_simulaciones'),
        'dba',  'otros_costos_replume', 39,
        'Otros Costos Replume:', 0 ,
        'Otros Costos Replume', 0,
       24 , '[General]',
       0 , 65 , 385 ,
        '', 'N',
        '',
        '',
        '', '');

