
create proc [dbo].[RPT_Orden_select]
(
@idorden int
)
as
Select  o.numeroorden, o.idorden,  o.codigoorden, o.empresaorden, e.rucempresa,  e.dirempresa ,o.sucursalorden, o.clienteorden, c.ruccliente ,o.contratointernoorden, o.refacturableorden, o.generateuserorden,
o.generateempresaorden, o.fsolicitudorden, o.fentregaorden, o.responsableorden, o.telefonoresponsableorden, o.tipousuarioorden, o.equipousuarioorden,
o.telefonousuarioorden, o.redequipoorden, o.ubicacionequipoorden, o.Observacionesorden, o.ordenservicio, o.rqservicio, o.adjuntoorden, o.aprobadorrq,
o.correoaprobador, o.motivorenting, tipoatencionorden, o.contratomarco, o.tipocliente, o.grupoeconomico, o.rentinginicio, o.rentingfin, o.hardwaredevice, o.cantidadhardware,
o.tipohardware, o.sofwareorden, o.estadoorden, o.tipoatencionorden
FROM Orden o inner join Empresa e
on o.empresaorden= e.nmempresa inner join Cliente c
on o.clienteorden=c.nmcliente
where o.idorden=@idorden


