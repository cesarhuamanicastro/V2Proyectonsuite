USE [InventoryAGr]
GO
/****** Object:  Trigger [dbo].[EstadoHardwareRemove]    Script Date: 12/01/2020 05:48:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[EstadoHardwareRemove] ON [dbo].[DetalleOrden]
  AFTER update, DELETE
AS 
BEGIN
   --SET NOCOUNT ON agregado para evitar conjuntos de resultados adicionales
   -- interferir con las instrucciones SELECT.
  SET NOCOUNT ON;

  -- obtener el último valor de identificación del registro insertado o actualizado
  DECLARE @IDO INT, @IDHW INT, @estadocambio int
  SELECT @IDO = iddetalleorden, @IDHW = Hardware_Id, @estadocambio=estadodetalleorden
  FROM INSERTED 

  if( @estadocambio=0 or @estadocambio=2)
	 begin
	   UPDATE hardware 
  set idstatusdevice =  1 WHERE 
		idhw=@IDHW
	end 
  -- Insertar declaraciones para desencadenar aquí


END