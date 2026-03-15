$PBExportHeader$w_pp_selec_cualquier_area_produccion.srw
forward
global type w_pp_selec_cualquier_area_produccion from Window
end type
type cb_cerrar from commandbutton within w_pp_selec_cualquier_area_produccion
end type
type cb_cancelar from commandbutton within w_pp_selec_cualquier_area_produccion
end type
type cb_aceptar from commandbutton within w_pp_selec_cualquier_area_produccion
end type
type dw_control1 from datawindow within w_pp_selec_cualquier_area_produccion
end type
type dw_control2 from datawindow within w_pp_selec_cualquier_area_produccion
end type
end forward

global type w_pp_selec_cualquier_area_produccion from Window
int X=297
int Y=300
int Width=2894
int Height=1992
boolean TitleBar=true
string Title="Buscar por"
long BackColor=12632256
WindowType WindowType=response!
cb_cerrar cb_cerrar
cb_cancelar cb_cancelar
cb_aceptar cb_aceptar
dw_control1 dw_control1
dw_control2 dw_control2
end type
global w_pp_selec_cualquier_area_produccion w_pp_selec_cualquier_area_produccion

type variables
long fila,numero_filas
boolean editando = false
end variables

forward prototypes
public subroutine wf_ordenar (string columna)
end prototypes

public subroutine wf_ordenar (string columna);STRING objeto,ordenar_str,color_str,comando,valor1
LONG valor
INTEGER longitud,i

setpointer(hourglass!)
objeto = columna+ '_t'
CHOOSE CASE columna
CASE "id_area"
	ordenar_str = "id_area A"
	color_str = 'id_area_t.color = "0" '
	comando = columna+' = "'+dw_control1.getitemstring(1,columna)+'"'
CASE "descripcion"
	ordenar_str = "descripcion A"
	color_str = 'descripcion_t.color = "0" '
	comando = columna+' = "'+dw_control1.getitemstring(1,columna)+'"'
CASE ELSE
	return
END CHOOSE

dw_control1.modify(color_str + objeto+'.color = "255"')
dw_control2.setsort(ordenar_str)
dw_control2.Sort ()
dw_control2.scrolltorow(dw_control2.find(comando,1,numero_filas))

end subroutine
event open;str_limites limites
string ls_categoria

open(w_limites_descripcion)

limites = Message.PowerObjectParm
IF limites.cancelar THEN            //El usuario se arrepintio
      ls_categoria =""
      CloseWithReturn(This,ls_categoria)
      Return
END IF

dw_control2.SetTransObject(sqlca)
IF limites.inicio <> "" AND limites.fin <> "" THEN
     dw_control2.Retrieve(empresa,TRIM(limites.inicio),TRIM(limites.fin))
ELSE 
     IF limites.inicio<>"" AND limites.fin="" THEN
            limites.fin="zzzzzzzzzzzz"
            dw_control2.Retrieve(empresa,limites.inicio,limites.fin)
    ELSE
           IF limites.fin<>"" AND limites.inicio="" THEN
              limites.inicio="0"
              dw_control2.Retrieve(empresa,limites.inicio,limites.fin)
			  ELSE

            limites.inicio="0"
            limites.fin="zzzzzzzzzzzz"
            dw_control2.Retrieve(empresa,limites.inicio,limites.fin)
          END IF
     END IF
END IF

dw_control1.InsertRow(0)
numero_filas = dw_control2.RowCount()


end event
on w_pp_selec_cualquier_area_produccion.create
this.cb_cerrar=create cb_cerrar
this.cb_cancelar=create cb_cancelar
this.cb_aceptar=create cb_aceptar
this.dw_control1=create dw_control1
this.dw_control2=create dw_control2
this.Control[]={this.cb_cerrar,&
this.cb_cancelar,&
this.cb_aceptar,&
this.dw_control1,&
this.dw_control2}
end on

on w_pp_selec_cualquier_area_produccion.destroy
destroy(this.cb_cerrar)
destroy(this.cb_cancelar)
destroy(this.cb_aceptar)
destroy(this.dw_control1)
destroy(this.dw_control2)
end on

type cb_cerrar from commandbutton within w_pp_selec_cualquier_area_produccion
int X=2331
int Y=488
int Width=379
int Height=88
int TabOrder=50
string Text="Ce&rrar"
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;string ls_area
SetNull(ls_area)
CloseWithReturn(parent,ls_area)

end event
type cb_cancelar from commandbutton within w_pp_selec_cualquier_area_produccion
int X=2331
int Y=400
int Width=379
int Height=88
int TabOrder=30
string Text="Cance&lar"
boolean Cancel=true
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;dw_control1.SetItem(1,1, "") 
dw_control1.SetItem(1,2, "") 
dw_control1.SetColumn(1)
dw_control1.SetRow(1)
dw_control1.SetFocus()


end on

type cb_aceptar from commandbutton within w_pp_selec_cualquier_area_produccion
int X=2331
int Y=312
int Width=379
int Height=88
int TabOrder=20
string Text="Ac&eptar"
boolean Default=true
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;string ls_categoria
long ll_fila_select

dw_control1.acceptText()
ll_fila_select=dw_control2.GetSelectedRow(0)

IF ll_fila_select > 0 THEN
	ls_categoria = dw_control2.GetItemString(ll_fila_select,1)
	CloseWithReturn(parent,ls_categoria)
Else
  MessageBox("ATENCION"," No hay fila alguna seleccionada, por " +&
           "favor ubiquese en alguna",StopSign!)  
  dw_control2.SetFocus()
End IF




end event

type dw_control1 from datawindow within w_pp_selec_cualquier_area_produccion
event keydown pbm_dwnkey
int X=78
int Y=36
int Width=2011
int Height=212
int TabOrder=10
string DataObject="dw_pp_encab_area_produccion"
BorderStyle BorderStyle=StyleLowered!
end type

on keydown;IF keydown(keyuparrow!) THEN
	dw_control2.ScrollPriorRow()
ELSEIF  keydown(keydownarrow!) THEN
	dw_control2.ScrollNextRow()
ELSEIF  keydown(keypageup!) THEN
	dw_control2.ScrollPriorPage()
ELSEIF  keydown(keypagedown!) THEN
	dw_control2.ScrollNextPage()
ELSEIF  keydown(keyhome!) THEN
	dw_control2.ScrollToRow(1)
ELSEIF  keydown(keyend!) THEN
	dw_control2.ScrollToRow(9999)
END IF
end on

on clicked;string objeto,columna

SetPointer(hourglass!)
objeto = GetObjectAtPointer()
objeto = left(objeto,pos(objeto,"~t") - 1)
if objeto <> "" then
IF right(objeto,2) = '_t' THEN 
	columna = left(objeto,len(objeto) - 2)
end if
	wf_ordenar(columna)
//	SetFocus()
//	SetColumn(columna)	
END IF
SetPointer(arrow!)






end on

event editchanged;INTEGER longitud,resp,i
STRING item,columna,ordenado_por,comando,tipo_columna
LONG registro,historia

editando = true
setpointer(hourglass!)
this.setredraw(false)

columna=dw_control1.getcolumnname()
item = dw_control1.gettext()
longitud = LEN(item)
IF longitud > 0 THEN
	ordenado_por = dw_control2.describe("DataWindow.Table.Sort")
	ordenado_por = left(ordenado_por,pos(ordenado_por," ") - 1)
	IF ordenado_por <> columna THEN	wf_ordenar(columna)
		comando = "Upper ( Left("+columna+"," + string(longitud) + "))= '" + item +"'"		
   	fila=dw_control2.find (comando, 1, numero_filas)
	   IF fila > 0 THEN
		   resp = dw_control2.selectrow(0,false)		
	   	resp = dw_control2.selectrow(fila,true)	
		   resp = dw_control2.scrolltorow(fila)		
	   	CHOOSE CASE columna
			CASE "id_area"
				dw_control1.setitem ( 1, 2, dw_control2.getitemstring ( fila,2))            
			CASE "descripcion"
            dw_control1.setitem ( 1, 1, dw_control2.getitemstring ( fila,1))
		   END CHOOSE
	ELSE
      dw_control1.setcolumn(columna)
		beep(1)
	END IF
END IF
this.setredraw(true)
setpointer(arrow!)
editando = false

end event
type dw_control2 from datawindow within w_pp_selec_cualquier_area_produccion
event colocar_focus_control1 pbm_custom01
int X=73
int Y=260
int Width=2011
int Height=1348
int TabOrder=40
string DataObject="dw_pp_selec_cualquier_area_produccion"
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
end type

on colocar_focus_control1;//// put focus back on the header datawindow

dw_control1.SetFocus()
end on

event doubleclicked;fila = GetClickedRow()
IF fila <=0 THEN fila = GetRow() 
IF fila <= 0 THEN Return
SelectRow(0,false)
SelectRow(fila,true)
dw_control1.SetItem (1,1,dw_control2.GetItemString(fila,1))
dw_control1.SetItem (1,2,dw_control2.GetItemString(fila,2))
cb_aceptar.TriggerEvent(Clicked!)


end event

on rowfocuschanged;This.TriggerEvent(clicked!)
end on

event clicked;//Cuando el usuario hace click en cualquier fila del control2
//entonces se pasa toda la informacion en el control1

fila = GetClickedRow()
IF fila <=0 THEN fila = GetRow() 
IF fila <= 0 THEN Return
SelectRow(0,false)
SelectRow(fila,true)
IF not editando THEN 
	dw_control1.SetItem (1,1,dw_control2.GetItemString(fila,1))
	dw_control1.SetItem (1,2,dw_control2.GetItemString(fila,2))
END IF


end event

on getfocus;PostEvent("colocar_focus_control1")
end on

