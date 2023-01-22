@AbapCatalog.sqlViewName: 'ZIR54ORDERITEMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order items'
define view ZI_R54_OrderItems
  as select from zR54orderitem
  association to parent ZI_R54_Orders as _Header
    on $projection.UpId = _Header.Id
  association [1..1] to I_UnitOfMeasure as _UnitOfMeasure
    on $projection.Unit = _UnitOfMeasure.UnitOfMeasure
  association [0..1] to I_User as _CreationUser
    on $projection.CreatedBy = _CreationUser.UserID
  association [0..1] to I_User as _ModificationUser
    on $projection.ModifiedBy = _ModificationUser.UserID
  {
    key upid as UpId,
    key id as Id,
    createdat as CreatedAt,
    createdby as CreatedBy,
    modifiedat as ModifiedAt,
    modifiedby as ModifiedBy,
    unit as Unit,
    quantity as Quantity,
    _Header,
    _UnitOfMeasure,
    _CreationUser,
    _ModificationUser
  }
