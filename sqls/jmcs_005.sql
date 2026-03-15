alter table dba.cs_items_simulaciones  add
       ind_estandard_heredado char(1) null,
       tipo_prod_heredado char(1) null,
       tipo_mort_heredado char(1) null,
       tipo_consumo_heredado char(1) null;

update dbo.pbcattbl set
       pbd_fhgt = -10, pbd_fwgt = 400, pbd_fitl = 'N', pbd_funl = 'N',
       pbd_fchr = 0, pbd_fptc = 34, pbd_ffce = 'Arial',
       pbh_fhgt = -10, pbh_fwgt = 400 , pbh_fitl = 'N', pbh_funl = 'N',
       pbh_fchr = 0, pbh_fptc = 34, pbh_ffce = 'Arial',
       pbl_fhgt = -10, pbl_fwgt = 400 , pbl_fitl = 'N', pbl_funl = 'N',
       pbl_fchr = 0, pbl_fptc = 34, pbl_ffce = 'Arial',
       pbt_cmnt = ' '
        where pbt_tid = object_id('dba.cs_items_simulaciones');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_items_simulaciones',
        object_id('dba.cs_items_simulaciones'),
        'dba',  'ind_estandard_heredado', 29,
        'Ind Estandard Heredado:', 0 ,
        'Ind Estandard Heredado', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        'Para indicar si el lote de produccion toma el mismo estandar del lote de cria o no',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_items_simulaciones',
        object_id('dba.cs_items_simulaciones'),
        'dba',  'tipo_prod_heredado', 30,
        'Tipo Prod Heredado:', 0 ,
        'Tipo Prod Heredado', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        'Estandar de produccion a Usar para lote en produccion',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_items_simulaciones',
        object_id('dba.cs_items_simulaciones'),
        'dba',  'tipo_mort_heredado', 31,
        'Tipo Mort Heredado:', 0 ,
        'Tipo Mort Heredado', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        'Estandard de Mortalidad a usar para lote en produccion',
        '', '');

insert into dbo.pbcatcol
       (pbc_tnam, pbc_tid, pbc_ownr, pbc_cnam,
       pbc_cid, pbc_labl, pbc_lpos, pbc_hdr,
       pbc_hpos, pbc_jtfy, pbc_mask, pbc_case,
       pbc_hght, pbc_wdth, pbc_ptrn, pbc_bmap,
       pbc_init, pbc_cmnt, pbc_edit, pbc_tag)
        values  ( 'cs_items_simulaciones',
        object_id('dba.cs_items_simulaciones'),
        'dba',  'tipo_consumo_heredado', 32,
        'Tipo Consumo Heredado:', 0 ,
        'Tipo Consumo Heredado', 0,
       23 , '',
       0 , 65 , 69 ,
        '', 'N',
        '',
        'Estandard de consumo a usar para lote en produccion',
        '', '');

