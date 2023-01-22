@AbapCatalog.sqlViewName: 'ZIR54ORDERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Orders'
define root view ZI_R54_Orders
  as select from zr54order
  composition [0..*] of ZI_R54_OrderItems as _Items
  association [1..1] to ZI_R54_OrderStatuses as _Status
    on $projection.Status = _Status.Id
  association [1..1] to ZI_R54_OrderStatusLocalized as _LocalizedStatus
    on $projection.Status = _LocalizedStatus.Id
  association [0..1] to I_User as _CreationUser
    on $projection.CreatedBy = _CreationUser.UserID
  association [0..1] to I_User as _ModificationUser
    on $projection.ModifiedBy = _ModificationUser.UserID
  {
    key id as Id,
    externalid as ExternalId,
    createdat as CreatedAt,
    createdby as CreatedBy,
    modifiedat as ModifiedAt,
    modifiedby as ModifiedBy,
    status as Status,
    _Items,
    _Status,
    _LocalizedStatus,
    _CreationUser,
    _ModificationUser
  }
